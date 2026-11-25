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
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
      MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
-- Algebra.Properties.Group._.Commutative
d_Commutative_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_276 = erased
-- Algebra.Properties.Group._.Congruent₂
d_Congruent'8322'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_280 = erased
-- Algebra.Properties.Group._.Involutive
d_Involutive_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_300 = erased
-- Algebra.Properties.Group._.LeftDivides
d_LeftDivides_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_312 = erased
-- Algebra.Properties.Group._.LeftDividesʳ
d_LeftDivides'691'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_314 = erased
-- Algebra.Properties.Group._.LeftDividesˡ
d_LeftDivides'737'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_316 = erased
-- Algebra.Properties.Group._.RightDivides
d_RightDivides_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_342 = erased
-- Algebra.Properties.Group._.RightDividesʳ
d_RightDivides'691'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_344 = erased
-- Algebra.Properties.Group._.RightDividesˡ
d_RightDivides'737'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_346 = erased
-- Algebra.Properties.Group._.SelfInverse
d_SelfInverse_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_360 = erased
-- Algebra.Properties.Group._.IsLoop
d_IsLoop_380 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Properties.Group._.IsQuasigroup
d_IsQuasigroup_384 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Properties.Group._.IsLoop.identity
d_identity_402 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_402 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_3422 (coe v0)
-- Algebra.Properties.Group._.IsLoop.isQuasigroup
d_isQuasigroup_414 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_414 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_3420 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.//-cong
d_'47''47''45'cong_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'47''47''45'cong_3344 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.\\-cong
d_'92''92''45'cong_452 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'92''92''45'cong_3342 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.isMagma
d_isMagma_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_3340 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.leftDivides
d_leftDivides_464 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_464 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_3346 (coe v0)
-- Algebra.Properties.Group._.IsQuasigroup.rightDivides
d_rightDivides_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_474 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_3348 (coe v0)
-- Algebra.Properties.Group.\\-cong₂
d_'92''92''45'cong'8322'_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'8322'_532 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_'92''92''45'cong'8322'_532 v2 v3 v4 v5 v6 v7 v8
du_'92''92''45'cong'8322'_532 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'8322'_532 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
      (MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (\ v7 v8 -> v7) v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)) v1 v2)
      v3 v4
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094
         (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1 v2 v5)
      v6
-- Algebra.Properties.Group.//-cong₂
d_'47''47''45'cong'8322'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'8322'_538 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_'47''47''45'cong'8322'_538 v2 v3 v4 v5 v6 v7 v8
du_'47''47''45'cong'8322'_538 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'8322'_538 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
      (MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))
      v1 v2
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (\ v7 v8 -> v7) v3 v4)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
         (\ v7 v8 -> v8)
         (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)) v3 v4)
      v5
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094
         (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v3 v4 v6)
-- Algebra.Properties.Group.\\-leftDividesˡ
d_'92''92''45'leftDivides'737'_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'737'_544 ~v0 ~v1 v2 v3 v4
  = du_'92''92''45'leftDivides'737'_544 v2 v3 v4
du_'92''92''45'leftDivides'737'_544 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'737'_544 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
            (coe
               MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
            v2))
-- Algebra.Properties.Group.\\-leftDividesʳ
d_'92''92''45'leftDivides'691'_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'691'_550 ~v0 ~v1 v2 v3 v4
  = du_'92''92''45'leftDivides'691'_550 v2 v3 v4
du_'92''92''45'leftDivides'691'_550 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'691'_550 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1)
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_1146
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1
            v2))
-- Algebra.Properties.Group.\\-leftDivides
d_'92''92''45'leftDivides_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'92''92''45'leftDivides_556 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides_556 v2
du_'92''92''45'leftDivides_556 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'92''92''45'leftDivides_556 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'92''92''45'leftDivides'737'_544 (coe v0))
      (coe du_'92''92''45'leftDivides'691'_550 (coe v0))
