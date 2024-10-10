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

module MAlonzo.Code.Algebra.Properties.RingWithoutOne where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Properties.Loop
import qualified MAlonzo.Code.Algebra.Properties.QQuasigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.RingWithoutOne._._//_
d__'47''47'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__18 ~v0 ~v1 v2 = du__'47''47'__18 v2
du__'47''47'__18 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__18 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v1)
            (coe v2)))
-- Algebra.Properties.RingWithoutOne._.cancel
d_cancel_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_174 ~v0 ~v1 v2 = du_cancel_174 v2
du_cancel_174 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_174 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel_276
            (coe
               MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_558 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.cancelʳ
d_cancel'691'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_176 ~v0 ~v1 v2 = du_cancel'691'_176 v2
du_cancel'691'_176 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_176 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'691'_266
            (coe
               MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_558 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.cancelˡ
d_cancel'737'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_178 ~v0 ~v1 v2 = du_cancel'737'_178 v2
du_cancel'737'_178 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_178 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'737'_256
            (coe
               MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_558 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.identity-unique
d_identity'45'unique_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_180 ~v0 ~v1 v2 = du_identity'45'unique_180 v2
du_identity'45'unique_180 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_180 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Loop.du_identity'45'unique_326
            (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_574 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.identityʳ-unique
d_identity'691''45'unique_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_182 ~v0 ~v1 v2
  = du_identity'691''45'unique_182 v2
du_identity'691''45'unique_182 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_182 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Loop.du_identity'691''45'unique_316
            (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_574 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.identityˡ-unique
d_identity'737''45'unique_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_184 ~v0 ~v1 v2
  = du_identity'737''45'unique_184 v2
du_identity'737''45'unique_184 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_184 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Loop.du_identity'737''45'unique_304
            (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_574 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.inverseʳ-unique
d_inverse'691''45'unique_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_186 ~v0 ~v1 v2
  = du_inverse'691''45'unique_186 v2
du_inverse'691''45'unique_186 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_186 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_inverse'691''45'unique_600
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.inverseˡ-unique
d_inverse'737''45'unique_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_188 ~v0 ~v1 v2
  = du_inverse'737''45'unique_188 v2
du_inverse'737''45'unique_188 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_188 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_inverse'737''45'unique_588
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.ε⁻¹≈ε
d_ε'8315''185''8776'ε_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 -> AgdaAny
d_ε'8315''185''8776'ε_190 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_190 v2
du_ε'8315''185''8776'ε_190 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 -> AgdaAny
du_ε'8315''185''8776'ε_190 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_ε'8315''185''8776'ε_608
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.⁻¹-∙-comm
d_'8315''185''45''8729''45'comm_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45''8729''45'comm_192 ~v0 ~v1 v2
  = du_'8315''185''45''8729''45'comm_192 v2
du_'8315''185''45''8729''45'comm_192 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45''8729''45'comm_192 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_244
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470 (coe v0))
-- Algebra.Properties.RingWithoutOne._.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_194 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''8729'_194 v2
du_'8315''185''45'anti'45'homo'45''8729'_194 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_194 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_650
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.⁻¹-injective
d_'8315''185''45'injective_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_196 ~v0 ~v1 v2
  = du_'8315''185''45'injective_196 v2
du_'8315''185''45'injective_196 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_196 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'injective_644
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.⁻¹-involutive
d_'8315''185''45'involutive_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny
d_'8315''185''45'involutive_198 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_198 v2
du_'8315''185''45'involutive_198 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny
du_'8315''185''45'involutive_198 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'involutive_618
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.//-cong₂
d_'47''47''45'cong'8322'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'8322'_200 ~v0 ~v1 v2
  = du_'47''47''45'cong'8322'_200 v2
du_'47''47''45'cong'8322'_200 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'8322'_200 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'cong'8322'_522
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.//-rightDivides
d_'47''47''45'rightDivides_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'47''47''45'rightDivides_202 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides_202 v2
du_'47''47''45'rightDivides_202 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'47''47''45'rightDivides_202 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'rightDivides_554
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.//-rightDividesʳ
d_'47''47''45'rightDivides'691'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'691'_204 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides'691'_204 v2
du_'47''47''45'rightDivides'691'_204 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'691'_204 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'rightDivides'691'_548
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.//-rightDividesˡ
d_'47''47''45'rightDivides'737'_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'737'_206 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides'737'_206 v2
du_'47''47''45'rightDivides'737'_206 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'737'_206 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'rightDivides'737'_542
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.\\-cong₂
d_'92''92''45'cong'8322'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'8322'_208 ~v0 ~v1 v2
  = du_'92''92''45'cong'8322'_208 v2
du_'92''92''45'cong'8322'_208 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'8322'_208 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'cong'8322'_516
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.\\-leftDivides
d_'92''92''45'leftDivides_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'92''92''45'leftDivides_210 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides_210 v2
du_'92''92''45'leftDivides_210 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'92''92''45'leftDivides_210 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'leftDivides_540
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.\\-leftDividesʳ
d_'92''92''45'leftDivides'691'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'691'_212 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides'691'_212 v2
du_'92''92''45'leftDivides'691'_212 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'691'_212 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'leftDivides'691'_534
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.\\-leftDividesˡ
d_'92''92''45'leftDivides'737'_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'737'_214 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides'737'_214 v2
du_'92''92''45'leftDivides'737'_214 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'737'_214 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'leftDivides'737'_528
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.\\≗flip-//⇒comm
d_'92''92''8791'flip'45''47''47''8658'comm_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''8791'flip'45''47''47''8658'comm_216 ~v0 ~v1 v2
  = du_'92''92''8791'flip'45''47''47''8658'comm_216 v2
du_'92''92''8791'flip'45''47''47''8658'comm_216 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''8791'flip'45''47''47''8658'comm_216 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'92''92''8791'flip'45''47''47''8658'comm_680
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.comm⇒\\≗flip-//
d_comm'8658''92''92''8791'flip'45''47''47'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8658''92''92''8791'flip'45''47''47'_218 ~v0 ~v1 v2
  = du_comm'8658''92''92''8791'flip'45''47''47'_218 v2
du_comm'8658''92''92''8791'flip'45''47''47'_218 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8658''92''92''8791'flip'45''47''47'_218 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_comm'8658''92''92''8791'flip'45''47''47'_692
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.isLoop
d_isLoop_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3026
d_isLoop_220 ~v0 ~v1 v2 = du_isLoop_220 v2
du_isLoop_220 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3026
du_isLoop_220 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_isLoop_572
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.isQuasigroup
d_isQuasigroup_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2944
d_isQuasigroup_222 ~v0 ~v1 v2 = du_isQuasigroup_222 v2
du_isQuasigroup_222 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2944
du_isQuasigroup_222 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_isQuasigroup_556
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.loop
d_loop_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4346
d_loop_224 ~v0 ~v1 v2 = du_loop_224 v2
du_loop_224 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4346
du_loop_224 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_loop_574
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.quasigroup
d_quasigroup_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4246
d_quasigroup_226 ~v0 ~v1 v2 = du_quasigroup_226 v2
du_quasigroup_226 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4246
du_quasigroup_226 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_558
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.xyx⁻¹≈y
d_xyx'8315''185''8776'y_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xyx'8315''185''8776'y_228 ~v0 ~v1 v2
  = du_xyx'8315''185''8776'y_228 v2
du_xyx'8315''185''8776'y_228 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_xyx'8315''185''8776'y_228 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du_xyx'8315''185''8776'y_234
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470 (coe v0))
-- Algebra.Properties.RingWithoutOne._.x∙y⁻¹≈ε⇒x≈y
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_230 ~v0 ~v1 v2
  = du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_230 v2
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_230 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_230 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_624
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.x≈y⇒x∙y⁻¹≈ε
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_232 ~v0 ~v1 v2
  = du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_232 v2
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_232 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_232 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_636
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.x≈z//y
d_x'8776'z'47''47'y_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'z'47''47'y_234 ~v0 ~v1 v2 = du_x'8776'z'47''47'y_234 v2
du_x'8776'z'47''47'y_234 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'z'47''47'y_234 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_300
            (coe
               MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_558 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.y≈x\\z
d_y'8776'x'92''92'z_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8776'x'92''92'z_236 ~v0 ~v1 v2 = du_y'8776'x'92''92'z_236 v2
du_y'8776'x'92''92'z_236 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8776'x'92''92'z_236 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (let v2
             = coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_284
            (coe
               MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_558 (coe v2))))
-- Algebra.Properties.RingWithoutOne._.⁻¹-anti-homo-//
d_'8315''185''45'anti'45'homo'45''47''47'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''47''47'_238 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''47''47'_238 v2
du_'8315''185''45'anti'45'homo'45''47''47'_238 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''47''47'_238 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''47''47'_660
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.⁻¹-anti-homo-\\
d_'8315''185''45'anti'45'homo'45''92''92'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''92''92'_240 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''92''92'_240 v2
du_'8315''185''45'anti'45'homo'45''92''92'_240 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''92''92'_240 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''92''92'_670
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne._.⁻¹-anti-homo‿-
d_'8315''185''45'anti'45'homo'8255''45'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'8255''45'_242 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'8255''45'_242 v2
du_'8315''185''45'anti'45'homo'8255''45'_242 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'8255''45'_242 v0
  = coe
      MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45'anti'45'homo'8255''45'_228
      (coe
         MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470 (coe v0))
-- Algebra.Properties.RingWithoutOne._.⁻¹-selfInverse
d_'8315''185''45'selfInverse_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'selfInverse_244 ~v0 ~v1 v2
  = du_'8315''185''45'selfInverse_244 v2
du_'8315''185''45'selfInverse_244 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'selfInverse_244 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'selfInverse_610
         (coe MAlonzo.Code.Algebra.Bundles.du_group_1732 (coe v1)))
-- Algebra.Properties.RingWithoutOne.-‿distribˡ-*
d_'45''8255'distrib'737''45''42'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'737''45''42'_250 ~v0 ~v1 v2 v3 v4
  = du_'45''8255'distrib'737''45''42'_250 v2 v3 v4
du_'45''8255'distrib'737''45''42'_250 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'737''45''42'_250 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                           (coe v0))))))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v6) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                          (coe v7)))))))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                   coe
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                (coe v3) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                       (coe v7))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
               (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                      (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                            (coe v5) in
                                  coe
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                               (coe v6) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                             (coe v7)))))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v6) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                          (coe v7))))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                         (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                               (coe v5) in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_200
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                (coe v7)))))))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                      (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                            (coe v5) in
                                  coe
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                               (coe v6) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                             (coe v7))))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0) in
                               coe
                                 (let v4
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                            (coe v3) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                               (coe v4) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                  (coe v5) in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                     (coe v6) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                   (coe v7)))))))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                         (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                               (coe v5) in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_200
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                (coe v7))))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v1)
                           v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v3
                                        = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                            (coe v0) in
                                  coe
                                    (let v4
                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                               (coe v3) in
                                     coe
                                       (let v5
                                              = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                  (coe v4) in
                                        coe
                                          (let v6
                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                     (coe v5) in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                      (coe v7)))))))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v1)
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)) v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v3
                                           = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                               (coe v0) in
                                     coe
                                       (let v4
                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                  (coe v3) in
                                        coe
                                          (let v5
                                                 = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                     (coe v4) in
                                           coe
                                             (let v6
                                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                        (coe v5) in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                         (coe v7)))))))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)) v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v3
                                              = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                  (coe v0) in
                                        coe
                                          (let v4
                                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                     (coe v3) in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                        (coe v4) in
                                              coe
                                                (let v6
                                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                           (coe v5) in
                                                 coe
                                                   (let v7
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                              (coe v6) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                            (coe v7)))))))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (let v3
                                     = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (let v3
                                                   = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                       (coe v0) in
                                             coe
                                               (let v4
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                          (coe v3) in
                                                coe
                                                  (let v5
                                                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                             (coe v4) in
                                                   coe
                                                     (let v6
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                                (coe v5) in
                                                      coe
                                                        (let v7
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                   (coe v6) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                 (coe v7))))))))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))))
                              (let v3
                                     = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0) in
                               coe
                                 (let v4
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                            (coe v3) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                               (coe v4) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                                          (MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                                v2)))))))
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0)) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                            (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                               (coe v5) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                                v2))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                             (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                             v2)
                                          (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_zero'737'_2382
                                             (MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d__'42'__3370 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                (coe v0))
                                             v2)))))))
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                      (coe v0)) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v5) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                                       (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v7 v2)
                                          (\ v7 v8 -> v7)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1)
                                             v1)
                                          (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v7 v8 -> v8)
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v7 v2)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1)
                                             v1)
                                          (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                                       (let v7
                                              = coe
                                                  MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2390
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                (coe v7))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1)
                                                v1)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                             (let v8
                                                    = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                        (coe v0) in
                                              coe
                                                (let v9
                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                           (coe v8) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.du_inverse'737'_1106
                                                      (MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                         (coe v9))
                                                      v1)))))))))))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0)) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                                    (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v1)
                                       v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_distrib'691'_2380
                                       (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                          (coe v0))
                                       v2 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1)
                                       v1)))))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_482
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0)) in
                coe
                  (let v4
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)))
                              (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                              (let v7
                                     = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                            (coe v7) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
                                       (MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v8))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                          v2))))))))))
            (let v3
                   = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
             coe
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                          (coe v3) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                        (MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v1) v2)))))))
-- Algebra.Properties.RingWithoutOne.-‿distribʳ-*
d_'45''8255'distrib'691''45''42'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'691''45''42'_260 ~v0 ~v1 v2 v3 v4
  = du_'45''8255'distrib'691''45''42'_260 v2 v3 v4
