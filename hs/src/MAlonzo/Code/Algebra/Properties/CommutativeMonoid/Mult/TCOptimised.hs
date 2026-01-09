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

module MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult.TCOptimised where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._._×′_
d__'215''8242'__152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
d__'215''8242'__152 ~v0 ~v1 v2 = du__'215''8242'__152 v2
du__'215''8242'__152 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
du__'215''8242'__152 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v1) in
       coe
         (coe
            (\ v3 v4 ->
               let v5 = subInt (coe v3) (coe (1 :: Integer)) in
               coe
                 (let v6
                        = coe
                            MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v2
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                               (coe v2) (coe v5) (coe v4))
                            v4 in
                  coe
                    (case coe v3 of
                       0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v2)
                       1 -> coe v4
                       _ -> coe v6)))))
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._.1+×
d_1'43''215'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
d_1'43''215'_154 ~v0 ~v1 v2 = du_1'43''215'_154 v2
du_1'43''215'_154 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
du_1'43''215'_154 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_1'43''215'_142
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._.×-assocˡ
d_'215''45'assoc'737'_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'assoc'737'_156 ~v0 ~v1 v2
  = du_'215''45'assoc'737'_156 v2
du_'215''45'assoc'737'_156 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'assoc'737'_156 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'assoc'737'_204
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._.×-cong
d_'215''45'cong_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_'215''45'cong_158 ~v0 ~v1 v2 = du_'215''45'cong_158 v2
du_'215''45'cong_158 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
du_'215''45'cong_158 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'cong_192
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) v1 v3 v4
      v6
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._.×-congʳ
d_'215''45'cong'691'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'215''45'cong'691'_160 ~v0 ~v1 v2 = du_'215''45'cong'691'_160 v2
du_'215''45'cong'691'_160 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong'691'_160 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'cong'691'_182
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._.×-homo-+
d_'215''45'homo'45''43'_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'homo'45''43'_162 ~v0 ~v1 v2
  = du_'215''45'homo'45''43'_162 v2
du_'215''45'homo'45''43'_162 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'homo'45''43'_162 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''45'homo'45''43'_170
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised._.×ᵤ≈×
d_'215''7524''8776''215'_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
d_'215''7524''8776''215'_164 ~v0 ~v1 v2
  = du_'215''7524''8776''215'_164 v2
du_'215''7524''8776''215'_164 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  Integer -> AgdaAny -> AgdaAny
du_'215''7524''8776''215'_164 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''7524''8776''215'_156
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult.TCOptimised.×-distrib-+
d_'215''45'distrib'45''43'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
d_'215''45'distrib'45''43'_172 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'distrib'45''43'_172 v2 v3 v4 v5
du_'215''45'distrib'45''43'_172 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_996 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
du_'215''45'distrib'45''43'_172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (let v4
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                 (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
       coe
         (let v5
                = coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2 in
          coe
            (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
             coe
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                             (coe v4) (coe v6) (coe v5))
                          v5 in
                coe
                  (case coe v3 of
                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                     1 -> coe v5
                     _ -> coe v7)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                    (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
          coe
            (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
             coe
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                             (coe v4) (coe v5) (coe v1))
                          v1 in
                coe
                  (case coe v3 of
                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                     1 -> coe v1
                     _ -> coe v6))))
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                    (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
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
                     _ -> coe v6)))))
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
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                              (coe v0))))))))
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
                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                           (coe v0)))))))
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                    (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
          coe
            (let v5
                   = coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2 in
             coe
               (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
                coe
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v6) (coe v5))
                             v5 in
                   coe
                     (case coe v3 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v5
                        _ -> coe v7)))))
         (coe
            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
            (coe v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                       (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
             coe
               (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v5) (coe v1))
                             v1 in
                   coe
                     (case coe v3 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v1
                        _ -> coe v6))))
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                       (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
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
                        _ -> coe v6)))))
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
               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)))
               (coe v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2))
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
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                          (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
                coe
                  (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                (coe
                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                   (coe v4) (coe v5) (coe v1))
                                v1 in
                      coe
                        (case coe v3 of
                           0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                           1 -> coe v1
                           _ -> coe v6))))
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                          (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
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
                           _ -> coe v6)))))
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
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                             (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
                   coe
                     (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                      coe
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v4) (coe v5) (coe v1))
                                   v1 in
                         coe
                           (case coe v3 of
                              0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                              1 -> coe v1
                              _ -> coe v6))))
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                             (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
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
                              _ -> coe v6)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                             (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
                   coe
                     (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                      coe
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v4) (coe v5) (coe v1))
                                   v1 in
                         coe
                           (case coe v3 of
                              0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                              1 -> coe v1
                              _ -> coe v6))))
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                             (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
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
                              _ -> coe v6)))))
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
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
                      coe
                        (let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                         coe
                           (let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v4) (coe v5) (coe v1))
                                      v1 in
                            coe
                              (case coe v3 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                 1 -> coe v1
                                 _ -> coe v6))))
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
                                (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) in
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
                                 _ -> coe v6))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_774
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_1020
                              (coe v0)))))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                        (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v4))
                        (coe v3) (coe v1)))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                   coe
                     (let v5
                            = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v4) in
                      coe
                        (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
                         coe
                           (let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v5
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v5) (coe v6) (coe v1))
                                      v1 in
                            coe
                              (case coe v3 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v5)
                                 1 -> coe v1
                                 _ -> coe v7)))))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                        (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v4))
                        (coe v3) (coe v2)))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0) in
                   coe
                     (let v5
                            = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v4) in
                      coe
                        (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
                         coe
                           (let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v5
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v5) (coe v6) (coe v2))
                                      v2 in
                            coe
                              (case coe v3 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v5)
                                 1 -> coe v2
                                 _ -> coe v7)))))
                  (coe
                     MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''7524''8776''215'_156
                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) (coe v3)
                     (coe v1))
                  (coe
                     MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''7524''8776''215'_156
                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) (coe v3)
                     (coe v2))))
            (coe
               MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult.du_'215''45'distrib'45''43'_252
               (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised.du_'215''7524''8776''215'_156
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v0)) (coe v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1016 v0 v1 v2)))