-- Algebra.Properties.Group.//-rightDividesˡ
d_'47''47''45'rightDivides'737'_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'737'_558 ~v0 ~v1 v2 v3 v4
  = du_'47''47''45'rightDivides'737'_558 v2 v3 v4
du_'47''47''45'rightDivides'737'_558 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'737'_558 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v1)
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_1146
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
            v1))
-- Algebra.Properties.Group.//-rightDividesʳ
d_'47''47''45'rightDivides'691'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'691'_564 ~v0 ~v1 v2 v3 v4
  = du_'47''47''45'rightDivides'691'_564 v2 v3 v4
du_'47''47''45'rightDivides'691'_564 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'691'_564 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2 v1)
            (coe v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                  (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                     (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_500
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
            v2 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
-- Algebra.Properties.Group.//-rightDivides
d_'47''47''45'rightDivides_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'47''47''45'rightDivides_570 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides_570 v2
du_'47''47''45'rightDivides_570 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'47''47''45'rightDivides_570 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'47''47''45'rightDivides'737'_558 (coe v0))
      (coe du_'47''47''45'rightDivides'691'_564 (coe v0))
-- Algebra.Properties.Group.isQuasigroup
d_isQuasigroup_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_572 ~v0 ~v1 v2 = du_isQuasigroup_572 v2
du_isQuasigroup_572 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
du_isQuasigroup_572 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3396
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))
      (coe du_'92''92''45'cong'8322'_532 (coe v0))
      (coe du_'47''47''45'cong'8322'_538 (coe v0))
      (coe du_'92''92''45'leftDivides_556 (coe v0))
      (coe du_'47''47''45'rightDivides_570 (coe v0))
-- Algebra.Properties.Group.quasigroup
d_quasigroup_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784
d_quasigroup_574 ~v0 ~v1 v2 = du_quasigroup_574 v2
du_quasigroup_574 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784
du_quasigroup_574 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4880
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (coe du_isQuasigroup_572 (coe v0))
-- Algebra.Properties.Group._.x≈z//y
d_x'8776'z'47''47'y_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'z'47''47'y_578 ~v0 ~v1 v2 = du_x'8776'z'47''47'y_578 v2
du_x'8776'z'47''47'y_578 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'z'47''47'y_578 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_280
      (coe du_quasigroup_574 (coe v0))
-- Algebra.Properties.Group._.y≈x\\z
d_y'8776'x'92''92'z_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8776'x'92''92'z_580 ~v0 ~v1 v2 = du_y'8776'x'92''92'z_580 v2
du_y'8776'x'92''92'z_580 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8776'x'92''92'z_580 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_264
      (coe du_quasigroup_574 (coe v0))
-- Algebra.Properties.Group._.cancel
d_cancel_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_582 ~v0 ~v1 v2 = du_cancel_582 v2
du_cancel_582 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_582 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel_310
      (coe du_quasigroup_574 (coe v0))
-- Algebra.Properties.Group._.cancelʳ
d_cancel'691'_584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_584 ~v0 ~v1 v2 = du_cancel'691'_584 v2
du_cancel'691'_584 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_584 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'691'_300
      (coe du_quasigroup_574 (coe v0))
-- Algebra.Properties.Group._.cancelˡ
d_cancel'737'_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_586 ~v0 ~v1 v2 = du_cancel'737'_586 v2
du_cancel'737'_586 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_586 v0
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'737'_290
      (coe du_quasigroup_574 (coe v0))
-- Algebra.Properties.Group.isLoop
d_isLoop_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_588 ~v0 ~v1 v2 = du_isLoop_588 v2
du_isLoop_588 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
du_isLoop_588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3476
      (coe du_isQuasigroup_572 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_726
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
-- Algebra.Properties.Group.loop
d_loop_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886
d_loop_590 ~v0 ~v1 v2 = du_loop_590 v2
du_loop_590 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886
du_loop_590 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4990
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0)))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
      (coe du_isLoop_588 (coe v0))
