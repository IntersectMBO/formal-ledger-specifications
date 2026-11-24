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

module MAlonzo.Code.Algebra.Properties.Ring where

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
import qualified MAlonzo.Code.Algebra.Properties.RingWithoutOne
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Ring._.cancel
d_cancel_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cancel_236 ~v0 ~v1 v2 = du_cancel_236 v2
du_cancel_236 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cancel_236 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel_310
               (coe
                  MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_574
                  (coe v3)))))
-- Algebra.Properties.Ring._.cancelʳ
d_cancel'691'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'691'_238 ~v0 ~v1 v2 = du_cancel'691'_238 v2
du_cancel'691'_238 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'691'_238 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'691'_300
               (coe
                  MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_574
                  (coe v3)))))
-- Algebra.Properties.Ring._.cancelˡ
d_cancel'737'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cancel'737'_240 ~v0 ~v1 v2 = du_cancel'737'_240 v2
du_cancel'737'_240 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cancel'737'_240 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.QQuasigroup.du_cancel'737'_290
               (coe
                  MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_574
                  (coe v3)))))
-- Algebra.Properties.Ring._.identity-unique
d_identity'45'unique_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_242 ~v0 ~v1 v2 = du_identity'45'unique_242 v2
du_identity'45'unique_242 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_242 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.Loop.du_identity'45'unique_328
               (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_590 (coe v3)))))
-- Algebra.Properties.Ring._.identityʳ-unique
d_identity'691''45'unique_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_244 ~v0 ~v1 v2
  = du_identity'691''45'unique_244 v2
du_identity'691''45'unique_244 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_244 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.Loop.du_identity'691''45'unique_318
               (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_590 (coe v3)))))
-- Algebra.Properties.Ring._.identityˡ-unique
d_identity'737''45'unique_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_246 ~v0 ~v1 v2
  = du_identity'737''45'unique_246 v2
du_identity'737''45'unique_246 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_246 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.Loop.du_identity'737''45'unique_306
               (coe MAlonzo.Code.Algebra.Properties.Group.du_loop_590 (coe v3)))))
-- Algebra.Properties.Ring._.inverseʳ-unique
d_inverse'691''45'unique_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_248 ~v0 ~v1 v2
  = du_inverse'691''45'unique_248 v2
du_inverse'691''45'unique_248 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_248 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_inverse'691''45'unique_616
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.inverseˡ-unique
d_inverse'737''45'unique_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_250 ~v0 ~v1 v2
  = du_inverse'737''45'unique_250 v2
du_inverse'737''45'unique_250 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_250 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_inverse'737''45'unique_604
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.ε⁻¹≈ε
d_ε'8315''185''8776'ε_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 -> AgdaAny
d_ε'8315''185''8776'ε_252 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_252 v2
du_ε'8315''185''8776'ε_252 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 -> AgdaAny
du_ε'8315''185''8776'ε_252 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_ε'8315''185''8776'ε_624
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.⁻¹-∙-comm
d_'8315''185''45''8729''45'comm_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45''8729''45'comm_254 ~v0 ~v1 v2
  = du_'8315''185''45''8729''45'comm_254 v2
du_'8315''185''45''8729''45'comm_254 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45''8729''45'comm_254 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_244
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
            (coe v1)))
-- Algebra.Properties.Ring._.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_256 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''8729'_256 v2
du_'8315''185''45'anti'45'homo'45''8729'_256 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_256 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_666
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.-‿distribʳ-*
d_'45''8255'distrib'691''45''42'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'691''45''42'_258 ~v0 ~v1 v2
  = du_'45''8255'distrib'691''45''42'_258 v2
du_'45''8255'distrib'691''45''42'_258 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'691''45''42'_258 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'691''45''42'_278
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
-- Algebra.Properties.Ring._.-‿distribˡ-*
d_'45''8255'distrib'737''45''42'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'737''45''42'_260 ~v0 ~v1 v2
  = du_'45''8255'distrib'737''45''42'_260 v2