du_'45''8255'distrib'691''45''42'_260 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'691''45''42'_260 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                           (coe v0))))))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v6) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                          (coe v7)))))))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                   coe
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                (coe v3) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                       (coe v7))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
               (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                      (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                            (coe v5) in
                                  coe
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                               (coe v6) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_setoid_200
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                             (coe v7)))))))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v6) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                          (coe v7))))))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                  (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                         (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                               (coe v5) in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_200
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                (coe v7)))))))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0) in
                               coe
                                 (let v4
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                            (coe v3) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                               (coe v4) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                  (coe v5) in
                                        coe
                                          (let v7
                                                 = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                     (coe v6) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                   (coe v7)))))))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                         (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                               (coe v5) in
                                     coe
                                       (let v7
                                              = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                  (coe v6) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_setoid_200
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                (coe v7))))))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v3
                                        = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                            (coe v0) in
                                  coe
                                    (let v4
                                           = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                               (coe v3) in
                                     coe
                                       (let v5
                                              = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                  (coe v4) in
                                        coe
                                          (let v6
                                                 = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                     (coe v5) in
                                           coe
                                             (let v7
                                                    = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                        (coe v6) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                      (coe v7)))))))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v3
                                           = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                               (coe v0) in
                                     coe
                                       (let v4
                                              = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                  (coe v3) in
                                        coe
                                          (let v5
                                                 = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                     (coe v4) in
                                           coe
                                             (let v6
                                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                        (coe v5) in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                         (coe v7)))))))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v3
                                              = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                  (coe v0) in
                                        coe
                                          (let v4
                                                 = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                     (coe v3) in
                                           coe
                                             (let v5
                                                    = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                        (coe v4) in
                                              coe
                                                (let v6
                                                       = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                           (coe v5) in
                                                 coe
                                                   (let v7
                                                          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                              (coe v6) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                            (coe v7)))))))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                 (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (let v3
                                     = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (let v3
                                                   = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                       (coe v0) in
                                             coe
                                               (let v4
                                                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                          (coe v3) in
                                                coe
                                                  (let v5
                                                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                             (coe v4) in
                                                   coe
                                                     (let v6
                                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                                                (coe v5) in
                                                      coe
                                                        (let v7
                                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                                   (coe v6) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                                 (coe v7))))))))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))))
                              (let v3
                                     = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0) in
                               coe
                                 (let v4
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                            (coe v3) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                               (coe v4) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_identity'691'_728
                                          (MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                                v2)))))))
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0)) in
                            coe
                              (let v4
                                     = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                            (coe v4) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                               (coe v5) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                                v2))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                             (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                                          (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_zero'691'_2384
                                             (MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d__'42'__3370 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                             (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                (coe v0))
                                             v1)))))))
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                      (coe v0)) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v5) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                       (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                          (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1)
                                          (\ v7 v8 -> v7)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0 v2
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
                                          (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v7 v8 -> v8)
                                          (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0 v2
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
                                          (MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0)))
                                       (let v7
                                              = coe
                                                  MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2390
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                (coe v7))
                                             (coe v1)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0 v2
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                                             (let v8
                                                    = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                        (coe v0) in
                                              coe
                                                (let v9
                                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                           (coe v8) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
                                                      (MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                         (coe v9))
                                                      v2)))))))))))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0)) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                         coe
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                    (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_distrib'737'_2378
                                       (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                          (coe v0))
                                       v1 v2
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_assoc_482
                     (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0)) in
                coe
                  (let v4
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v4) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_3374 (coe v0))
                              (let v7
                                     = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                         (coe v0) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                            (coe v7) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_inverse'737'_1106
                                       (MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v8))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                          v2))))))))))
            (let v3
                   = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
             coe
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                          (coe v3) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                        (MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v2))))))))
-- Algebra.Properties.RingWithoutOne.x+x≈x⇒x≈0
d_x'43'x'8776'x'8658'x'8776'0_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'43'x'8776'x'8658'x'8776'0_268 ~v0 ~v1 v2 v3 v4
  = du_x'43'x'8776'x'8658'x'8776'0_268 v2 v3 v4
