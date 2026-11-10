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
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Properties.Loop
import qualified MAlonzo.Code.Algebra.Properties.QQuasigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Group._._//_
d__'47''47'__16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__16 ~v0 ~v1 v2 = du__'47''47'__16 v2
du__'47''47'__16 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__16 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
-- Algebra.Properties.Group._._\\_
d__'92''92'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'92''92'__18 ~v0 ~v1 v2 = du__'92''92'__18 v2
du__'92''92'__18 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'92''92'__18 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
-- Algebra.Properties.Group._.Commutative
d_Commutative_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_270 = erased
-- Algebra.Properties.Group._.Congruent₂
d_Congruent'8322'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_274 = erased
-- Algebra.Properties.Group._.Involutive
d_Involutive_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_294 = erased
-- Algebra.Properties.Group._.LeftDivides
d_LeftDivides_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_306 = erased
-- Algebra.Properties.Group._.LeftDividesʳ
d_LeftDivides'691'_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_308 = erased
-- Algebra.Properties.Group._.LeftDividesˡ
d_LeftDivides'737'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_310 = erased
-- Algebra.Properties.Group._.RightDivides
d_RightDivides_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_336 = erased
-- Algebra.Properties.Group._.RightDividesʳ
d_RightDivides'691'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_338 = erased
-- Algebra.Properties.Group._.RightDividesˡ
d_RightDivides'737'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_340 = erased
-- Algebra.Properties.Group._.SelfInverse
d_SelfInverse_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_354 = erased
-- Algebra.Properties.Group._.IsLoop
d_IsLoop_374 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Properties.Group._.IsQuasigroup
d_IsQuasigroup_378 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Properties.Group._.IsLoop.identity
d_identity_396 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3122 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_396 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3138 (coe v0)
-- Algebra.Properties.Group._.IsLoop.isQuasigroup
d_isQuasigroup_408 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3122 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038
d_isQuasigroup_408 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3136 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.//-cong
d_'47''47''45'cong_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_3060 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.\\-cong
d_'92''92''45'cong_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_3058 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.isMagma
d_isMagma_454 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_178
d_isMagma_454 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_3056 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.leftDivides
d_leftDivides_458 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_458 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_3062 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.rightDivides
d_rightDivides_468 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_468 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_3064 (coe v0)
-- Algebra.Properties.Group.\\-cong₂
d_'92''92''45'cong'8322'_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'8322'_526 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_'92''92''45'cong'8322'_526 v2 v3 v4 v5 v6 v7 v8
du_'92''92''45'cong'8322'_526 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'8322'_526 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (\ v7 v8 -> v7) v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)) v1 v2)
      v3 v4
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
         (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1 v2 v5)
      v6
-- Algebra.Properties.Group.//-cong₂
d_'47''47''45'cong'8322'_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'8322'_532 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_'47''47''45'cong'8322'_532 v2 v3 v4 v5 v6 v7 v8
du_'47''47''45'cong'8322'_532 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'8322'_532 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
      (MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))
      v1 v2
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (\ v7 v8 -> v7) v3 v4)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)) v3 v4)
      v5
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1092
         (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v3 v4 v6)
-- Algebra.Properties.Group.\\-leftDividesˡ
d_'92''92''45'leftDivides'737'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'737'_538 ~v0 ~v1 v2 v3 v4
  = du_'92''92''45'leftDivides'737'_538 v2 v3 v4
du_'92''92''45'leftDivides'737'_538 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'737'_538 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v1) (coe v2)))
      v2
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
            (coe
               MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
            v2)
         v2
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) v2)
            v2
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) v2)
               v2 v2
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_498
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
            v2))
-- Algebra.Properties.Group.\\-leftDividesʳ
d_'92''92''45'leftDivides'691'_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'691'_544 ~v0 ~v1 v2 v3 v4
  = du_'92''92''45'leftDivides'691'_544 v2 v3 v4
du_'92''92''45'leftDivides'691'_544 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'691'_544 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v1)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2))
      v2
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1)
            v2)
         v2
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1)
               v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) v2)
            v2
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) v2)
               v2 v2
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_752
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1)
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_498
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1
            v2))