du_'45''8255'distrib'737''45''42'_260 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'737''45''42'_260 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_268
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
-- Algebra.Properties.Ring._.⁻¹-injective
d_'8315''185''45'injective_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_262 ~v0 ~v1 v2
  = du_'8315''185''45'injective_262 v2
du_'8315''185''45'injective_262 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_262 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'injective_660
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.⁻¹-involutive
d_'8315''185''45'involutive_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 -> AgdaAny -> AgdaAny
d_'8315''185''45'involutive_264 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_264 v2
du_'8315''185''45'involutive_264 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 -> AgdaAny -> AgdaAny
du_'8315''185''45'involutive_264 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'involutive_634
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.//-cong₂
d_'47''47''45'cong'8322'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'8322'_266 ~v0 ~v1 v2
  = du_'47''47''45'cong'8322'_266 v2
du_'47''47''45'cong'8322'_266 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'8322'_266 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'cong'8322'_538
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.//-rightDivides
d_'47''47''45'rightDivides_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'47''47''45'rightDivides_268 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides_268 v2
du_'47''47''45'rightDivides_268 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'47''47''45'rightDivides_268 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'rightDivides_570
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.//-rightDividesʳ
d_'47''47''45'rightDivides'691'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'691'_270 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides'691'_270 v2
du_'47''47''45'rightDivides'691'_270 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'691'_270 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'rightDivides'691'_564
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.//-rightDividesˡ
d_'47''47''45'rightDivides'737'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'rightDivides'737'_272 ~v0 ~v1 v2
  = du_'47''47''45'rightDivides'737'_272 v2
du_'47''47''45'rightDivides'737'_272 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'rightDivides'737'_272 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'47''47''45'rightDivides'737'_558
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.[-x][-y]≈xy
d_'91''45'x'93''91''45'y'93''8776'xy_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'91''45'x'93''91''45'y'93''8776'xy_274 ~v0 ~v1 v2
  = du_'91''45'x'93''91''45'y'93''8776'xy_274 v2
du_'91''45'x'93''91''45'y'93''8776'xy_274 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'91''45'x'93''91''45'y'93''8776'xy_274 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'91''45'x'93''91''45'y'93''8776'xy_288
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
-- Algebra.Properties.Ring._.[y-z]x≈yx-zx
d_'91'y'45'z'93'x'8776'yx'45'zx_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'y'45'z'93'x'8776'yx'45'zx_276 ~v0 ~v1 v2
  = du_'91'y'45'z'93'x'8776'yx'45'zx_276 v2
du_'91'y'45'z'93'x'8776'yx'45'zx_276 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'y'45'z'93'x'8776'yx'45'zx_276 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'91'y'45'z'93'x'8776'yx'45'zx_314
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
-- Algebra.Properties.Ring._.\\-cong₂
d_'92''92''45'cong'8322'_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'8322'_278 ~v0 ~v1 v2
  = du_'92''92''45'cong'8322'_278 v2
du_'92''92''45'cong'8322'_278 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'8322'_278 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'cong'8322'_532
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.\\-leftDivides
d_'92''92''45'leftDivides_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'92''92''45'leftDivides_280 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides_280 v2
du_'92''92''45'leftDivides_280 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'92''92''45'leftDivides_280 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'leftDivides_556
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.\\-leftDividesʳ
d_'92''92''45'leftDivides'691'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'691'_282 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides'691'_282 v2
du_'92''92''45'leftDivides'691'_282 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'691'_282 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'leftDivides'691'_550
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.\\-leftDividesˡ
d_'92''92''45'leftDivides'737'_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'leftDivides'737'_284 ~v0 ~v1 v2
  = du_'92''92''45'leftDivides'737'_284 v2
