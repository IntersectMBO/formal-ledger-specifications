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

module MAlonzo.Code.Algebra.Properties.Group where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Group._.Cancellative
d_Cancellative_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Cancellative_126 = erased
-- Algebra.Properties.Group._.Identity
d_Identity_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_144 = erased
-- Algebra.Properties.Group._.LeftCancellative
d_LeftCancellative_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_158 = erased
-- Algebra.Properties.Group._.RightCancellative
d_RightCancellative_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_188 = erased
-- Algebra.Properties.Group.ε⁻¹≈ε
d_ε'8315''185''8776'ε_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 -> AgdaAny
d_ε'8315''185''8776'ε_270 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_270 v2
du_ε'8315''185''8776'ε_270 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 -> AgdaAny
du_ε'8315''185''8776'ε_270 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
         (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v1 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                   coe
                     (let v2
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
         (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v1 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v2
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
                         coe
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
            (let v1
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v1 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                           coe
                             (let v2
                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
                              coe
                                (let v3
                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                           (coe v2) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.du_setoid_168
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                         (coe v3))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            (let v1 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                     (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))))))
-- Algebra.Properties.Group.left-helper
d_left'45'helper_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_left'45'helper_276 ~v0 ~v1 v2 v3 v4
  = du_left'45'helper_276 v2 v3 v4
du_left'45'helper_276 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_left'45'helper_276 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      v1
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                   coe
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))))
         v1
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v5)))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                              coe
                                (let v4
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                                 coe
                                   (let v5
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                              (coe v4) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe v5))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_450
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))
                     v1 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))))
            (let v3
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                       (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) in
             coe
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))
                     (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                        (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                           (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v2))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            v1
            (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)) v1))))
-- Algebra.Properties.Group.right-helper
d_right'45'helper_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_right'45'helper_286 ~v0 ~v1 v2 v3 v4
  = du_right'45'helper_286 v2 v3 v4
du_right'45'helper_286 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_right'45'helper_286 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      v2
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                   coe
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))))
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)) v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
               v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v5)))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
                  v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                              coe
                                (let v4
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                                 coe
                                   (let v5
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                              (coe v4) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe v5))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_450
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1
                  v2))
            (let v3
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                       (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) in
             coe
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))
                     (coe v2) (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_448
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
                        (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
                           (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v1))))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)) v2)
            v2
            (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)) v2))))
-- Algebra.Properties.Group.∙-cancelˡ
d_'8729''45'cancel'737'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'737'_292 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8729''45'cancel'737'_292 v2 v3 v4 v5 v6
du_'8729''45'cancel'737'_292 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'737'_292 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v3))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v7)))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v3))
               v3 v3
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                                 coe
                                   (let v7
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                              (coe v6) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe v7))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe v3)))
               (coe du_right'45'helper_286 (coe v0) (coe v1) (coe v3)))
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (let v6
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                coe
                  (let v7
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v3)
                        (coe v4))))))
         (coe du_right'45'helper_286 (coe v0) (coe v1) (coe v2)))
-- Algebra.Properties.Group.∙-cancelʳ
d_'8729''45'cancel'691'_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'691'_302 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8729''45'cancel'691'_302 v2 v3 v4 v5 v6
du_'8729''45'cancel'691'_302 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'691'_302 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v3 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v7)))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v3 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
               v3 v3
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                                 coe
                                   (let v7
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                              (coe v6) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe v7))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe v3)))
               (coe du_left'45'helper_276 (coe v0) (coe v3) (coe v1)))
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (let v6
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5) in
                coe
                  (let v7
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v6) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v3 v1)
                        (coe v4))))))
         (coe du_left'45'helper_276 (coe v0) (coe v2) (coe v1)))
-- Algebra.Properties.Group.∙-cancel
d_'8729''45'cancel_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8729''45'cancel_312 ~v0 ~v1 v2 = du_'8729''45'cancel_312 v2
du_'8729''45'cancel_312 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8729''45'cancel_312 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8729''45'cancel'737'_292 (coe v0))
      (coe du_'8729''45'cancel'691'_302 (coe v0))
-- Algebra.Properties.Group.⁻¹-involutive
d_'8315''185''45'involutive_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 -> AgdaAny -> AgdaAny
d_'8315''185''45'involutive_316 ~v0 ~v1 v2 v3
  = du_'8315''185''45'involutive_316 v2 v3
