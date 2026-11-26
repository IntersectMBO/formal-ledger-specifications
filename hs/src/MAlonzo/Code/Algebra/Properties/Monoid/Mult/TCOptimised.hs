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

module MAlonzo.Code.Algebra.Properties.Monoid.Mult.TCOptimised where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Monoid.Mult.TCOptimised.U._×_
d__'215'__80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
d__'215'__80 ~v0 ~v1 v2 = du__'215'__80 v2
du__'215'__80 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
du__'215'__80 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
-- Algebra.Properties.Monoid.Mult.TCOptimised._._×′_
d__'215''8242'__148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
d__'215''8242'__148 ~v0 ~v1 v2 = du__'215''8242'__148 v2
du__'215''8242'__148 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
du__'215''8242'__148 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
    coe
      (coe
         (\ v2 v3 ->
            let v4 = subInt (coe v2) (coe (1 :: Integer)) in
            coe
              (let v5
                     = coe
                         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v1
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                            (coe v1) (coe v4) (coe v3))
                         v3 in
               coe
                 (case coe v2 of
                    0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v1)
                    1 -> coe v3
                    _ -> coe v5))))
-- Algebra.Properties.Monoid.Mult.TCOptimised.1+×
d_1'43''215'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
d_1'43''215'_154 ~v0 ~v1 v2 v3 v4 = du_1'43''215'_154 v2 v3 v4
du_1'43''215'_154 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
du_1'43''215'_154 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                (MAlonzo.Code.Algebra.Bundles.d_ε_936 (coe v0)))
             v2
             (coe
                MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                (MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)) v2)
      1 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (let v3
                    = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
              coe
                (let v4 = 2 :: Integer in
                 coe
                   (let v5 = 1 :: Integer in
                    coe
                      (let v6
                             = coe
                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                    (coe v3) (coe v5) (coe v2))
                                 v2 in
                       coe
                         (case coe v4 of
                            0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                            1 -> coe v2
                            _ -> coe v6)))))
      _ -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v3 v4 v5 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                (let v3
                       = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                 coe
                   (let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                    coe
                      (let v5
                             = coe
                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                    (coe v3) (coe v4) (coe v2))
                                 v2 in
                       coe
                         (case coe v1 of
                            0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                            1 -> coe v2
                            _ -> coe v5))))
                v2)
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                   (let v3
                          = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                    coe
                      (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                       coe
                         (let v5
                                = coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                       (coe v3) (coe v4) (coe v2))
                                    v2 in
                          coe
                            (case coe v1 of
                               1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                               2 -> coe v2
                               _ -> coe v5))))
                   v2))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_498
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                               (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                   (let v3
                          = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                    coe
                      (let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                       coe
                         (let v5
                                = coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                       (coe v3) (coe v4) (coe v2))
                                    v2 in
                          coe
                            (case coe v1 of
                               0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                               1 -> coe v2
                               _ -> coe v5))))
                   v2)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                      (let v3
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                          coe
                            (let v5
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v3) (coe v4) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                  2 -> coe v2
                                  _ -> coe v5)))))
                   v2)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                      (let v3
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                          coe
                            (let v5
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v3) (coe v4) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                  2 -> coe v2
                                  _ -> coe v5))))
                      v2))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_498
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                  (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                         (let v3
                                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                          coe
                            (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                             coe
                               (let v5
                                      = coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                             (coe v3) (coe v4) (coe v2))
                                          v2 in
                                coe
                                  (case coe v1 of
                                     1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                     2 -> coe v2
                                     _ -> coe v5)))))
                      v2)
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                         (let v3
                                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                          coe
                            (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                             coe
                               (let v5
                                      = coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                             (coe v3) (coe v4) (coe v2))
                                          v2 in
                                coe
                                  (case coe v1 of
                                     1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                     2 -> coe v2
                                     _ -> coe v5))))
                         v2))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                         (let v3
                                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                          coe
                            (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                             coe
                               (let v5
                                      = coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                             (coe v3) (coe v4) (coe v2))
                                          v2 in
                                coe
                                  (case coe v1 of
                                     1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                     2 -> coe v2
                                     _ -> coe v5))))
                         v2))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                            (let v3
                                   = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                             coe
                               (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                                coe
                                  (let v5
                                         = coe
                                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                             (coe
                                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                                (coe v3) (coe v4) (coe v2))
                                             v2 in
                                   coe
                                     (case coe v1 of
                                        1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                        2 -> coe v2
                                        _ -> coe v5))))
                            v2)))
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_assoc_500
                      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                         (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))
                      v2
                      (let v3
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                          coe
                            (let v5
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v3) (coe v4) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                  2 -> coe v2
                                  _ -> coe v5))))
                      v2))
                (coe
                   MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                   (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMagma_498
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                            (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
                   (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_498
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                               (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))))
                   v2
                   (let v3
                          = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                    coe
                      (let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                       coe
                         (let v5
                                = coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                       (coe v3) (coe v4) (coe v2))
                                    v2 in
                          coe
                            (case coe v1 of
                               0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                               1 -> coe v2
                               _ -> coe v5))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                      (let v3
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v4 = subInt (coe v1) (coe (2 :: Integer)) in
                          coe
                            (let v5
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v3) (coe v4) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v3)
                                  2 -> coe v2
                                  _ -> coe v5)))))
                   (coe
                      du_1'43''215'_154 (coe v0)
                      (coe subInt (coe v1) (coe (1 :: Integer))) (coe v2))))
