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

module MAlonzo.Code.Algebra.Properties.AbelianGroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.AbelianGroup._.identity-unique
d_identity'45'unique_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_158 ~v0 ~v1 v2 = du_identity'45'unique_158 v2
du_identity'45'unique_158 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_158 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'45'unique_368
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.identityʳ-unique
d_identity'691''45'unique_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_160 ~v0 ~v1 v2
  = du_identity'691''45'unique_160 v2
du_identity'691''45'unique_160 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_160 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'691''45'unique_358
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.identityˡ-unique
d_identity'737''45'unique_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_162 ~v0 ~v1 v2
  = du_identity'737''45'unique_162 v2
du_identity'737''45'unique_162 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_162 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_identity'737''45'unique_346
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.inverseʳ-unique
d_inverse'691''45'unique_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_164 ~v0 ~v1 v2
  = du_inverse'691''45'unique_164 v2
du_inverse'691''45'unique_164 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_164 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_inverse'691''45'unique_390
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.inverseˡ-unique
d_inverse'737''45'unique_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_166 ~v0 ~v1 v2
  = du_inverse'737''45'unique_166 v2
du_inverse'737''45'unique_166 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_166 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_inverse'737''45'unique_378
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.ε⁻¹≈ε
d_ε'8315''185''8776'ε_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 -> AgdaAny
d_ε'8315''185''8776'ε_168 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_168 v2
du_ε'8315''185''8776'ε_168 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 -> AgdaAny
du_ε'8315''185''8776'ε_168 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_ε'8315''185''8776'ε_270
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_170 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''8729'_170 v2
du_'8315''185''45'anti'45'homo'45''8729'_170 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_170 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_336
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.⁻¹-injective
d_'8315''185''45'injective_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_172 ~v0 ~v1 v2
  = du_'8315''185''45'injective_172 v2
du_'8315''185''45'injective_172 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_172 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'injective_324
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.⁻¹-involutive
d_'8315''185''45'involutive_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny
d_'8315''185''45'involutive_174 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_174 v2
du_'8315''185''45'involutive_174 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny
du_'8315''185''45'involutive_174 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'involutive_316
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.∙-cancel
d_'8729''45'cancel_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8729''45'cancel_176 ~v0 ~v1 v2 = du_'8729''45'cancel_176 v2
du_'8729''45'cancel_176 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8729''45'cancel_176 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel_312
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.∙-cancelʳ
d_'8729''45'cancel'691'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'691'_178 ~v0 ~v1 v2
  = du_'8729''45'cancel'691'_178 v2
du_'8729''45'cancel'691'_178 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'691'_178 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'691'_302
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup._.∙-cancelˡ
d_'8729''45'cancel'737'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'737'_180 ~v0 ~v1 v2
  = du_'8729''45'cancel'737'_180 v2
du_'8729''45'cancel'737'_180 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'737'_180 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'737'_292
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0))
-- Algebra.Properties.AbelianGroup.xyx⁻¹≈y
d_xyx'8315''185''8776'y_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xyx'8315''185''8776'y_186 ~v0 ~v1 v2 v3 v4
  = du_xyx'8315''185''8776'y_186 v2 v3 v4
du_xyx'8315''185''8776'y_186 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_xyx'8315''185''8776'y_186 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1))
      v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                   coe
                     (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1))
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                      coe
                        (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v6))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1)))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                         coe
                           (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe v5) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe v6))))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1402 (coe v0)))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                            coe
                              (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                               (coe v5) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                             (coe v6))))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2
                     (MAlonzo.Code.Algebra.Bundles.d_ε_1402 (coe v0)))
                  v2 v2
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v3
                                       = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406
                                           (coe v0) in
                                 coe
                                   (let v4
                                          = MAlonzo.Code.Algebra.Structures.d_isGroup_992
                                              (coe v3) in
                                    coe
                                      (let v5
                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                                                 (coe v4) in
                                       coe
                                         (let v6
                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                    (coe v5) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                  (coe v6)))))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v3))
                        (coe v2)))
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                   coe
                     (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                           (MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4)) v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_isGroup_992
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0)) in
                coe
                  (let v4
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1))
                           (coe MAlonzo.Code.Algebra.Bundles.d_ε_1402 (coe v0))
                           (let v6
                                  = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                                 (MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v6)) v1)))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_450
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isGroup_992
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0)))))
               v2 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1)))
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isGroup_992
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0)) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_comm_994
                        (MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0)) v1
                        v2))))))
-- Algebra.Properties.AbelianGroup.⁻¹-∙-comm
d_'8315''185''45''8729''45'comm_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45''8729''45'comm_196 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45''8729''45'comm_196 v2 v3 v4
du_'8315''185''45''8729''45'comm_196 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45''8729''45'comm_196 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                   coe
                     (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                coe
                  (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6)))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                      coe
                        (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v6))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2))
            (let v3
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v3
                                 = MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0) in
                           coe
                             (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
                              coe
                                (let v5
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                                 coe
                                   (let v6
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                              (coe v5) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe v6)))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1404 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
               (MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0)))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1400 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_994
                  (MAlonzo.Code.Algebra.Bundles.d_isAbelianGroup_1406 (coe v0)) v2
                  v1)))
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_336
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v0)) (coe v2)
            (coe v1)))