du_x'43'x'8776'x'8658'x'8776'0_268 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'43'x'8776'x'8658'x'8776'0_268 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.du_group_1732
              (coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3470
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.Loop.du_identity'737''45'unique_304
         (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_574 (coe v3))
         (coe v1) (coe v1) (coe v2))
-- Algebra.Properties.RingWithoutOne.x[y-z]≈xy-xz
d_x'91'y'45'z'93''8776'xy'45'xz_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'91'y'45'z'93''8776'xy'45'xz_280 ~v0 ~v1 v2 v3 v4 v5
  = du_x'91'y'45'z'93''8776'xy'45'xz_280 v2 v3 v4 v5
du_x'91'y'45'z'93''8776'xy'45'xz_280 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'91'y'45'z'93''8776'xy'45'xz_280 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
         (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
          coe
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                  (coe v5) (coe v2) (coe v3)))))
      (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
       coe
         (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
               (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                (coe v4) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                       (coe v8)))))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
            (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                     (coe v5) (coe v2) (coe v3)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3)))
         (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
          coe
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                  (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v7) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                          (coe v8)))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3)))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                     (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                     (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))))
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4
                                 = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                        (coe v4) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                                 coe
                                   (let v7
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                              (coe v6) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                 (coe v7) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.du_setoid_200
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                               (coe v8))))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
                   coe
                     (let v6 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v5)
                           (coe v6) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))))))
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                      (coe v0))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3))
                                 (coe
                                    du_'45''8255'distrib'691''45''42'_260 (coe v0) (coe v1)
                                    (coe v3))))))))))
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_2378
            (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0)) v1
            v2 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3)))