du_'8315''185''45'involutive_316 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 -> AgdaAny -> AgdaAny
du_'8315''185''45'involutive_316 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                   coe
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4)))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                   coe
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4)))))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                   coe
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_168
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                         coe
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v4)))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1))
               v1 v1
               (let v2
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                              coe
                                (let v3
                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
                                 coe
                                   (let v4
                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                              (coe v3) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.du_setoid_168
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                            (coe v4))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v2))
                     (coe v1)))
               (coe
                  du_right'45'helper_286 (coe v0)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                  (coe v1)))
            (let v2
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                       (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) in
             coe
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
                        (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v1)))))
         (let v2 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))))
-- Algebra.Properties.Group.⁻¹-injective
d_'8315''185''45'injective_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_324 ~v0 ~v1 v2 v3 v4 v5
  = du_'8315''185''45'injective_324 v2 v3 v4 v5
du_'8315''185''45'injective_324 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_324 v0 v1 v2 v3
  = coe
      du_'8729''45'cancel'691'_302 (coe v0)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                       (coe v6)))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                          (coe v6)))))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                               (coe v6))))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))))
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))
                              (coe v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                              (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v2))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v1)))
-- Algebra.Properties.Group.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_336 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''8729'_336 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''8729'_336 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_336 v0 v1 v2
  = coe
      du_'8729''45'cancel'737'_292 (coe v0)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_168
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                       (coe v5)))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Structures.du_setoid_168
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5))))))))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                            (coe v4) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_168
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                          (coe v5)))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                               coe
                                 (let v4
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                               (coe v4) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_168
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                             (coe v5)))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                                    coe
                                      (let v4
                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                                                 (coe v3) in
                                       coe
                                         (let v5
                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                    (coe v4) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                  (coe v5))))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_450
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
                  (let v3 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                              (coe v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
                              (coe du_left'45'helper_276 (coe v0) (coe v1) (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v1))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))))
-- Algebra.Properties.Group.identityˡ-unique
d_identity'737''45'unique_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_346 ~v0 ~v1 v2 v3 v4 v5
  = du_identity'737''45'unique_346 v2 v3 v4 v5
du_identity'737''45'unique_346 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_346 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v1 (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
         v1
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
         (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                       (coe v6)))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                            (coe v6))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v2))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe v2) (coe v3))))))
         (coe du_left'45'helper_276 (coe v0) (coe v1) (coe v2)))
-- Algebra.Properties.Group.identityʳ-unique
d_identity'691''45'unique_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_358 ~v0 ~v1 v2 v3 v4 v5
  = du_identity'691''45'unique_358 v2 v3 v4 v5
du_identity'691''45'unique_358 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_358 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v2 (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
         (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
            (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                       (coe v6)))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1) v1)
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                            (coe v6))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)) v1))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                  (MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0)))))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2) v1)
               (coe v3)))
         (coe du_right'45'helper_286 (coe v0) (coe v1) (coe v2)))
-- Algebra.Properties.Group.identity-unique
d_identity'45'unique_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_368 ~v0 ~v1 v2 v3 v4
  = du_identity'45'unique_368 v2 v3 v4
du_identity'45'unique_368 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_368 v0 v1 v2
  = coe
      du_identity'737''45'unique_346 (coe v0) (coe v1) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2 v1)
-- Algebra.Properties.Group.inverseˡ-unique
d_inverse'737''45'unique_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_378 ~v0 ~v1 v2 v3 v4 v5
  = du_inverse'737''45'unique_378 v2 v3 v4 v5
du_inverse'737''45'unique_378 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
         v1
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                       (coe v6)))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                            (coe v6))))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)))
               (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                     (MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1288 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_ε_1290 (coe v0)) (coe v3))))))
         (coe du_left'45'helper_276 (coe v0) (coe v1) (coe v2)))
-- Algebra.Properties.Group.inverseʳ-unique
d_inverse'691''45'unique_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_390 ~v0 ~v1 v2 v3 v4 v5
  = du_inverse'691''45'unique_390 v2 v3 v4 v5
du_inverse'691''45'unique_390 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_390 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
         v2
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4 = MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0) in
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
                                         (coe v6))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2) v1
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_448
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2)
                  (coe
                     du_inverse'737''45'unique_378 (coe v0) (coe v1) (coe v2)
                     (coe v3)))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1294 (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1292 v0 v2))
            v2 (coe du_'8315''185''45'involutive_316 (coe v0) (coe v2))))
