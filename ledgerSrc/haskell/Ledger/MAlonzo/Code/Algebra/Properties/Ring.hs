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
import qualified MAlonzo.Code.Algebra.Properties.RingWithoutOne
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Ring._.∙-cancel
d_'8729''45'cancel_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8729''45'cancel_360 ~v0 ~v1 v2 = du_'8729''45'cancel_360 v2
du_'8729''45'cancel_360 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8729''45'cancel_360 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel_312
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.∙-cancelʳ
d_'8729''45'cancel'691'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'691'_362 ~v0 ~v1 v2
  = du_'8729''45'cancel'691'_362 v2
du_'8729''45'cancel'691'_362 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'691'_362 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'691'_302
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.∙-cancelˡ
d_'8729''45'cancel'737'_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cancel'737'_364 ~v0 ~v1 v2
  = du_'8729''45'cancel'737'_364 v2
du_'8729''45'cancel'737'_364 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cancel'737'_364 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8729''45'cancel'737'_292
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.identity-unique
d_identity'45'unique_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_identity'45'unique_366 ~v0 ~v1 v2 = du_identity'45'unique_366 v2
du_identity'45'unique_366 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_identity'45'unique_366 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_identity'45'unique_368
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.identityʳ-unique
d_identity'691''45'unique_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'691''45'unique_368 ~v0 ~v1 v2
  = du_identity'691''45'unique_368 v2
du_identity'691''45'unique_368 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'691''45'unique_368 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_identity'691''45'unique_358
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.identityˡ-unique
d_identity'737''45'unique_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identity'737''45'unique_370 ~v0 ~v1 v2
  = du_identity'737''45'unique_370 v2
du_identity'737''45'unique_370 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_identity'737''45'unique_370 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_identity'737''45'unique_346
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.inverseʳ-unique
d_inverse'691''45'unique_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'691''45'unique_372 ~v0 ~v1 v2
  = du_inverse'691''45'unique_372 v2
du_inverse'691''45'unique_372 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'691''45'unique_372 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_inverse'691''45'unique_390
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.inverseˡ-unique
d_inverse'737''45'unique_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_inverse'737''45'unique_374 ~v0 ~v1 v2
  = du_inverse'737''45'unique_374 v2
du_inverse'737''45'unique_374 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_inverse'737''45'unique_374 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_inverse'737''45'unique_378
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.ε⁻¹≈ε
d_ε'8315''185''8776'ε_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 -> AgdaAny
d_ε'8315''185''8776'ε_376 ~v0 ~v1 v2
  = du_ε'8315''185''8776'ε_376 v2
du_ε'8315''185''8776'ε_376 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 -> AgdaAny
du_ε'8315''185''8776'ε_376 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_ε'8315''185''8776'ε_270
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.⁻¹-∙-comm
d_'8315''185''45''8729''45'comm_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45''8729''45'comm_378 ~v0 ~v1 v2
  = du_'8315''185''45''8729''45'comm_378 v2
du_'8315''185''45''8729''45'comm_378 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45''8729''45'comm_378 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.AbelianGroup.du_'8315''185''45''8729''45'comm_196
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
            (coe v1)))
-- Algebra.Properties.Ring._.⁻¹-anti-homo-∙
d_'8315''185''45'anti'45'homo'45''8729'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'anti'45'homo'45''8729'_380 ~v0 ~v1 v2
  = du_'8315''185''45'anti'45'homo'45''8729'_380 v2
du_'8315''185''45'anti'45'homo'45''8729'_380 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'anti'45'homo'45''8729'_380 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'anti'45'homo'45''8729'_336
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.-‿distribʳ-*
d_'45''8255'distrib'691''45''42'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'691''45''42'_382 ~v0 ~v1 v2
  = du_'45''8255'distrib'691''45''42'_382 v2
du_'45''8255'distrib'691''45''42'_382 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'691''45''42'_382 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'691''45''42'_216
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0))
-- Algebra.Properties.Ring._.-‿distribˡ-*
d_'45''8255'distrib'737''45''42'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'45''8255'distrib'737''45''42'_384 ~v0 ~v1 v2
  = du_'45''8255'distrib'737''45''42'_384 v2
du_'45''8255'distrib'737''45''42'_384 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'45''8255'distrib'737''45''42'_384 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_206
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0))
-- Algebra.Properties.Ring._.⁻¹-injective
d_'8315''185''45'injective_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'injective_386 ~v0 ~v1 v2
  = du_'8315''185''45'injective_386 v2
du_'8315''185''45'injective_386 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'injective_386 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'injective_324
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.⁻¹-involutive
d_'8315''185''45'involutive_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 -> AgdaAny -> AgdaAny
d_'8315''185''45'involutive_388 ~v0 ~v1 v2
  = du_'8315''185''45'involutive_388 v2
du_'8315''185''45'involutive_388 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 -> AgdaAny -> AgdaAny
du_'8315''185''45'involutive_388 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Properties.Group.du_'8315''185''45'involutive_316
            (coe MAlonzo.Code.Algebra.Bundles.du_group_1474 (coe v2))))