-- Algebra.Properties.RingWithoutOne.[y-z]x≈yx-zx
d_'91'y'45'z'93'x'8776'yx'45'zx_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'y'45'z'93'x'8776'yx'45'zx_294 ~v0 ~v1 v2 v3 v4 v5
  = du_'91'y'45'z'93'x'8776'yx'45'zx_294 v2 v3 v4 v5
du_'91'y'45'z'93'x'8776'yx'45'zx_294 ::
  MAlonzo.Code.Algebra.Bundles.T_RingWithoutOne_3344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'y'45'z'93'x'8776'yx'45'zx_294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
         (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
          coe
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                  (coe v5) (coe v2) (coe v3))))
         v1)
      (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
       coe
         (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
               (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                (coe v4) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.du_setoid_200
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                       (coe v8)))))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
            (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                     (coe v5) (coe v2) (coe v3))))
            v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3) v1))
         (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
          coe
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                  (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                      coe
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                   (coe v4) in
                         coe
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                            coe
                              (let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6) in
                               coe
                                 (let v8
                                        = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                            (coe v7) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.du_setoid_200
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                          (coe v8)))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'43'__3368 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3) v1))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                     (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))))
            (let v4 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v4)
                     (coe v5) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))))
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4
                                 = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
                           coe
                             (let v5
                                    = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                        (coe v4) in
                              coe
                                (let v6
                                       = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                                 coe
                                   (let v7
                                          = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                              (coe v6) in
                                    coe
                                      (let v8
                                             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                 (coe v7) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.du_setoid_200
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                               (coe v8))))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d__'43'__3368 (coe v0) in
                   coe
                     (let v6 = MAlonzo.Code.Algebra.Bundles.d_'45'__3372 (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v5)
                           (coe v6) (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))))))
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                          (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6) in
                      coe
                        (let v8
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8))
                              (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v2 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3) v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2304
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376
                                                      (coe v0))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0 v3 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'42'__3370 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3) v1)
                                 (coe
                                    du_'45''8255'distrib'737''45''42'_250 (coe v0) (coe v3)
                                    (coe v1))))))))))
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_2380
            (MAlonzo.Code.Algebra.Bundles.d_isRingWithoutOne_3376 (coe v0)) v1
            v2 (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3372 v0 v3)))