du_'92''92''45'leftDivides'737'_284 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'leftDivides'737'_284 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'92''92''45'leftDivides'737'_544
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.\\≗flip-//⇒comm
d_'92''92''8791'flip'45''47''47''8658'comm_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''8791'flip'45''47''47''8658'comm_286 ~v0 ~v1 v2
  = du_'92''92''8791'flip'45''47''47''8658'comm_286 v2
du_'92''92''8791'flip'45''47''47''8658'comm_286 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''8791'flip'45''47''47''8658'comm_286 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'92''92''8791'flip'45''47''47''8658'comm_696
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.comm⇒\\≗flip-//
d_comm'8658''92''92''8791'flip'45''47''47'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8658''92''92''8791'flip'45''47''47'_288 ~v0 ~v1 v2
  = du_comm'8658''92''92''8791'flip'45''47''47'_288 v2
du_comm'8658''92''92''8791'flip'45''47''47'_288 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8658''92''92''8791'flip'45''47''47'_288 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_comm'8658''92''92''8791'flip'45''47''47'_708
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.isLoop
d_isLoop_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
d_isLoop_290 ~v0 ~v1 v2 = du_isLoop_290 v2
du_isLoop_290 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_3406
du_isLoop_290 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_isLoop_588
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.isQuasigroup
d_isQuasigroup_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
d_isQuasigroup_292 ~v0 ~v1 v2 = du_isQuasigroup_292 v2
du_isQuasigroup_292 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_3322
du_isQuasigroup_292 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_isQuasigroup_572
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.loop
d_loop_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886
d_loop_294 ~v0 ~v1 v2 = du_loop_294 v2
du_loop_294 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Loop_4886
du_loop_294 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_loop_590
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.quasigroup
d_quasigroup_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784
d_quasigroup_296 ~v0 ~v1 v2 = du_quasigroup_296 v2
du_quasigroup_296 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  MAlonzo.Code.Algebra.Bundles.T_Quasigroup_4784
du_quasigroup_296 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_574
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.x+x≈x⇒x≈0
d_x'43'x'8776'x'8658'x'8776'0_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'43'x'8776'x'8658'x'8776'0_298 ~v0 ~v1 v2
  = du_x'43'x'8776'x'8658'x'8776'0_298 v2
du_x'43'x'8776'x'8658'x'8776'0_298 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'43'x'8776'x'8658'x'8776'0_298 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_x'43'x'8776'x'8658'x'8776'0_258
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
-- Algebra.Properties.Ring._.x[y-z]≈xy-xz
d_x'91'y'45'z'93''8776'xy'45'xz_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'91'y'45'z'93''8776'xy'45'xz_300 ~v0 ~v1 v2
  = du_x'91'y'45'z'93''8776'xy'45'xz_300 v2
du_x'91'y'45'z'93''8776'xy'45'xz_300 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'91'y'45'z'93''8776'xy'45'xz_300 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_x'91'y'45'z'93''8776'xy'45'xz_300
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
-- Algebra.Properties.Ring._.xyx⁻¹≈y
d_xyx'8315''185''8776'y_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xyx'8315''185''8776'y_302 ~v0 ~v1 v2
  = du_xyx'8315''185''8776'y_302 v2
du_xyx'8315''185''8776'y_302 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_xyx'8315''185''8776'y_302 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.AbelianGroup.du_xyx'8315''185''8776'y_234
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
            (coe v1)))
-- Algebra.Properties.Ring._.x∙y⁻¹≈ε⇒x≈y
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'y'8315''185''8776'ε'8658'x'8776'y_304 ~v0 ~v1 v2
  = du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_304 v2
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_304 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_304 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_x'8729'y'8315''185''8776'ε'8658'x'8776'y_640
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.x≈y⇒x∙y⁻¹≈ε
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'y'8658'x'8729'y'8315''185''8776'ε_306 ~v0 ~v1 v2
  = du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_306 v2
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_306 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_306 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_x'8776'y'8658'x'8729'y'8315''185''8776'ε_652
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.x≈z//y
d_x'8776'z'47''47'y_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8776'z'47''47'y_308 ~v0 ~v1 v2 = du_x'8776'z'47''47'y_308 v2
du_x'8776'z'47''47'y_308 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8776'z'47''47'y_308 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.QQuasigroup.du_x'8776'z'47''47'y_280
               (coe
                  MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_574
                  (coe v3)))))