-- Algebra.Properties.Group.\\-leftDivides
d_'92''92''45'leftDivides_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'92''92''45'leftDivides_550 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides_550 v2
du_'92''92''45'leftDivides_550 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'92''92''45'leftDivides_550 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'92''92''45'leftDivides'737'_538 (coe v0))
      (coe du_'92''92''45'leftDivides'691'_544 (coe v0))
-- Algebra.Properties.Group.//-rightDividesˡ
d_'47''47''45'rightDivides'737'_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'737'_552 ~v0 ~v1 v2 v3 v4
  = du_'47''47''45'rightDivides'737'_552 v2 v3 v4
du_'47''47''45'rightDivides'737'_552 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'737'_552 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v2) (coe v1))
         v1)
      v2
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v2) (coe v1))
            v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1))
         v2
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
            v2
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
               v2 v2
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1)
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_1144
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_498
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
            v1))
-- Algebra.Properties.Group.//-rightDividesʳ
d_'47''47''45'rightDivides'691'_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'691'_558 ~v0 ~v1 v2 v3 v4
  = du_'47''47''45'rightDivides'691'_558 v2 v3 v4
du_'47''47''45'rightDivides'691'_558 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'691'_558 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2 v1)
         (coe v1))
      v2
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2 v1)
            (coe v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v1) (coe v1)))
         v2
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v1) (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
            v2
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
               v2 v2
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_754
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_498
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            v2 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
-- Algebra.Properties.Group.//-rightDivides
d_'47''47''45'rightDivides_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'47''47''45'rightDivides_564 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides_564 v2
du_'47''47''45'rightDivides_564 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'47''47''45'rightDivides_564 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'47''47''45'rightDivides'737'_552 (coe v0))
      (coe du_'47''47''45'rightDivides'691'_558 (coe v0))
-- Algebra.Properties.Group.isQuasigroup
d_isQuasigroup_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038
d_isQuasigroup_566 ~v0 ~v1 v2 = du_isQuasigroup_566 v2
du_isQuasigroup_566 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3038
du_isQuasigroup_566 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3112
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_496
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))
      (coe du_'92''92''45'cong'8322'_526 (coe v0))
      (coe du_'47''47''45'cong'8322'_532 (coe v0))
      (coe du_'92''92''45'leftDivides_550 (coe v0))
      (coe du_'47''47''45'rightDivides_564 (coe v0))
-- Algebra.Properties.Group.quasigroup
d_quasigroup_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358
d_quasigroup_568 ~v0 ~v1 v2 = du_quasigroup_568 v2
du_quasigroup_568 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4358
du_quasigroup_568 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4454
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (coe du_isQuasigroup_566 (coe v0))
-- Algebra.Properties.Group._.x≈z//y
d_x'8776'z'47''47'y_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'z'47''47'y_572 ~v0 ~v1 v2 = du_x'8776'z'47''47'y_572 v2
du_x'8776'z'47''47'y_572 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'z'47''47'y_572 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_278
      (coe du_quasigroup_568 (coe v0))
-- Algebra.Properties.Group._.y≈x\\z
d_y'8776'x'92''92'z_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8776'x'92''92'z_574 ~v0 ~v1 v2 = du_y'8776'x'92''92'z_574 v2
du_y'8776'x'92''92'z_574 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8776'x'92''92'z_574 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_262
      (coe du_quasigroup_568 (coe v0))
-- Algebra.Properties.Group._.cancel
d_cancel_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_576 ~v0 ~v1 v2 = du_cancel_576 v2
du_cancel_576 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_576 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel_308
      (coe du_quasigroup_568 (coe v0))
-- Algebra.Properties.Group._.cancelʳ
d_cancel'691'_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_578 ~v0 ~v1 v2 = du_cancel'691'_578 v2
du_cancel'691'_578 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_578 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'691'_298
      (coe du_quasigroup_568 (coe v0))
-- Algebra.Properties.Group._.cancelˡ
d_cancel'737'_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_580 ~v0 ~v1 v2 = du_cancel'737'_580 v2
du_cancel'737'_580 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_580 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'737'_288
      (coe du_quasigroup_568 (coe v0))