-- Algebra.Properties.Group._.identity-unique
d_identity'45'unique_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_594 ~v0 ~v1 v2 = du_identity'45'unique_594 v2
du_identity'45'unique_594 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_594 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Loop.du_identity'45'unique_328
      (coe du_loop_590 (coe v0))
-- Algebra.Properties.Group._.identityʳ-unique
d_identity'691''45'unique_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_596 ~v0 ~v1 v2
  = du_identity'691''45'unique_596 v2
du_identity'691''45'unique_596 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_596 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Loop.du_identity'691''45'unique_318
      (coe du_loop_590 (coe v0))
-- Algebra.Properties.Group._.identityˡ-unique
d_identity'737''45'unique_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_598 ~v0 ~v1 v2
  = du_identity'737''45'unique_598 v2
du_identity'737''45'unique_598 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_598 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Loop.du_identity'737''45'unique_306
      (coe du_loop_590 (coe v0))
-- Algebra.Properties.Group.inverseˡ-unique
d_inverse'737''45'unique_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_604 ~v0 ~v1 v2 v3 v4 v5
  = du_inverse'737''45'unique_604 v2 v3 v4 v5
du_inverse'737''45'unique_604 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_604 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      v1
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) (coe v2))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_280
         (coe du_quasigroup_574 (coe v0)) (coe v1) (coe v2)
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) (coe v3))
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_754
         (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
-- Algebra.Properties.Group.inverseʳ-unique
d_inverse'691''45'unique_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_616 ~v0 ~v1 v2 v3 v4 v5
  = du_inverse'691''45'unique_616 v2 v3 v4 v5
du_inverse'691''45'unique_616 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_616 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      v2
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
      (coe
         MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_264
         (coe du_quasigroup_574 (coe v0)) (coe v1) (coe v2)
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)) (coe v3))
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_756
         (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
-- Algebra.Properties.Group.ε⁻¹≈ε
d_ε'8315''185''8776'ε_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny
d_ε'8315''185''8776'ε_624 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_624 v2
du_ε'8315''185''8776'ε_624 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny
du_ε'8315''185''8776'ε_624 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
      (coe
         du_inverse'737''45'unique_604 (coe v0)
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_754
            (MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))
            (MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0))))
-- Algebra.Properties.Group.⁻¹-selfInverse
d_'8315''185''45'selfInverse_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'selfInverse_626 ~v0 ~v1 v2 v3 v4 v5
  = du_'8315''185''45'selfInverse_626 v2 v3 v4 v5
du_'8315''185''45'selfInverse_626 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'selfInverse_626 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
      (coe
         du_inverse'737''45'unique_604 (coe v0) (coe v1) (coe v2)
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
                                          (coe v0))))))))
                     (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
                     (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1) v2
                  v3))))
-- Algebra.Properties.Group.⁻¹-involutive
d_'8315''185''45'involutive_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny -> AgdaAny
d_'8315''185''45'involutive_634 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_634 v2
du_'8315''185''45'involutive_634 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 -> AgdaAny -> AgdaAny
du_'8315''185''45'involutive_634 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_selfInverse'8658'involutive_302
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
      (coe du_'8315''185''45'selfInverse_626 (coe v0))
-- Algebra.Properties.Group.x∙y⁻¹≈ε⇒x≈y
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_640 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_640 v2 v3 v4 v5
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_640 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_640 v0 v1 v2 v3
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe v2))
            (coe du_'8315''185''45'involutive_634 v0 v2))
         (coe
            du_inverse'737''45'unique_604 (coe v0) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
            (coe v3)))
-- Algebra.Properties.Group.x≈y⇒x∙y⁻¹≈ε
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_652 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_652 v2 v3 v4 v5
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_652 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_652 v0 v1 v2 v3
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe MAlonzo.Code.Algebra.Bundles.d_ε_1588 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
            (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2) v1 v2
            v3))
