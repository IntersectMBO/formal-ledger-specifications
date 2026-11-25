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

module MAlonzo.Code.Algebra.Properties.Monoid.Mult where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.Semigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Monoid.Mult._._IdempotentOn_
d__IdempotentOn__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d__IdempotentOn__82 = erased
-- Algebra.Properties.Monoid.Mult._._?>_∙_
d__'63''62'_'8729'__294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny -> AgdaAny
d__'63''62'_'8729'__294 ~v0 ~v1 v2 = du__'63''62'_'8729'__294 v2
du__'63''62'_'8729'__294 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny -> AgdaAny
du__'63''62'_'8729'__294 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62'_'8729'__96
      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
-- Algebra.Properties.Monoid.Mult._._?>₀_
d__'63''62''8320'__296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny
d__'63''62''8320'__296 ~v0 ~v1 v2 = du__'63''62''8320'__296 v2
du__'63''62''8320'__296 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny
du__'63''62''8320'__296 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
-- Algebra.Properties.Monoid.Mult._._×_
d__'215'__298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
d__'215'__298 ~v0 ~v1 v2 = du__'215'__298 v2
du__'215'__298 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny
du__'215'__298 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
-- Algebra.Properties.Monoid.Mult.×-congʳ
d_'215''45'cong'691'_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'215''45'cong'691'_304 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'215''45'cong'691'_304 v2 v3 v4 v5 v6
du_'215''45'cong'691'_304 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong'691'_304 v0 v1 v2 v3 v4
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
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe (0 :: Integer)))
                (\ v5 v6 -> v5) v2 v3)
      _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                (MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))))
                v2 v3
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v5))
                   (\ v6 v7 -> v6) v2 v3)
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                   (\ v6 v7 -> v7)
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v5))
                   v2 v3)
                v4
                (coe
                   du_'215''45'cong'691'_304 (coe v0) (coe v5) (coe v2) (coe v3)
                   (coe v4)))
-- Algebra.Properties.Monoid.Mult.×-cong
d_'215''45'cong_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_'215''45'cong_312 ~v0 ~v1 v2 v3 ~v4 v5 v6 ~v7 v8
  = du_'215''45'cong_312 v2 v3 v5 v6 v8
du_'215''45'cong_312 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong_312 v0 v1 v2 v3 v4
  = coe
      du_'215''45'cong'691'_304 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
-- Algebra.Properties.Monoid.Mult.×-congˡ
d_'215''45'cong'737'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'215''45'cong'737'_322 ~v0 ~v1 v2 v3 v4 ~v5 ~v6
  = du_'215''45'cong'737'_322 v2 v3 v4
du_'215''45'cong'737'_322 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> AgdaAny
du_'215''45'cong'737'_322 v0 v1 v2
  = coe
      du_'215''45'cong_312 (coe v0) (coe v2) (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
         v1)
-- Algebra.Properties.Monoid.Mult.×-homo-0
d_'215''45'homo'45'0_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 -> AgdaAny -> AgdaAny
d_'215''45'homo'45'0_328 ~v0 ~v1 v2 v3
  = du_'215''45'homo'45'0_328 v2 v3
du_'215''45'homo'45'0_328 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 -> AgdaAny -> AgdaAny
du_'215''45'homo'45'0_328 v0 v1
  = coe
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
         (coe (0 :: Integer)) (coe v1))
-- Algebra.Properties.Monoid.Mult.×-homo-1
d_'215''45'homo'45'1_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 -> AgdaAny -> AgdaAny
d_'215''45'homo'45'1_334 ~v0 ~v1 v2 = du_'215''45'homo'45'1_334 v2
du_'215''45'homo'45'1_334 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 -> AgdaAny -> AgdaAny
du_'215''45'homo'45'1_334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_756
      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))
-- Algebra.Properties.Monoid.Mult.×-homo-+
d_'215''45'homo'45''43'_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'homo'45''43'_342 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'homo'45''43'_342 v2 v3 v4 v5
du_'215''45'homo'45''43'_342 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'homo'45''43'_342 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                (MAlonzo.Code.Algebra.Bundles.d_ε_936 (coe v0))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe v3) (coe v1)))
             (coe
                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                (coe v3) (coe v1))
             (coe
                MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                (MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe v3) (coe v1)))
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isMagma_498
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                         (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v1
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v4) (coe v1)))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v3) (coe v1)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v1
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe addInt (coe v4) (coe v3)) (coe v1)))
                (coe
                   MAlonzo.Code.Algebra.Properties.Semigroup.du_uv'8776'w'8658'xu'8729'v'8776'xw_106
                   (coe MAlonzo.Code.Algebra.Bundles.du_semigroup_976 (coe v0))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v4) (coe v1))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v3) (coe v1))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe addInt (coe v4) (coe v3)) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                         (coe
                            MAlonzo.Code.Algebra.Structures.d_isMagma_498
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                               (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe addInt (coe v4) (coe v3)) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe v4) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe v3) (coe v1)))
                      (coe
                         du_'215''45'homo'45''43'_342 (coe v0) (coe v1) (coe v4) (coe v3)))
                   (coe v1)))
-- Algebra.Properties.Monoid.Mult.×-idem
d_'215''45'idem_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> AgdaAny
d_'215''45'idem_360 ~v0 ~v1 v2 v3 v4 v5 ~v6
  = du_'215''45'idem_360 v2 v3 v4 v5