-- Algebra.Properties.Ring._.[y-z]x≈yx-zx
d_'91'y'45'z'93'x'8776'yx'45'zx_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'91'y'45'z'93'x'8776'yx'45'zx_390 ~v0 ~v1 v2
  = du_'91'y'45'z'93'x'8776'yx'45'zx_390 v2
du_'91'y'45'z'93'x'8776'yx'45'zx_390 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'91'y'45'z'93'x'8776'yx'45'zx_390 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'91'y'45'z'93'x'8776'yx'45'zx_250
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0))
-- Algebra.Properties.Ring._.x+x≈x⇒x≈0
d_x'43'x'8776'x'8658'x'8776'0_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'43'x'8776'x'8658'x'8776'0_392 ~v0 ~v1 v2
  = du_x'43'x'8776'x'8658'x'8776'0_392 v2
du_x'43'x'8776'x'8658'x'8776'0_392 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'43'x'8776'x'8658'x'8776'0_392 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_x'43'x'8776'x'8658'x'8776'0_224
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0))
-- Algebra.Properties.Ring._.x[y-z]≈xy-xz
d_x'91'y'45'z'93''8776'xy'45'xz_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'91'y'45'z'93''8776'xy'45'xz_394 ~v0 ~v1 v2
  = du_x'91'y'45'z'93''8776'xy'45'xz_394 v2
du_x'91'y'45'z'93''8776'xy'45'xz_394 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'91'y'45'z'93''8776'xy'45'xz_394 v0
  = coe
      MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_x'91'y'45'z'93''8776'xy'45'xz_236
      (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0))
-- Algebra.Properties.Ring._.xyx⁻¹≈y
d_xyx'8315''185''8776'y_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_xyx'8315''185''8776'y_396 ~v0 ~v1 v2
  = du_xyx'8315''185''8776'y_396 v2
du_xyx'8315''185''8776'y_396 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_xyx'8315''185''8776'y_396 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Properties.AbelianGroup.du_xyx'8315''185''8776'y_186
         (coe
            MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_3184
            (coe v1)))
-- Algebra.Properties.Ring.-1*x≈-x
d_'45'1'42'x'8776''45'x_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 -> AgdaAny -> AgdaAny
d_'45'1'42'x'8776''45'x_400 ~v0 ~v1 v2 v3
  = du_'45'1'42'x'8776''45'x_400 v2 v3
du_'45'1'42'x'8776''45'x_400 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514 -> AgdaAny -> AgdaAny
du_'45'1'42'x'8776''45'x_400 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'42'__3542 v0
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0
            (MAlonzo.Code.Algebra.Bundles.d_1'35'_3548 (coe v0)))
         v1)
      (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0 v1)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2 = MAlonzo.Code.Algebra.Bundles.d_isRing_3550 (coe v0) in
                   coe
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
                                (coe v2) in
                      coe
                        (let v4
                               = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                                   (coe v3) in
                         coe
                           (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
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
                                          (coe v7))))))))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2 = MAlonzo.Code.Algebra.Bundles.d_isRing_3550 (coe v0) in
                coe
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
                             (coe v2) in
                   coe
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                                (coe v3) in
                      coe
                        (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
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
                                       (coe v7)))))))))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'42'__3542 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0
               (MAlonzo.Code.Algebra.Bundles.d_1'35'_3548 (coe v0)))
            v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'42'__3542 v0
               (MAlonzo.Code.Algebra.Bundles.d_1'35'_3548 (coe v0)) v1))
         (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0 v1)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2 = MAlonzo.Code.Algebra.Bundles.d_isRing_3550 (coe v0) in
                      coe
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
                                   (coe v2) in
                         coe
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                                      (coe v3) in
                            coe
                              (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
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
                                             (coe v7))))))))))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'42'__3542 v0
                  (MAlonzo.Code.Algebra.Bundles.d_1'35'_3548 (coe v0)) v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0 v1)
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2 = MAlonzo.Code.Algebra.Bundles.d_isRing_3550 (coe v0) in
                           coe
                             (let v3
                                    = coe
                                        MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
                                        (coe v2) in
                              coe
                                (let v4
                                       = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                                           (coe v3) in
                                 coe
                                   (let v5
                                          = MAlonzo.Code.Algebra.Structures.d_isGroup_992
                                              (coe v4) in
                                    coe
                                      (let v6
                                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                                                 (coe v5) in
                                       coe
                                         (let v7
                                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                                                    (coe v6) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.du_setoid_168
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                                                  (coe v7)))))))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'45'__3544 v0 v1)))
            (let v2 = MAlonzo.Code.Algebra.Bundles.d_isRing_3550 (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
                  (MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                        (coe v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'42'__3542 v0
                     (MAlonzo.Code.Algebra.Bundles.d_1'35'_3548 (coe v0)) v1)
                  v1
                  (let v3 = MAlonzo.Code.Algebra.Bundles.d_isRing_3550 (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2596 (coe v3))
                        v1)))))
         (coe
            MAlonzo.Code.Algebra.Properties.RingWithoutOne.du_'45''8255'distrib'737''45''42'_206
            (coe MAlonzo.Code.Algebra.Bundles.du_ringWithoutOne_3664 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d_1'35'_3548 (coe v0)) (coe v1)))