-- Algebra.Properties.Group.⁻¹-injective
d_'8315''185''45'injective_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_660 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'injective_660 v2 v3 v4
du_'8315''185''45'injective_660 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_660 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_selfInverse'8658'injective_318
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
      (coe du_'8315''185''45'selfInverse_626 (coe v0)) (coe v1) (coe v2)
-- Algebra.Properties.Group.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_666 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''8729'_666 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''8729'_666 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_666 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'737'_290
      (coe du_quasigroup_574 (coe v0))
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
                        MAlonzo.Code.Algebra.Structures.d_assoc_500
                        (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2)
                        (coe v2))
                     v1
                     (coe
                        du_'47''47''45'rightDivides'691'_564 (coe v0) (coe v2) (coe v1))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
                  (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)) v1))
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
               (MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v1 v2))))
-- Algebra.Properties.Group.⁻¹-anti-homo-//
d_'8315''185''45'anti'45'homo'45''47''47'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''47''47'_676 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''47''47'_676 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''47''47'_676 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''47''47'_676 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v2) (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
               v2 (coe du_'8315''185''45'involutive_634 v0 v2)))
         (coe
            du_'8315''185''45'anti'45'homo'45''8729'_666 (coe v0) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)))
-- Algebra.Properties.Group.⁻¹-anti-homo-\\
d_'8315''185''45'anti'45'homo'45''92''92'_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''92''92'_686 ~v0 ~v1 v2 v3 v4
  = du_'8315''185''45'anti'45'homo'45''92''92'_686 v2 v3 v4
du_'8315''185''45'anti'45'homo'45''92''92'_686 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''92''92'_686 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
         (coe
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
            (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
            MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
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
               MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v2) (coe v1)))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1))
               v1 (coe du_'8315''185''45'involutive_634 v0 v1)))
         (coe
            du_'8315''185''45'anti'45'homo'45''8729'_666 (coe v0)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v1)
            (coe v2)))
-- Algebra.Properties.Group.\\≗flip-//⇒comm
d_'92''92''8791'flip'45''47''47''8658'comm_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''8791'flip'45''47''47''8658'comm_696 ~v0 ~v1 v2 v3 v4 v5
  = du_'92''92''8791'flip'45''47''47''8658'comm_696 v2 v3 v4 v5
du_'92''92''8791'flip'45''47''47''8658'comm_696 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''8791'flip'45''47''47''8658'comm_696 v0 v1 v2 v3
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2 v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe
                        MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                        (coe v2) (coe v3))
                     v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
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
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMagma_498
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isGroup_1592
                                          (coe v0))))))))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3 v2))
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMagma_498
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                    (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                     v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                           (coe v2) (coe v3)))
                     v3
                     (coe
                        du_'92''92''45'leftDivides'737'_544 (coe v0) (coe v2) (coe v3))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_500
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  v2))
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
               v2
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                  (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v4 v2)
                  (\ v4 v5 -> v4)
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                  (\ v4 v5 -> v5)
                  (\ v4 -> coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v4 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2)))
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMagma_498
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v2) (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                     (coe v3) (coe v2))
                  (coe v1 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
            (MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0)))))))
            v2
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
                  (coe v3) (coe v2))
               v2)
            v3
            (coe
               du_'47''47''45'rightDivides'737'_558 (coe v0) (coe v2) (coe v3))))
-- Algebra.Properties.Group.comm⇒\\≗flip-//
d_comm'8658''92''92''8791'flip'45''47''47'_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8658''92''92''8791'flip'45''47''47'_708 ~v0 ~v1 v2 v3 v4 v5
  = du_comm'8658''92''92''8791'flip'45''47''47'_708 v2 v3 v4 v5
du_comm'8658''92''92''8791'flip'45''47''47'_708 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1564 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8658''92''92''8791'flip'45''47''47'_708 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Structures.du__'92''92'__1132
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
         (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
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
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMagma_498
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                              (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_1592 (coe v0))))))))
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1138
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__1586 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 (coe v0))
               (coe v3) (coe v2)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_1590 v0 v2)
            v3))