-- Algebra.Properties.Monoid.Mult.TCOptimised.×ᵤ≈×
d_'215''7524''8776''215'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
d_'215''7524''8776''215'_168 ~v0 ~v1 v2 v3 v4
  = du_'215''7524''8776''215'_168 v2 v3 v4
du_'215''7524''8776''215'_168 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
du_'215''7524''8776''215'_168 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                (coe (0 :: Integer)) (coe v2))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v4 v5 v6 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v3) (coe v2)))
                (let v4
                       = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                 coe
                   (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                    coe
                      (let v6
                             = coe
                                 MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                 (coe
                                    MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                    (coe v4) (coe v5) (coe v2))
                                 v2 in
                       coe
                         (case coe v1 of
                            0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                            1 -> coe v2
                            _ -> coe v6))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_498
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                  (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v3) (coe v2)))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                      (let v4
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v5 = subInt (coe v1) (coe (2 :: Integer)) in
                          coe
                            (let v6
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v4) (coe v5) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                  2 -> coe v2
                                  _ -> coe v6)))))
                   (let v4
                          = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                    coe
                      (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                       coe
                         (let v6
                                = coe
                                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                       (coe v4) (coe v5) (coe v2))
                                    v2 in
                          coe
                            (case coe v1 of
                               0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                               1 -> coe v2
                               _ -> coe v6))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_498
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                  (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v2
                         (let v4
                                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                          coe
                            (let v5 = subInt (coe v1) (coe (2 :: Integer)) in
                             coe
                               (let v6
                                      = coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                          (coe
                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                             (coe v4) (coe v5) (coe v2))
                                          v2 in
                                coe
                                  (case coe v1 of
                                     1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                     2 -> coe v2
                                     _ -> coe v6)))))
                      (let v4
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                          coe
                            (let v6
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v4) (coe v5) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                  1 -> coe v2
                                  _ -> coe v6))))
                      (let v4
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                          coe
                            (let v6
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v4) (coe v5) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                  1 -> coe v2
                                  _ -> coe v6))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d_isMonoid_938
                                           (coe v0)))))))
                         (let v4
                                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                          coe
                            (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                             coe
                               (let v6
                                      = coe
                                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                          (coe
                                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                             (coe v4) (coe v5) (coe v2))
                                          v2 in
                                coe
                                  (case coe v1 of
                                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                     1 -> coe v2
                                     _ -> coe v6)))))
                      (coe du_1'43''215'_154 (coe v0) (coe v3) (coe v2)))
                   (coe
                      MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                      (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_498
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                               (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
                      (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMagma_498
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                  (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))))
                      v2
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v3) (coe v2))
                      (let v4
                             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                       coe
                         (let v5 = subInt (coe v1) (coe (2 :: Integer)) in
                          coe
                            (let v6
                                   = coe
                                       MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                       (coe
                                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                          (coe v4) (coe v5) (coe v2))
                                       v2 in
                             coe
                               (case coe v1 of
                                  1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                  2 -> coe v2
                                  _ -> coe v6))))
                      (coe du_'215''7524''8776''215'_168 (coe v0) (coe v3) (coe v2)))))