du_'215''45'idem_360 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
du_'215''45'idem_360 v0 v1 v2 v3
  = case coe v3 of
      1 -> coe
             MAlonzo.Code.Algebra.Structures.du_identity'691'_756
             (MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)) v1
      _ -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v4 v5 v6 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v1
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe subInt (coe v3) (coe (1 :: Integer))) (coe v1)))
             v1
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
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v1
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe subInt (coe v3) (coe (1 :: Integer))) (coe v1)))
                (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v1 v1) v1
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
                   (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0 v1 v1) v1 v1
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
                      (coe v1))
                   v2)
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
                   v1
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe subInt (coe v3) (coe (1 :: Integer))) (coe v1))
                   v1
                   (coe
                      du_'215''45'idem_360 (coe v0) (coe v1) (coe v2)
                      (coe subInt (coe v3) (coe (1 :: Integer))))))
-- Algebra.Properties.Monoid.Mult.×-assocˡ
d_'215''45'assoc'737'_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'assoc'737'_378 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'assoc'737'_378 v2 v3 v4 v5
du_'215''45'assoc'737'_378 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'assoc'737'_378 v0 v1 v2 v3
  = case coe v2 of
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
                (coe (0 :: Integer))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe v3) (coe v1)))
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v3) (coe v1))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe v4)
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v3) (coe v1))))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe mulInt (coe v2) (coe v3)) (coe v1))
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
                         (coe v3) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v4)
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe v3) (coe v1))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v3) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe mulInt (coe v4) (coe v3)) (coe v1)))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                      (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                      (coe mulInt (coe v2) (coe v3)) (coe v1))
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
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe v3) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe mulInt (coe v4) (coe v3)) (coe v1)))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe mulInt (coe v2) (coe v3)) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe mulInt (coe v2) (coe v3)) (coe v1))
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
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe mulInt (coe v2) (coe v3)) (coe v1)))
                      (coe
                         du_'215''45'homo'45''43'_342 (coe v0) (coe v1) (coe v3)
                         (coe mulInt (coe v4) (coe v3))))
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
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v3) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe v4)
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                            (coe v3) (coe v1)))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__68
                         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                         (coe mulInt (coe v4) (coe v3)) (coe v1))
                      (coe
                         du_'215''45'assoc'737'_378 (coe v0) (coe v1) (coe v4) (coe v3)))))
-- Algebra.Properties.Monoid.Mult.?>₀-homo-true
d_'63''62''8320''45'homo'45'true_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 -> AgdaAny -> AgdaAny
d_'63''62''8320''45'homo'45'true_392 ~v0 ~v1 v2 v3
  = du_'63''62''8320''45'homo'45'true_392 v2 v3
du_'63''62''8320''45'homo'45'true_392 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 -> AgdaAny -> AgdaAny
du_'63''62''8320''45'homo'45'true_392 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) (coe v1))
-- Algebra.Properties.Monoid.Mult.?>₀-assocˡ
d_'63''62''8320''45'assoc'737'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> Bool -> AgdaAny -> AgdaAny
d_'63''62''8320''45'assoc'737'_400 ~v0 ~v1 v2 v3 v4 v5
  = du_'63''62''8320''45'assoc'737'_400 v2 v3 v4 v5
du_'63''62''8320''45'assoc'737'_400 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> Bool -> AgdaAny -> AgdaAny
du_'63''62''8320''45'assoc'737'_400 v0 v1 v2 v3
  = coe
      seq (coe v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_498
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
            (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
               (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
               (coe v2) (coe v3))))
-- Algebra.Properties.Monoid.Mult.b?>x∙y≈b?>₀x+y
d_b'63''62'x'8729'y'8776'b'63''62''8320'x'43'y_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny -> AgdaAny
d_b'63''62'x'8729'y'8776'b'63''62''8320'x'43'y_408 ~v0 ~v1 v2 v3 v4
                                                   v5
  = du_b'63''62'x'8729'y'8776'b'63''62''8320'x'43'y_408 v2 v3 v4 v5
du_b'63''62'x'8729'y'8776'b'63''62''8320'x'43'y_408 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny -> AgdaAny
du_b'63''62'x'8729'y'8776'b'63''62''8320'x'43'y_408 v0 v1 v2 v3
  = if coe v1
      then coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62'_'8729'__96
                (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                (coe v1) (coe v2) (coe v3))
      else coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                (MAlonzo.Code.Algebra.Bundles.d_ε_936 (coe v0)) v3)
             v3
             (coe
                MAlonzo.Code.Algebra.Structures.du_identity'737'_754
                (MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)) v3)
-- Algebra.Properties.Monoid.Mult.b?>₀x≈b?>x∙0
d_b'63''62''8320'x'8776'b'63''62'x'8729'0_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny
d_b'63''62''8320'x'8776'b'63''62'x'8729'0_416 ~v0 ~v1 v2 v3 v4
  = du_b'63''62''8320'x'8776'b'63''62'x'8729'0_416 v2 v3 v4
du_b'63''62''8320'x'8776'b'63''62'x'8729'0_416 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914 ->
  Bool -> AgdaAny -> AgdaAny
du_b'63''62''8320'x'8776'b'63''62'x'8729'0_416 v0 v1 v2
  = if coe v1
      then coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_38
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__934 v0
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe v1) (coe v2))
                (MAlonzo.Code.Algebra.Bundles.d_ε_936 (coe v0)))
             (coe
                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
                (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                (coe v1) (coe v2))
             (coe
                MAlonzo.Code.Algebra.Structures.du_identity'691'_756
                (MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
                   (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                   (coe v1) (coe v2)))
      else coe
             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_498
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                      (coe MAlonzo.Code.Algebra.Bundles.d_isMonoid_938 (coe v0)))))
             (coe
                MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'63''62''8320'__90
                (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986 (coe v0))
                (coe v1) (coe v2))