-- Algebra.Properties.Ring._.y≈x\\z
d_y'8776'x'92''92'z_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8776'x'92''92'z_310 ~v0 ~v1 v2 = du_y'8776'x'92''92'z_310 v2
du_y'8776'x'92''92'z_310 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8776'x'92''92'z_310 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Properties.QQuasigroup.du_y'8776'x'92''92'z_264
               (coe
                  MAlonzo.Code.Algebra.Properties.Group.du_quasigroup_574
                  (coe v3)))))
-- Algebra.Properties.Ring._.⁻¹-anti-homo-//
d_'8315''185''45'anti'45'homo'45''47''47'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''47''47'_312 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''47''47'_312 v2
du_'8315''185''45'anti'45'homo'45''47''47'_312 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''47''47'_312 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''47''47'_676
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.⁻¹-anti-homo-\\
d_'8315''185''45'anti'45'homo'45''92''92'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''92''92'_314 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''92''92'_314 v2
du_'8315''185''45'anti'45'homo'45''92''92'_314 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''92''92'_314 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''92''92'_686
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring._.⁻¹-anti-homo‿-
d_'8315''185''45'anti'45'homo'8255''45'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'8255''45'_316 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'8255''45'_316 v2
du_'8315''185''45'anti'45'homo'8255''45'_316 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'8255''45'_316 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45'anti'45'homo'8255''45'_228
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
            (coe v1)))
-- Algebra.Properties.Ring._.⁻¹-selfInverse
d_'8315''185''45'selfInverse_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'selfInverse_318 ~v0 ~v1 v2
  = du_'8315''185''45'selfInverse_318 v2
du_'8315''185''45'selfInverse_318 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'selfInverse_318 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3758
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'selfInverse_626
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1778 (coe v2))))
-- Algebra.Properties.Ring.-1*x≈-x
d_'45'1'42'x'8776''45'x_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 -> AgdaAny -> AgdaAny
d_'45'1'42'x'8776''45'x_322 ~v0 ~v1 v2 v3
  = du_'45'1'42'x'8776''45'x_322 v2 v3
du_'45'1'42'x'8776''45'x_322 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_4096 -> AgdaAny -> AgdaAny
du_'45'1'42'x'8776''45'x_322 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__4124 v0
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0
            (MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0)))
         v1)
      (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0 v1)
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
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                                 (coe MAlonzo.Code.Algebra.Bundles.d_isRing_4132 (coe v0))))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                              (coe MAlonzo.Code.Algebra.Bundles.d_isRing_4132 (coe v0)))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'42'__4124 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0
               (MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0)))
            v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__4124 v0
               (MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0)) v1))
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0 v1)
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
                                 MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isRing_4132 (coe v0))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__4124 v0
                  (MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0)) v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0 v1)
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
                                    MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isRing_4132
                                          (coe v0))))))))))
               (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094
               (MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
                     (coe MAlonzo.Code.Algebra.Bundles.d_isRing_4132 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__4124 v0
                  (MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0)) v1)
               v1
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2988
                     (coe MAlonzo.Code.Algebra.Bundles.d__'43'__4122 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'42'__4124 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'45'__4126 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d_0'35'_4128 (coe v0))
                     (coe MAlonzo.Code.Algebra.Bundles.d_isRing_4132 (coe v0)))
                  v1)))
         (coe
            MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_268
            (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_4246 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_4130 (coe v0)) (coe v1)))