-- Algebra.Properties.Monoid.Mult.TCOptimised.×-homo-+
d_'215''45'homo'45''43'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'homo'45''43'_182 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'homo'45''43'_182 v2 v3 v4 v5
du_'215''45'homo'45''43'_182 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'homo'45''43'_182 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (let v4
             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
       coe
         (let v5 = addInt (coe v2) (coe v3) in
          coe
            (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
             coe
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                             (coe v4) (coe v6) (coe v1))
                          v1 in
                coe
                  (case coe v5 of
                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                     1 -> coe v1
                     _ -> coe v7)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
         (let v4
                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
          coe
            (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
             coe
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                             (coe v4) (coe v5) (coe v1))
                          v1 in
                coe
                  (case coe v2 of
                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                     1 -> coe v1
                     _ -> coe v6))))
         (let v4
                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                     _ -> coe v6)))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))))
         (let v4
                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
          coe
            (let v5 = addInt (coe v2) (coe v3) in
             coe
               (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                coe
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v6) (coe v1))
                             v1 in
                   coe
                     (case coe v5 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v1
                        _ -> coe v7)))))
         (coe
            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
            (coe addInt (coe v2) (coe v3)) (coe v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
            (let v4
                   = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
             coe
               (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                coe
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v5) (coe v1))
                             v1 in
                   coe
                     (case coe v2 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v1
                        _ -> coe v6))))
            (let v4
                   = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                        _ -> coe v6)))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
               (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
               (coe addInt (coe v2) (coe v3)) (coe v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
               (coe
                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                  (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                  (coe v2) (coe v1))
               (coe
                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                  (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                  (coe v3) (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
               (let v4
                      = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                coe
                  (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                (coe
                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                   (coe v4) (coe v5) (coe v1))
                                v1 in
                      coe
                        (case coe v2 of
                           0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                           1 -> coe v1
                           _ -> coe v6))))
               (let v4
                      = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                           _ -> coe v6)))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                  (coe
                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                     (coe v2) (coe v1))
                  (coe
                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                     (coe v3) (coe v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                   coe
                     (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                      coe
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v4) (coe v5) (coe v1))
                                   v1 in
                         coe
                           (case coe v2 of
                              0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                              1 -> coe v1
                              _ -> coe v6))))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                              _ -> coe v6)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                   coe
                     (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                      coe
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v4) (coe v5) (coe v1))
                                   v1 in
                         coe
                           (case coe v2 of
                              0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                              1 -> coe v1
                              _ -> coe v6))))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                              _ -> coe v6)))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                     (let v4
                            = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                      coe
                        (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                         coe
                           (let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v4) (coe v5) (coe v1))
                                      v1 in
                            coe
                              (case coe v2 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                 1 -> coe v1
                                 _ -> coe v6))))
                     (let v4
                            = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                                 _ -> coe v6))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                     (coe v2) (coe v1))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                   coe
                     (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                      coe
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v4) (coe v5) (coe v1))
                                   v1 in
                         coe
                           (case coe v2 of
                              0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                              1 -> coe v1
                              _ -> coe v6))))
                  (coe
                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                     (coe v3) (coe v1))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                  (coe du_'215''7524''8776''215'_168 (coe v0) (coe v2) (coe v1))
                  (coe du_'215''7524''8776''215'_168 (coe v0) (coe v3) (coe v1))))
            (coe
               MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45''43'_342
               (coe v0) (coe v1) (coe v2) (coe v3)))
         (coe
            du_'215''7524''8776''215'_168 (coe v0)
            (coe addInt (coe v2) (coe v3)) (coe v1)))
