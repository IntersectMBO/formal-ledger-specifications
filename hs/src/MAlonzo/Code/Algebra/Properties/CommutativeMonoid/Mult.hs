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

module MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.CommutativeSemigroup
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.CommutativeMonoid.Mult._._×_
d__'215'__228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
d__'215'__228 ~v0 ~v1 v2 = du__'215'__228 v2
du__'215'__228 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
du__'215'__228 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v1)))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-assocˡ
d_'215''45'assoc'737'_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'assoc'737'_230 ~v0 ~v1 v2
  = du_'215''45'assoc'737'_230 v2
du_'215''45'assoc'737'_230 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'assoc'737'_230 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'assoc'737'_324
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-cong
d_'215''45'cong_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_'215''45'cong_232 ~v0 ~v1 v2 = du_'215''45'cong_232 v2
du_'215''45'cong_232 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
du_'215''45'cong_232 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong_258
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) v1 v3 v4
      v6
-- Algebra.Properties.CommutativeMonoid.Mult._.×-congʳ
d_'215''45'cong'691'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'215''45'cong'691'_234 ~v0 ~v1 v2 = du_'215''45'cong'691'_234 v2
du_'215''45'cong'691'_234 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong'691'_234 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'691'_250
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-congˡ
d_'215''45'cong'737'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'215''45'cong'737'_236 ~v0 ~v1 v2 = du_'215''45'cong'737'_236 v2
du_'215''45'cong'737'_236 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_'215''45'cong'737'_236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'737'_268
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) v1 v2
-- Algebra.Properties.CommutativeMonoid.Mult._.×-homo-+
d_'215''45'homo'45''43'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'homo'45''43'_238 ~v0 ~v1 v2
  = du_'215''45'homo'45''43'_238 v2
du_'215''45'homo'45''43'_238 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'homo'45''43'_238 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45''43'_288
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-homo-0
d_'215''45'homo'45'0_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny
d_'215''45'homo'45'0_240 ~v0 ~v1 v2 = du_'215''45'homo'45'0_240 v2
du_'215''45'homo'45'0_240 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny
du_'215''45'homo'45'0_240 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45'0_274
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-homo-1
d_'215''45'homo'45'1_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny
d_'215''45'homo'45'1_242 ~v0 ~v1 v2 = du_'215''45'homo'45'1_242 v2
du_'215''45'homo'45'1_242 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny
du_'215''45'homo'45'1_242 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45'1_280
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-idem
d_'215''45'idem_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> AgdaAny
d_'215''45'idem_244 ~v0 ~v1 v2 = du_'215''45'idem_244 v2
du_'215''45'idem_244 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> AgdaAny
du_'215''45'idem_244 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'idem_306
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) v1 v2 v3
-- Algebra.Properties.CommutativeMonoid.Mult.×-distrib-+
d_'215''45'distrib'45''43'_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
d_'215''45'distrib'45''43'_252 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'distrib'45''43'_252 v2 v3 v4 v5
du_'215''45'distrib'45''43'_252 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
du_'215''45'distrib'45''43'_252 v0 v1 v2 v3
  = case coe v3 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_496
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                            (coe v0))))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                (MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v0))
                (MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v0)))
             (MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v0))
             (coe
                MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                (MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020 (coe v0)))
                (MAlonzo.Code.Algebra.Bundles.d_ε_1018 (coe v0)))
      _ -> let v4 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                   (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                      (coe v4)
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                      (coe v3) (coe v1))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                      (coe v3) (coe v2)))
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
                                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                        (coe v0))))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                         (coe v4)
                         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                            (coe v4) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                            (coe v4) (coe v2))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                         (coe v3) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                         (coe v3) (coe v2)))
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
                                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                           (coe v0))))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                               (coe v4) (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                               (coe v4) (coe v2))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v2
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v4) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v4) (coe v2)))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                            (coe v3) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                            (coe v3) (coe v2)))
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
                                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                              (coe v0))))))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v2
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v2)))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v4) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v3) (coe v2))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                               (coe v3) (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                               (coe v3) (coe v2)))
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
                                                 MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                                 (coe v0))))))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v3) (coe v2))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v3) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v3) (coe v2)))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v3) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v3) (coe v2)))
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
                                                    MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                                    (coe v0))))))))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v3) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v3) (coe v2))))
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
                                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                              (coe v0))))))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                        (coe v4) (coe v1)))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v3) (coe v2)))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                        (coe v4) (coe v1))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                        (coe v3) (coe v2))))
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_assoc_498
                                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                           (coe v0))))
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v3) (coe v2)))))
                         (coe
                            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                            (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                           (coe v0))))))
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
                                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                              (coe v0)))))))
                            v1
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v2
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v2))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v4) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v2
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                     (coe v4) (coe v2))))
                            (coe
                               MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_x'8729'yz'8776'y'8729'xz_296
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1082
                                  (coe v0))
                               (coe v2)
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v4) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                                  (coe v4) (coe v2)))))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_assoc_498
                         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                  (coe v0))))
                         v1 v2
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                               (coe v4) (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
                               (coe v4) (coe v2)))))
                   (coe
                      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                      (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_496
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                     (coe v0))))))
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
                                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                                        (coe v0)))))))
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)
                      (let v5
                             = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                       coe
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v5))
                            (coe v4)
                            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                         (let v5
                                = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v5))
                               (coe v4) (coe v1)))
                         (let v5
                                = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                               (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v5))
                               (coe v4) (coe v2))))
                      (coe
                         du_'215''45'distrib'45''43'_252 (coe v0) (coe v1) (coe v2)
                         (coe v4)))))