-- Algebra.Properties.Group.isLoop
d_isLoop_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3122
d_isLoop_582 ~v0 ~v1 v2 = du_isLoop_582 v2
du_isLoop_582 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3122
du_isLoop_582 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3192
      (coe du_isQuasigroup_566 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
-- Algebra.Properties.Group.loop
d_loop_584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460
d_loop_584 ~v0 ~v1 v2 = du_loop_584 v2
du_loop_584 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4460
du_loop_584 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4564
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
      (coe du_isLoop_582 (coe v0))
-- Algebra.Properties.Group._.identity-unique
d_identity'45'unique_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_588 ~v0 ~v1 v2 = du_identity'45'unique_588 v2
du_identity'45'unique_588 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_588 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Loop.du_identity'45'unique_326
      (coe du_loop_584 (coe v0))
-- Algebra.Properties.Group._.identityʳ-unique
d_identity'691''45'unique_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_590 ~v0 ~v1 v2
  = du_identity'691''45'unique_590 v2
du_identity'691''45'unique_590 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_590 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Loop.du_identity'691''45'unique_316
      (coe du_loop_584 (coe v0))
-- Algebra.Properties.Group._.identityˡ-unique
d_identity'737''45'unique_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_592 ~v0 ~v1 v2
  = du_identity'737''45'unique_592 v2
du_identity'737''45'unique_592 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_592 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Loop.du_identity'737''45'unique_304
      (coe du_loop_584 (coe v0))
-- Algebra.Properties.Group.inverseˡ-unique
d_inverse'737''45'unique_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_598 ~v0 ~v1 v2 v3 v4 v5
  = du_inverse'737''45'unique_598 v2 v3 v4 v5
du_inverse'737''45'unique_598 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_598 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      v1
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) (coe v2))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_278
         (coe du_quasigroup_568 (coe v0)) (coe v1) (coe v2)
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) (coe v3))
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_752
         (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
-- Algebra.Properties.Group.inverseʳ-unique
d_inverse'691''45'unique_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_610 ~v0 ~v1 v2 v3 v4 v5
  = du_inverse'691''45'unique_610 v2 v3 v4 v5
du_inverse'691''45'unique_610 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_610 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      v2
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_262
         (coe du_quasigroup_568 (coe v0)) (coe v1) (coe v2)
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) (coe v3))
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_754
         (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
            (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
-- Algebra.Properties.Group.ε⁻¹≈ε
d_ε'8315''185''8776'ε_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny
d_ε'8315''185''8776'ε_618 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_618 v2
du_ε'8315''185''8776'ε_618 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny
du_ε'8315''185''8776'ε_618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
      (coe
         du_inverse'737''45'unique_598 (coe v0)
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_752
            (MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))))
-- Algebra.Properties.Group.⁻¹-selfInverse
d_'8315''185''45'selfInverse_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'selfInverse_620 ~v0 ~v1 v2 v3 v4 v5
  = du_'8315''185''45'selfInverse_620 v2 v3 v4 v5
du_'8315''185''45'selfInverse_620 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'selfInverse_620 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
      (coe
         du_inverse'737''45'unique_598 (coe v0) (coe v1) (coe v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
            (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
                  (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
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
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
                                          (coe v0))))))))
                     (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                     (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v2
                  v3))))
-- Algebra.Properties.Group.⁻¹-involutive
d_'8315''185''45'involutive_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny -> AgdaAny
d_'8315''185''45'involutive_628 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_628 v2
du_'8315''185''45'involutive_628 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny -> AgdaAny
du_'8315''185''45'involutive_628 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_selfInverse'8658'involutive_292
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
      (coe du_'8315''185''45'selfInverse_620 (coe v0))
-- Algebra.Properties.Group.x∙y⁻¹≈ε⇒x≈y
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_634 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_634 v2 v3 v4 v5
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_634 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_634 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      v1 v2
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         v1
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
         v2
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
            v2 v2
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe v2))
            (coe du_'8315''185''45'involutive_628 v0 v2))
         (coe
            du_inverse'737''45'unique_598 (coe v0) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
            (coe v3)))