-- Algebra.Properties.Monoid.Mult.TCOptimised.×-congʳ
d_'215''45'cong'691'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'215''45'cong'691'_194 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'215''45'cong'691'_194 v2 v3 v4 v5 v6
du_'215''45'cong'691'_194 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong'691'_194 v0 v1 v2 v3 v4
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                (let v5
                       = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                 coe
                   (let v6 = 0 :: Integer in
                    coe
                      (\ v7 ->
                         let v8 = -1 :: Integer in
                         coe
                           (let v9
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v5
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v5) (coe v8) (coe v7))
                                      v7 in
                            coe
                              (case coe v6 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v5)
                                 1 -> coe v7
                                 _ -> coe v9)))))
                (\ v5 v6 -> v5) v2 v3)
      1 -> coe v4
      _ -> coe
             MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
             (MAlonzo.Code.Algebra.Structures.d_isMagma_498
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                   (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))
             (coe
                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                (let v5
                       = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                 coe
                   (\ v6 ->
                      let v7 = subInt (coe v1) (coe (2 :: Integer)) in
                      coe
                        (let v8
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v5
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v5) (coe v7) (coe v6))
                                   v6 in
                         coe
                           (case coe v1 of
                              1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v5)
                              2 -> coe v6
                              _ -> coe v8))))
                (\ v5 v6 -> v5) v2 v3)
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                (\ v5 v6 -> v6)
                (let v5
                       = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                 coe
                   (\ v6 ->
                      let v7 = subInt (coe v1) (coe (2 :: Integer)) in
                      coe
                        (let v8
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v5
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v5) (coe v7) (coe v6))
                                   v6 in
                         coe
                           (case coe v1 of
                              1 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v5)
                              2 -> coe v6
                              _ -> coe v8))))
                v2 v3)
             v2 v3
             (coe
                du_'215''45'cong'691'_194 (coe v0)
                (coe subInt (coe v1) (coe (1 :: Integer))) (coe v2) (coe v3)
                (coe v4))
             v4
-- Algebra.Properties.Monoid.Mult.TCOptimised.×-cong
d_'215''45'cong_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_'215''45'cong_204 ~v0 ~v1 v2 v3 ~v4 v5 v6 ~v7 v8
  = du_'215''45'cong_204 v2 v3 v5 v6 v8
du_'215''45'cong_204 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong_204 v0 v1 v2 v3 v4
  = coe
      du_'215''45'cong'691'_194 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
