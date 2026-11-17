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

module MAlonzo.Code.Tactic.RingSolver.Core.Polynomial.Reasoning where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing

-- Tactic.RingSolver.Core.Polynomial.Reasoning._._IsRelatedTo_
d__IsRelatedTo__164 a0 a1 a2 a3 a4 = ()
-- Tactic.RingSolver.Core.Polynomial.Reasoning._._∎
d__'8718'_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_166 ~v0 ~v1 v2 = du__'8718'_166 v2
du__'8718'_166 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du__'8718'_166 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                    (coe v1)) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v2))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.begin_
d_begin__168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_begin__168 ~v0 ~v1 ~v2 = du_begin__168
du_begin__168 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_begin__168
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.start
d_start_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_start_172 ~v0 ~v1 ~v2 = du_start_172
du_start_172 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_start_172 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≈
d_step'45''8776'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_174 ~v0 ~v1 v2 = du_step'45''8776'_174 v2
du_step'45''8776'_174 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776'_174 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≈-⟨
d_step'45''8776''45''10216'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_176 ~v0 ~v1 v2
  = du_step'45''8776''45''10216'_176 v2
du_step'45''8776''45''10216'_176 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10216'_176 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≈-⟩
d_step'45''8776''45''10217'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_178 ~v0 ~v1 v2
  = du_step'45''8776''45''10217'_178 v2
du_step'45''8776''45''10217'_178 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10217'_178 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≈˘
d_step'45''8776''728'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_180 ~v0 ~v1 v2
  = du_step'45''8776''728'_180 v2
du_step'45''8776''728'_180 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''728'_180 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≡
d_step'45''8801'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_182 ~v0 ~v1 ~v2 = du_step'45''8801'_182
du_step'45''8801'_182 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801'_182
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_184 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_step'45''8801''45''8739'_184 v5
du_step'45''8801''45''8739'_184 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_184 v0 = coe v0
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_186 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10216'_186
du_step'45''8801''45''10216'_186 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10216'_186
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_188 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10217'_188
du_step'45''8801''45''10217'_188 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10217'_188
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.step-≡˘
d_step'45''8801''728'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_190 ~v0 ~v1 ~v2 = du_step'45''8801''728'_190
du_step'45''8801''728'_190 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''728'_190
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.stop
d_stop_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_192 ~v0 ~v1 v2 = du_stop_192 v2
du_stop_192 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_stop_192 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.∼-go
d_'8764''45'go_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_194 ~v0 ~v1 v2 = du_'8764''45'go_194 v2
du_'8764''45'go_194 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8764''45'go_194 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_setoid_202
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
                                      (coe v0))))))))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._.≡-go
d_'8801''45'go_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8801''45'go_196 v7
du_'8801''45'go_196 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_196 v0 = coe v0
-- Tactic.RingSolver.Core.Polynomial.Reasoning.≪+_
d_'8810''43'__208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8810''43'__208 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8810''43'__208 v2 v3 v4 v5 v6
du_'8810''43'__208 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8810''43'__208 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (MAlonzo.Code.Algebra.Structures.d_isMagma_496
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
                              (coe v0)))))))))
      v1 v2 v3 v3 v4
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_360
         (coe v0) (coe v3))
-- Tactic.RingSolver.Core.Polynomial.Reasoning.+≫_
d_'43''8811'__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''8811'__218 ~v0 ~v1 v2 v3 v4 v5
  = du_'43''8811'__218 v2 v3 v4 v5
du_'43''8811'__218 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'43''8811'__218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (MAlonzo.Code.Algebra.Structures.d_isMagma_496
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
                              (coe v0)))))))))
      v1 v1 v2 v3
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_360
         (coe v0) (coe v1))
-- Tactic.RingSolver.Core.Polynomial.Reasoning.≪*_
d_'8810''42'__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8810''42'__226 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8810''42'__226 v2 v3 v4 v5 v6
du_'8810''42'__226 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8810''42'__226 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe v0)))))
      v1 v2 v3 v3 v4
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_360
         (coe v0) (coe v3))
-- Tactic.RingSolver.Core.Polynomial.Reasoning.*≫_
d_'42''8811'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''8811'__236 ~v0 ~v1 v2 v3 v4 v5
  = du_'42''8811'__236 v2 v3 v4 v5
du_'42''8811'__236 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'42''8811'__236 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1558
      (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1654
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1764
            (coe
               MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isCommutativeSemiring_62
               (coe
                  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.d_isAlmostCommutativeRing_224
                  (coe v0)))))
      v1 v1 v2 v3
      (coe
         MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.du_refl_360
         (coe v0) (coe v1))
-- Tactic.RingSolver.Core.Polynomial.Reasoning._⊙_
d__'8857'__244 ::
  MAlonzo.Code.Tactic.RingSolver.Core.AlmostCommutativeRing.T_AlmostCommutativeRing_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d__'8857'__244 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
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
                                 (coe v0))))))))))
      v1 v2 v3