-- Algebra.Properties.Group.x≈y⇒x∙y⁻¹≈ε
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_646 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_646 v2 v3 v4 v5
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_646 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_646 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
         (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
            (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2) v1 v2
            v3))
-- Algebra.Properties.Group.⁻¹-injective
d_'8315''185''45'injective_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_654 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'injective_654 v2 v3 v4
du_'8315''185''45'injective_654 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_654 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_selfInverse'8658'injective_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_496
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
      (coe du_'8315''185''45'selfInverse_620 (coe v0)) (coe v1) (coe v2)
-- Algebra.Properties.Group.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_660 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''8729'_660 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''8729'_660 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_660 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'737'_288
      (coe du_quasigroup_568 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
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
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
                                          (coe v0))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
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
                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
                                             (coe v0))))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_assoc_498
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_496
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe v2))
                     v1
                     (coe
                        du_'47''47''45'rightDivides'691'_558 (coe v0) (coe v2) (coe v1))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_1146
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2))))
-- Algebra.Properties.Group.⁻¹-anti-homo-//
d_'8315''185''45'anti'45'homo'45''47''47'_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''47''47'_670 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''47''47'_670 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''47''47'_670 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''47''47'_670 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v2) (coe v1))
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v2) (coe v1))
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v2) (coe v1))
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v2) (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
               v2 (coe du_'8315''185''45'involutive_628 v0 v2)))
         (coe
            du_'8315''185''45'anti'45'homo'45''8729'_660 (coe v0) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)))
-- Algebra.Properties.Group.⁻¹-anti-homo-\\
d_'8315''185''45'anti'45'homo'45''92''92'_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''92''92'_680 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''92''92'_680 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''92''92'_680 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''92''92'_680 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v2) (coe v1))
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v2) (coe v1))
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2) v1)
            (coe
               MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v2) (coe v1))
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v2) (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               v1 (coe du_'8315''185''45'involutive_628 v0 v1)))
         (coe
            du_'8315''185''45'anti'45'homo'45''8729'_660 (coe v0)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
            (coe v2)))
-- Algebra.Properties.Group.\\≗flip-//⇒comm
d_'92''92''8791'flip'45''47''47''8658'comm_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''8791'flip'45''47''47''8658'comm_690 ~v0 ~v1 v2 v3 v4 v5
  = du_'92''92''8791'flip'45''47''47''8658'comm_690 v2 v3 v4 v5
du_'92''92''8791'flip'45''47''47''8658'comm_690 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''8791'flip'45''47''47''8658'comm_690 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2 v3)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2)
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2 v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v3) (coe v2))
               v2))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2)
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  v2))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2)
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
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe
                        MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                        (coe v2) (coe v3))
                     v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                        (coe v2) (coe v3)))
                  v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2)
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
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                           (coe v2) (coe v3)))
                     v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2)
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
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
                                          (coe v0))))))))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_496
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                           (coe v2) (coe v3)))
                     v3
                     (coe
                        du_'92''92''45'leftDivides'737'_538 (coe v0) (coe v2) (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_498
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v4 v2)
                  (\ v4 v5 -> v4)
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v4 v5 -> v5)
                  (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v4 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_496
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_496
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2))
                  (coe v1 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
            (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_496
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_496
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_722
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v3) (coe v2))
               v2)
            v3
            (coe
               du_'47''47''45'rightDivides'737'_552 (coe v0) (coe v2) (coe v3))))
-- Algebra.Properties.Group.comm⇒\\≗flip-//
d_comm'8658''92''92''8791'flip'45''47''47'_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8658''92''92''8791'flip'45''47''47'_702 ~v0 ~v1 v2 v3 v4 v5
  = du_comm'8658''92''92''8791'flip'45''47''47'_702 v2 v3 v4 v5
du_comm'8658''92''92''8791'flip'45''47''47'_702 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8658''92''92''8791'flip'45''47''47'_702 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1130
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v3) (coe v2))
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
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v3) (coe v2))
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
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1088
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1136
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v3) (coe v2)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
            v3))