-- Algebra.Properties.Monoid.Mult.TCOptimised.×-assocˡ
d_'215''45'assoc'737'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'assoc'737'_216 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'assoc'737'_216 v2 v3 v4 v5
du_'215''45'assoc'737'_216 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'assoc'737'_216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (let v4
             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
       coe
         (let v5
                = let v5
                        = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                             _ -> coe v7))) in
          coe
            (let v6 = subInt (coe v2) (coe (1 :: Integer)) in
             coe
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                             (coe v4) (coe v6) (coe v5))
                          v5 in
                coe
                  (case coe v2 of
                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                     1 -> coe v5
                     _ -> coe v7)))))
      (let v4
             = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
       coe
         (let v5 = mulInt (coe v2) (coe v3) in
          coe
            (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
             coe
               (let v7
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                             (coe v4) (coe v6) (coe v1))
                          v1 in
                coe
                  (case coe v5 of
                     0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                     1 -> coe v1
                     _ -> coe v7)))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))))
         (let v4
                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
          coe
            (let v5
                   = let v5
                           = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
                                _ -> coe v7))) in
             coe
               (let v6 = subInt (coe v2) (coe (1 :: Integer)) in
                coe
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v6) (coe v5))
                             v5 in
                   coe
                     (case coe v2 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v5
                        _ -> coe v7)))))
         (let v4
                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
          coe
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                       (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                       (coe v3) (coe v1) in
             coe
               (let v6 = subInt (coe v2) (coe (1 :: Integer)) in
                coe
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v6) (coe v5))
                             v5 in
                   coe
                     (case coe v2 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v5
                        _ -> coe v7)))))
         (let v4
                = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
          coe
            (let v5 = mulInt (coe v2) (coe v3) in
             coe
               (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                coe
                  (let v7
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                             (coe
                                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                (coe v4) (coe v6) (coe v1))
                             v1 in
                   coe
                     (case coe v5 of
                        0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                        1 -> coe v1
                        _ -> coe v7)))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))))
            (let v4
                   = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                          (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                          (coe v3) (coe v1) in
                coe
                  (let v6 = subInt (coe v2) (coe (1 :: Integer)) in
                   coe
                     (let v7
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                (coe
                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                   (coe v4) (coe v6) (coe v5))
                                v5 in
                      coe
                        (case coe v2 of
                           0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                           1 -> coe v5
                           _ -> coe v7)))))
            (coe
               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
               (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
               (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                  (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                  (coe v3) (coe v1)))
            (let v4
                   = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
             coe
               (let v5 = mulInt (coe v2) (coe v3) in
                coe
                  (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                   coe
                     (let v7
                            = coe
                                MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                (coe
                                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                   (coe v4) (coe v6) (coe v1))
                                v1 in
                      coe
                        (case coe v5 of
                           0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                           1 -> coe v1
                           _ -> coe v7)))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                  (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                     (coe v3) (coe v1)))
               (coe
                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                  (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                  (coe mulInt (coe v2) (coe v3)) (coe v1))
               (let v4
                      = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                coe
                  (let v5 = mulInt (coe v2) (coe v3) in
                   coe
                     (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                      coe
                        (let v7
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                      (coe v4) (coe v6) (coe v1))
                                   v1 in
                         coe
                           (case coe v5 of
                              0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                              1 -> coe v1
                              _ -> coe v7)))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                     (coe mulInt (coe v2) (coe v3)) (coe v1))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                   coe
                     (let v5 = mulInt (coe v2) (coe v3) in
                      coe
                        (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                         coe
                           (let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v4) (coe v6) (coe v1))
                                      v1 in
                            coe
                              (case coe v5 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                 1 -> coe v1
                                 _ -> coe v7)))))
                  (let v4
                         = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                   coe
                     (let v5 = mulInt (coe v2) (coe v3) in
                      coe
                        (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                         coe
                           (let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                         (coe v4) (coe v6) (coe v1))
                                      v1 in
                            coe
                              (case coe v5 of
                                 0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                 1 -> coe v1
                                 _ -> coe v7)))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))))
                     (let v4
                            = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
                      coe
                        (let v5 = mulInt (coe v2) (coe v3) in
                         coe
                           (let v6 = subInt (coe v5) (coe (1 :: Integer)) in
                            coe
                              (let v7
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__92 v4
                                         (coe
                                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__76
                                            (coe v4) (coe v6) (coe v1))
                                         v1 in
                               coe
                                 (case coe v5 of
                                    0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_94 (coe v4)
                                    1 -> coe v1
                                    _ -> coe v7))))))
                  (coe
                     du_'215''7524''8776''215'_168 (coe v0)
                     (coe mulInt (coe v2) (coe v3)) (coe v1)))
               (coe
                  MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'assoc'737'_378
                  (coe v0) (coe v1) (coe v2) (coe v3)))
            (coe
               du_'215''7524''8776''215'_168 (coe v0) (coe v2)
               (coe
                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                  (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                  (coe v3) (coe v1))))
         (coe
            du_'215''45'cong'691'_194 (coe v0) (coe v2)
            (coe
               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
               (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
               (coe v3) (coe v1))
            (let v4
                   = coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0) in
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
            (coe du_'215''7524''8776''215'_168 (coe v0) (coe v3) (coe v1))))
