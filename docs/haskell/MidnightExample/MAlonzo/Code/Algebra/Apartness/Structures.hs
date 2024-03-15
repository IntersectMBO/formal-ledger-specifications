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

module MAlonzo.Code.Algebra.Apartness.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Properties.ApartnessRelation
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Apartness.Structures._.Invertible
d_Invertible_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Invertible_30 = erased
-- Algebra.Apartness.Structures._.IsCommutativeRing
d_IsCommutativeRing_34 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
                       a13 a14 a15
  = ()
-- Algebra.Apartness.Structures._.IsCommutativeRing._-_
d__'45'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'45'__38 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
            v13 ~v14 ~v15 ~v16
  = du__'45'__38 v11 v13
du__'45'__38 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__38 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v0) (coe v1)
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_46 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong'691'_46 v16
du_'8729''45'cong'691'_46 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_46 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong'737'_48 v16
du_'8729''45'cong'737'_48 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_48 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityʳ
d_identity'691'_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_identity'691'_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_identity'691'_52 v16
du_identity'691'_52 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'691'_52 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586 (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityˡ
d_identity'737'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_identity'737'_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_identity'737'_54 v16
du_identity'737'_54 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'737'_54 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586 (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeMagma_56 v16
du_isCommutativeMagma_56 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_56 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
               (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_58 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'42''45'isCommutativeMonoid_58 v16
du_'42''45'isCommutativeMonoid_58 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_58 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1636
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
         (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'42''45'isCommutativeSemigroup_60 v16
du_'42''45'isCommutativeSemigroup_60 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_60 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
            (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isMagma
d_'42''45'isMagma_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'42''45'isMagma_62 v16
du_'42''45'isMagma_62 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'42''45'isMagma_62 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isMonoid
d_'42''45'isMonoid_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'42''45'isMonoid_64 v16
du_'42''45'isMonoid_64 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'42''45'isMonoid_64 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.*-isSemigroup
d_'42''45'isSemigroup_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'42''45'isSemigroup_66 v16
du_'42''45'isSemigroup_66 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'42''45'isSemigroup_66 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2584
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congʳ
d_'8729''45'cong'691'_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_74 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong'691'_74 v16
du_'8729''45'cong'691'_74 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_74 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.∙-congˡ
d_'8729''45'cong'737'_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_76 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_'8729''45'cong'737'_76 v16
du_'8729''45'cong'737'_76 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_76 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityʳ
d_identity'691'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_identity'691'_80 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_identity'691'_80 v16
du_identity'691'_80 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'691'_80 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.identityˡ
d_identity'737'_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_identity'737'_82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_identity'737'_82 v16
du_identity'737'_82 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'737'_82 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_644
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeMagma
d_isCommutativeMagma_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeMagma_86 v16
du_isCommutativeMagma_86 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_86 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                  (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeMonoid
d_isCommutativeMonoid_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeMonoid_88 v16
du_isCommutativeMonoid_88 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_88 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeSemigroup
d_isCommutativeSemigroup_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeSemigroup_90 v16
du_isCommutativeSemigroup_90 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_90 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
               (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isInvertibleMagma
d_isInvertibleMagma_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isInvertibleMagma_94 v16
du_isInvertibleMagma_94 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_94 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isInvertibleUnitalMagma_96 v16
du_isInvertibleUnitalMagma_96 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_96 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isUnitalMagma
d_isUnitalMagma_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isUnitalMagma_104 v16
du_isUnitalMagma_104 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_104 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.inverseʳ
d_inverse'691'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_inverse'691'_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_inverse'691'_110 v16
du_inverse'691'_110 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_inverse'691'_110 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.inverseˡ
d_inverse'737'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_inverse'737'_112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_inverse'737'_112 v16
du_inverse'737'_112 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_inverse'737'_112 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.distribʳ
d_distrib'691'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_distrib'691'_116 v16
du_distrib'691'_116 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_116 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_1348
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.distribˡ
d_distrib'737'_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                   ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_distrib'737'_118 v16
du_distrib'737'_118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_118 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_1346
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10
  = du_isCommutativeSemiring_120
du_isCommutativeSemiring_120 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_120 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754 v5
-- Algebra.Apartness.Structures._.IsCommutativeRing.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isCommutativeSemiringWithoutOne_122 v16
du_isCommutativeSemiringWithoutOne_122 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
         (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isNearSemiring
d_isNearSemiring_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isNearSemiring_126 v16
du_isNearSemiring_126 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_126 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1222
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
               (coe v2))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isPartialEquivalence
d_isPartialEquivalence_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isPartialEquivalence_128 v16
du_isPartialEquivalence_128 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_128 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v6))))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemiring
d_isSemiring_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 v16
  = du_isSemiring_132 v16
du_isSemiring_132 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_isSemiring_132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2604
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isSemiringWithoutAnnihilatingZero_134 v16
du_isSemiringWithoutAnnihilatingZero_134 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2602
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.isSemiringWithoutOne
d_isSemiringWithoutOne_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 ~v11 ~v12 ~v13 ~v14 ~v15 v16
  = du_isSemiringWithoutOne_136 v16
du_isSemiringWithoutOne_136 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_136 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
         (coe MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1)))
-- Algebra.Apartness.Structures._.IsCommutativeRing.reflexive
d_reflexive_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                ~v12 ~v13 ~v14 ~v15 v16
  = du_reflexive_140 v16
du_reflexive_140 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_140 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                          (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v6))
                          v7))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.setoid
d_setoid_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 v16
  = du_setoid_142 v16
du_setoid_142 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_142 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 v11 ~v12 v13 v14 ~v15 v16
  = du_unique'691''45''8315''185'_148 v11 v13 v14 v16
du_unique'691''45''8315''185'_148 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_148 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
            (coe v0) (coe v2) (coe v1)
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 v11 ~v12 v13 v14 ~v15 v16
  = du_unique'737''45''8315''185'_150 v11 v13 v14 v16
du_unique'737''45''8315''185'_150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_150 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
            (coe v0) (coe v2) (coe v1)
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5))))
-- Algebra.Apartness.Structures._.IsCommutativeRing.zeroʳ
d_zero'691'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_zero'691'_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                ~v12 ~v13 ~v14 ~v15 v16
  = du_zero'691'_154 v16
du_zero'691'_154 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_zero'691'_154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_2600
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.IsCommutativeRing.zeroˡ
d_zero'737'_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
d_zero'737'_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                ~v12 ~v13 ~v14 ~v15 v16
  = du_zero'737'_156 v16
du_zero'737'_156 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_zero'737'_156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_2598
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing
d_IsHeytingCommutativeRing_158 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10
  = ()
data T_IsHeytingCommutativeRing_158
  = C_IsHeytingCommutativeRing'46'constructor_4785 MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
                                                   MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                                    AgdaAny)
-- Algebra.Apartness.Structures._._-_
d__'45'__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'45'__166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11 ~v12
  = du__'45'__166 v6 v8
du__'45'__166 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__166 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v0) (coe v1)
-- Algebra.Apartness.Structures._.∙-congʳ
d_'8729''45'cong'691'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8729''45'cong'691'_174 v11
du_'8729''45'cong'691'_174 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_174 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Apartness.Structures._.∙-congˡ
d_'8729''45'cong'737'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8729''45'cong'737'_176 v11
du_'8729''45'cong'737'_176 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_176 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Apartness.Structures._.identityʳ
d_identity'691'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_identity'691'_180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_identity'691'_180 v11
du_identity'691'_180 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'691'_180 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586 (coe v1)))
-- Algebra.Apartness.Structures._.identityˡ
d_identity'737'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_identity'737'_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_identity'737'_182 v11
du_identity'737'_182 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'737'_182 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586 (coe v1)))
-- Algebra.Apartness.Structures._.isCommutativeMagma
d_isCommutativeMagma_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11 ~v12
  = du_isCommutativeMagma_184 v11
du_isCommutativeMagma_184 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_184 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
               (coe v2))))
-- Algebra.Apartness.Structures._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 ~v9 ~v10 v11 ~v12
  = du_'42''45'isCommutativeMonoid_186 v11
du_'42''45'isCommutativeMonoid_186 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1636
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
         (coe v0))
-- Algebra.Apartness.Structures._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_'42''45'isCommutativeSemigroup_188 v11
du_'42''45'isCommutativeSemigroup_188 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_188 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
            (coe v1)))
-- Algebra.Apartness.Structures._.*-isMagma
d_'42''45'isMagma_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      v11 ~v12
  = du_'42''45'isMagma_190 v11
du_'42''45'isMagma_190 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'42''45'isMagma_190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.*-isMonoid
d_'42''45'isMonoid_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11 ~v12
  = du_'42''45'isMonoid_192 v11
du_'42''45'isMonoid_192 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'42''45'isMonoid_192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.*-isSemigroup
d_'42''45'isSemigroup_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'42''45'isSemigroup_194 v11
du_'42''45'isSemigroup_194 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'42''45'isSemigroup_194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2584
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.∙-congʳ
d_'8729''45'cong'691'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8729''45'cong'691'_202 v11
du_'8729''45'cong'691'_202 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_202 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures._.∙-congˡ
d_'8729''45'cong'737'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_'8729''45'cong'737'_204 v11
du_'8729''45'cong'737'_204 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_204 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures._.identityʳ
d_identity'691'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_identity'691'_208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_identity'691'_208 v11
du_identity'691'_208 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'691'_208 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)))))
-- Algebra.Apartness.Structures._.identityˡ
d_identity'737'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_identity'737'_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_identity'737'_210 v11
du_identity'737'_210 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_identity'737'_210 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_644
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)))))
-- Algebra.Apartness.Structures._.isCommutativeMagma
d_isCommutativeMagma_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11 ~v12
  = du_isCommutativeMagma_214 v11
du_isCommutativeMagma_214 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_214 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                  (coe v3)))))
-- Algebra.Apartness.Structures._.isCommutativeMonoid
d_isCommutativeMonoid_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11 ~v12
  = du_isCommutativeMonoid_216 v11
du_isCommutativeMonoid_216 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_216 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe v1)))
-- Algebra.Apartness.Structures._.isCommutativeSemigroup
d_isCommutativeSemigroup_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 v11 ~v12
  = du_isCommutativeSemigroup_218 v11
du_isCommutativeSemigroup_218 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_218 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
               (coe v2))))
-- Algebra.Apartness.Structures._.isInvertibleMagma
d_isInvertibleMagma_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11 ~v12
  = du_isInvertibleMagma_222 v11
du_isInvertibleMagma_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_222 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 v11 ~v12
  = du_isInvertibleUnitalMagma_224 v11
du_isInvertibleUnitalMagma_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_224 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.isUnitalMagma
d_isUnitalMagma_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11 ~v12
  = du_isUnitalMagma_232 v11
du_isUnitalMagma_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_232 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3)))))
-- Algebra.Apartness.Structures._.inverseʳ
d_inverse'691'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_inverse'691'_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_inverse'691'_238 v11
du_inverse'691'_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_inverse'691'_238 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.inverseˡ
d_inverse'737'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_inverse'737'_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_inverse'737'_240 v11
du_inverse'737'_240 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_inverse'737'_240 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2))))
-- Algebra.Apartness.Structures._.distribʳ
d_distrib'691'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_distrib'691'_244 v11
du_distrib'691'_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_244 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'691'_1348
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v2))))
-- Algebra.Apartness.Structures._.distribˡ
d_distrib'737'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                   ~v12
  = du_distrib'737'_246 v11
du_distrib'737'_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_246 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_distrib'737'_1346
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v2))))
-- Algebra.Apartness.Structures._.isCommutativeSemiring
d_isCommutativeSemiring_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 v11 ~v12
  = du_isCommutativeSemiring_248 v11
du_isCommutativeSemiring_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
      (coe v0)
-- Algebra.Apartness.Structures._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_isCommutativeSemiringWithoutOne_250 v11
du_isCommutativeSemiringWithoutOne_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
         (coe v0))
-- Algebra.Apartness.Structures._.isNearSemiring
d_isNearSemiring_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11 ~v12
  = du_isNearSemiring_254 v11
du_isNearSemiring_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_254 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1222
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
               (coe v2))))
-- Algebra.Apartness.Structures._.isPartialEquivalence
d_isPartialEquivalence_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11 ~v12
  = du_isPartialEquivalence_256 v11
du_isPartialEquivalence_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_256 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v6))))))))
-- Algebra.Apartness.Structures._.isSemiring
d_isSemiring_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                 ~v12
  = du_isSemiring_260 v11
du_isSemiring_260 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_isSemiring_260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_2604
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_isSemiringWithoutAnnihilatingZero_262 v11
du_isSemiringWithoutAnnihilatingZero_262 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2602
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.isSemiringWithoutOne
d_isSemiringWithoutOne_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11 ~v12
  = du_isSemiringWithoutOne_264 v11
du_isSemiringWithoutOne_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_264 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
         (coe MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v1)))
-- Algebra.Apartness.Structures._.reflexive
d_reflexive_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                ~v12
  = du_reflexive_268 v11
du_reflexive_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_268 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                          (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v6))
                          v7))))))
-- Algebra.Apartness.Structures._.setoid
d_setoid_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 ~v12
  = du_setoid_270 v11
du_setoid_270 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_270 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11 ~v12
  = du_unique'691''45''8315''185'_276 v6 v8 v9 v11
du_unique'691''45''8315''185'_276 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_276 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
            (coe v0) (coe v2) (coe v1)
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5))))
-- Algebra.Apartness.Structures._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11 ~v12
  = du_unique'737''45''8315''185'_278 v6 v8 v9 v11
du_unique'737''45''8315''185'_278 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_278 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v3) in
    coe
      (let v5
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
            (coe v0) (coe v2) (coe v1)
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5))))
-- Algebra.Apartness.Structures._.zeroʳ
d_zero'691'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_zero'691'_282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                ~v12
  = du_zero'691'_282 v11
du_zero'691'_282 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_zero'691'_282 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_2600
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures._.zeroˡ
d_zero'737'_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656 ->
  AgdaAny -> AgdaAny
d_zero'737'_284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
                ~v12
  = du_zero'737'_284 v11
du_zero'737'_284 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  AgdaAny -> AgdaAny
du_zero'737'_284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_2598
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.isCommutativeRing
d_isCommutativeRing_308 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_isCommutativeRing_308 v0
  = case coe v0 of
      C_IsHeytingCommutativeRing'46'constructor_4785 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.isApartnessRelation
d_isApartnessRelation_310 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656
d_isApartnessRelation_310 v0
  = case coe v0 of
      C_IsHeytingCommutativeRing'46'constructor_4785 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._._-_
d__'45'__314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11
  = du__'45'__314 v6 v8
du__'45'__314 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__314 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v0) (coe v1)
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-assoc
d_'42''45'assoc_316 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe d_isCommutativeRing_308 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-comm
d_'42''45'comm_318 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2644
      (coe d_isCommutativeRing_308 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-cong
d_'42''45'cong_320 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2506
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe d_isCommutativeRing_308 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'691'_322 v11
du_'8729''45'cong'691'_322 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_322 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'737'_324 v11
du_'8729''45'cong'737'_324 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_324 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-identity
d_'42''45'identity_326 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe d_isCommutativeRing_308 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityʳ
d_identity'691'_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_identity'691'_328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'691'_328 v11
du_identity'691'_328 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_identity'691'_328 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_646
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityˡ
d_identity'737'_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_identity'737'_330 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'737'_330 v11
du_identity'737'_330 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_identity'737'_330 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_644
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isCommutativeMagma_332 v11
du_isCommutativeMagma_332 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_332 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 ~v9 ~v10 v11
  = du_'42''45'isCommutativeMonoid_334 v11
du_'42''45'isCommutativeMonoid_334 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_334 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1636
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
            (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11
  = du_'42''45'isCommutativeSemigroup_336 v11
du_'42''45'isCommutativeSemigroup_336 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_336 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isMagma
d_'42''45'isMagma_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      v11
  = du_'42''45'isMagma_338 v11
du_'42''45'isMagma_338 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'42''45'isMagma_338 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_'42''45'isMonoid_340 v11
du_'42''45'isMonoid_340 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'42''45'isMonoid_340 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'42''45'isSemigroup_342 v11
du_'42''45'isSemigroup_342 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'42''45'isSemigroup_342 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2584
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.assoc
d_assoc_344 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe d_isCommutativeRing_308 (coe v0)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.comm
d_comm_346 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_994
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe d_isCommutativeRing_308 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-cong
d_'8729''45'cong_348 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_348 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe d_isCommutativeRing_308 (coe v0))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'691'_350 v11
du_'8729''45'cong'691'_350 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_350 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
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
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'737'_352 v11
du_'8729''45'cong'737'_352 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_352 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
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
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identity
d_identity_354 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_354 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe d_isCommutativeRing_308 (coe v0))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityʳ
d_identity'691'_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_identity'691'_356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'691'_356 v11
du_identity'691'_356 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_identity'691'_356 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.identityˡ
d_identity'737'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_identity'737'_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'737'_358 v11
du_identity'737'_358 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_identity'737'_358 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_360 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe d_isCommutativeRing_308 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isCommutativeMagma_362 v11
du_isCommutativeMagma_362 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_362 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_isCommutativeMonoid_364 v11
du_isCommutativeMonoid_364 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_364 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 v11
  = du_isCommutativeSemigroup_366 v11
du_isCommutativeSemigroup_366 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_366 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isGroup
d_isGroup_368 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe d_isCommutativeRing_308 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isInvertibleMagma
d_isInvertibleMagma_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11
  = du_isInvertibleMagma_370 v11
du_isInvertibleMagma_370 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_370 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 v11
  = du_isInvertibleUnitalMagma_372 v11
du_isInvertibleUnitalMagma_372 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_372 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isMagma
d_isMagma_374 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_374 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe d_isCommutativeRing_308 (coe v0)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isMonoid
d_isMonoid_376 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_376 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe d_isCommutativeRing_308 (coe v0)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemigroup
d_isSemigroup_378 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_378 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe d_isCommutativeRing_308 (coe v0))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isUnitalMagma
d_isUnitalMagma_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isUnitalMagma_380 v11
du_isUnitalMagma_380 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_380 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
                  (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_382 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe d_isCommutativeRing_308 (coe v0)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.inverse
d_inverse_384 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_384 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe d_isCommutativeRing_308 (coe v0)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.inverseʳ
d_inverse'691'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_inverse'691'_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'691'_386 v11
du_inverse'691'_386 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_inverse'691'_386 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.inverseˡ
d_inverse'737'_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_inverse'737'_388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'737'_388 v11
du_inverse'737'_388 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_inverse'737'_388 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.distrib
d_distrib_390 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe d_isCommutativeRing_308 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.distribʳ
d_distrib'691'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'691'_392 v11
du_distrib'691'_392 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_392 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'691'_1348
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.distribˡ
d_distrib'737'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'737'_394 v11
du_distrib'737'_394 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_394 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_distrib'737'_1346
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 v11
  = du_isCommutativeSemiring_396 v11
du_isCommutativeSemiring_396 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
      (coe d_isCommutativeRing_308 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 v11
  = du_isCommutativeSemiringWithoutOne_398 v11
du_isCommutativeSemiringWithoutOne_398 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_398 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
            (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isEquivalence
d_isEquivalence_400 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe d_isCommutativeRing_308 (coe v0))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isNearSemiring
d_isNearSemiring_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11
  = du_isNearSemiring_402 v11
du_isNearSemiring_402 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_402 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1222
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_404 v11
du_isPartialEquivalence_404 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_404 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                              (coe v7)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isRing
d_isRing_406 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_2642
      (coe d_isCommutativeRing_308 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemiring
d_isSemiring_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemiring_408 v11
du_isSemiring_408 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_isSemiring_408 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_2604
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemiringWithoutAnnihilatingZero_410 v11
du_isSemiringWithoutAnnihilatingZero_410 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_410 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2602
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isSemiringWithoutOne_412 v11
du_isSemiringWithoutOne_412 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_412 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
            (coe MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.refl
d_refl_414 :: T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_refl_414 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe d_isCommutativeRing_308 (coe v0)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.reflexive
d_reflexive_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_416 v11
du_reflexive_416 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_416 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                             (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v7))
                             v8)))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.setoid
d_setoid_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_418 v11
du_setoid_418 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_418 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v2) in
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
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.sym
d_sym_420 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_420 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe d_isCommutativeRing_308 (coe v0)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.trans
d_trans_422 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_422 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe d_isCommutativeRing_308 (coe v0)))))))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'691''45''8315''185'_424 v6 v8 v9 v11
du_unique'691''45''8315''185'_424 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_424 v0 v1 v2 v3
  = let v4 = d_isCommutativeRing_308 (coe v3) in
    coe
      (let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
               (coe v0) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v6)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'737''45''8315''185'_426 v6 v8 v9 v11
du_unique'737''45''8315''185'_426 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_426 v0 v1 v2 v3
  = let v4 = d_isCommutativeRing_308 (coe v3) in
    coe
      (let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                    (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
               (coe v0) (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v6)))))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.zero
d_zero_428 ::
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe d_isCommutativeRing_308 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.zeroʳ
d_zero'691'_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_zero'691'_430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_zero'691'_430 v11
du_zero'691'_430 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_zero'691'_430 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero'691'_2600
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.zeroˡ
d_zero'737'_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
d_zero'737'_432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_zero'737'_432 v11
du_zero'737'_432 ::
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny
du_zero'737'_432 v0
  = let v1 = d_isCommutativeRing_308 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_zero'737'_2598
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._._¬#_
d__'172''35'__436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__436 = erased
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.cotrans
d_cotrans_438 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_438 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_670
      (coe d_isApartnessRelation_310 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.irrefl
d_irrefl_440 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_440 = erased
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing._.sym
d_sym_442 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_442 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_668
      (coe d_isApartnessRelation_310 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.#⇒invertible
d_'35''8658'invertible_448 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_448 v0
  = case coe v0 of
      C_IsHeytingCommutativeRing'46'constructor_4785 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.invertible⇒#
d_invertible'8658''35'_454 ::
  T_IsHeytingCommutativeRing_158 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_invertible'8658''35'_454 v0
  = case coe v0 of
      C_IsHeytingCommutativeRing'46'constructor_4785 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingCommutativeRing.¬#-isEquivalence
d_'172''35''45'isEquivalence_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingCommutativeRing_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'172''35''45'isEquivalence_456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 ~v11
  = du_'172''35''45'isEquivalence_456
du_'172''35''45'isEquivalence_456 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'172''35''45'isEquivalence_456
  = coe
      MAlonzo.Code.Relation.Binary.Properties.ApartnessRelation.du_'172''35''45'isEquivalence_20
-- Algebra.Apartness.Structures.IsHeytingField
d_IsHeytingField_458 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T_IsHeytingField_458
  = C_IsHeytingField'46'constructor_16705 T_IsHeytingCommutativeRing_158
                                          (AgdaAny ->
                                           AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Apartness.Structures.IsHeytingField.isHeytingCommutativeRing
d_isHeytingCommutativeRing_464 ::
  T_IsHeytingField_458 -> T_IsHeytingCommutativeRing_158
d_isHeytingCommutativeRing_464 v0
  = case coe v0 of
      C_IsHeytingField'46'constructor_16705 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingField.tight
d_tight_466 ::
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_tight_466 v0
  = case coe v0 of
      C_IsHeytingField'46'constructor_16705 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Apartness.Structures.IsHeytingField._._-_
d__'45'__470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11
  = du__'45'__470 v6 v8
du__'45'__470 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__470 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v0) (coe v1)
-- Algebra.Apartness.Structures.IsHeytingField._._¬#_
d__'172''35'__472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> ()
d__'172''35'__472 = erased
-- Algebra.Apartness.Structures.IsHeytingField._.#⇒invertible
d_'35''8658'invertible_474 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_474 v0
  = coe
      d_'35''8658'invertible_448
      (coe d_isHeytingCommutativeRing_464 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.*-assoc
d_'42''45'assoc_476 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2508
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_464 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-comm
d_'42''45'comm_478 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2644
      (coe
         d_isCommutativeRing_308
         (coe d_isHeytingCommutativeRing_464 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.*-cong
d_'42''45'cong_480 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2506
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_464 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congʳ
d_'8729''45'cong'691'_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_482 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'691'_482 v11
du_'8729''45'cong'691'_482 ::
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_482 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congˡ
d_'8729''45'cong'737'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_484 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'737'_484 v11
du_'8729''45'cong'737'_484 ::
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_484 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-identity
d_'42''45'identity_486 ::
  T_IsHeytingField_458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_464 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityʳ
d_identity'691'_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_identity'691'_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'691'_488 v11
du_identity'691'_488 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_identity'691'_488 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityˡ
d_identity'737'_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_identity'737'_490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'737'_490 v11
du_identity'737'_490 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_identity'737'_490 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'737'_644
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeMagma
d_isCommutativeMagma_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isCommutativeMagma_492 v11
du_isCommutativeMagma_492 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_492 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                    (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_494 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  ~v8 ~v9 ~v10 v11
  = du_'42''45'isCommutativeMonoid_494 v11
du_'42''45'isCommutativeMonoid_494 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_494 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1636
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11
  = du_'42''45'isCommutativeSemigroup_496 v11
du_'42''45'isCommutativeSemigroup_496 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_496 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
                    (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1302
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isMagma
d_'42''45'isMagma_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                      v11
  = du_'42''45'isMagma_498 v11
du_'42''45'isMagma_498 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'42''45'isMagma_498 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMagma_2582
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isMonoid
d_'42''45'isMonoid_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_'42''45'isMonoid_500 v11
du_'42''45'isMonoid_500 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'42''45'isMonoid_500 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isMonoid_2586
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.*-isSemigroup
d_'42''45'isSemigroup_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'42''45'isSemigroup_502 v11
du_'42''45'isSemigroup_502 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'42''45'isSemigroup_502 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'42''45'isSemigroup_2584
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.assoc
d_assoc_504 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe
                        d_isCommutativeRing_308
                        (coe d_isHeytingCommutativeRing_464 (coe v0))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.comm
d_comm_506 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_506 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_994
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe
               d_isCommutativeRing_308
               (coe d_isHeytingCommutativeRing_464 (coe v0)))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-cong
d_'8729''45'cong_508 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe
                           d_isCommutativeRing_308
                           (coe d_isHeytingCommutativeRing_464 (coe v0)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congʳ
d_'8729''45'cong'691'_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'691'_510 v11
du_'8729''45'cong'691'_510 ::
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_510 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
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
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.∙-congˡ
d_'8729''45'cong'737'_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8729''45'cong'737'_512 v11
du_'8729''45'cong'737'_512 ::
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_512 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
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
                           MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.identity
d_identity_514 ::
  T_IsHeytingField_458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_514 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe
                     d_isCommutativeRing_308
                     (coe d_isHeytingCommutativeRing_464 (coe v0)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityʳ
d_identity'691'_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_identity'691'_516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'691'_516 v11
du_identity'691'_516 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_identity'691'_516 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'691'_646
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.identityˡ
d_identity'737'_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_identity'737'_518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_identity'737'_518 v11
du_identity'737'_518 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_identity'737'_518 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_identity'737'_644
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.+-isAbelianGroup
d_'43''45'isAbelianGroup_520 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_520 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_464 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeMagma
d_isCommutativeMagma_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isCommutativeMagma_522 v11
du_isCommutativeMagma_522 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_522 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                        (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeMonoid
d_isCommutativeMonoid_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_isCommutativeMonoid_524 v11
du_isCommutativeMonoid_524 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_524 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeSemigroup
d_isCommutativeSemigroup_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                             ~v9 ~v10 v11
  = du_isCommutativeSemigroup_526 v11
du_isCommutativeSemigroup_526 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_526 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isGroup
d_isGroup_528 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_2642
            (coe
               d_isCommutativeRing_308
               (coe d_isHeytingCommutativeRing_464 (coe v0)))))
-- Algebra.Apartness.Structures.IsHeytingField._.isInvertibleMagma
d_isInvertibleMagma_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                        ~v10 v11
  = du_isInvertibleMagma_530 v11
du_isInvertibleMagma_530 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_530 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              ~v9 ~v10 v11
  = du_isInvertibleUnitalMagma_532 v11
du_isInvertibleUnitalMagma_532 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_532 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isMagma
d_isMagma_534 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_2642
                     (coe
                        d_isCommutativeRing_308
                        (coe d_isHeytingCommutativeRing_464 (coe v0))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isMonoid
d_isMonoid_536 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  d_isCommutativeRing_308
                  (coe d_isHeytingCommutativeRing_464 (coe v0))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemigroup
d_isSemigroup_538 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_2642
                  (coe
                     d_isCommutativeRing_308
                     (coe d_isHeytingCommutativeRing_464 (coe v0)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isUnitalMagma
d_isUnitalMagma_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                    v11
  = du_isUnitalMagma_540 v11
du_isUnitalMagma_540 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_540 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
                     (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v5)))))))
-- Algebra.Apartness.Structures.IsHeytingField._.⁻¹-cong
d_'8315''185''45'cong_542 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  d_isCommutativeRing_308
                  (coe d_isHeytingCommutativeRing_464 (coe v0))))))
-- Algebra.Apartness.Structures.IsHeytingField._.inverse
d_inverse_544 ::
  T_IsHeytingField_458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_2642
               (coe
                  d_isCommutativeRing_308
                  (coe d_isHeytingCommutativeRing_464 (coe v0))))))
-- Algebra.Apartness.Structures.IsHeytingField._.inverseʳ
d_inverse'691'_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_inverse'691'_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'691'_546 v11
du_inverse'691'_546 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_inverse'691'_546 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.inverseˡ
d_inverse'737'_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_inverse'737'_548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_inverse'737'_548 v11
du_inverse'737'_548 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_inverse'737'_548 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.cotrans
d_cotrans_550 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_550 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_670
      (coe
         d_isApartnessRelation_310
         (coe d_isHeytingCommutativeRing_464 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.distrib
d_distrib_552 ::
  T_IsHeytingField_458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_552 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2512
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_464 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.distribʳ
d_distrib'691'_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'691'_554 v11
du_distrib'691'_554 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_554 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'691'_1348
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.distribˡ
d_distrib'737'_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_distrib'737'_556 v11
du_distrib'737'_556 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_556 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_distrib'737'_1346
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.invertible⇒#
d_invertible'8658''35'_558 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_invertible'8658''35'_558 v0
  = coe
      d_invertible'8658''35'_454
      (coe d_isHeytingCommutativeRing_464 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.irrefl
d_irrefl_560 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_560 = erased
-- Algebra.Apartness.Structures.IsHeytingField._.isApartnessRelation
d_isApartnessRelation_562 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_656
d_isApartnessRelation_562 v0
  = coe
      d_isApartnessRelation_310
      (coe d_isHeytingCommutativeRing_464 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeRing
d_isCommutativeRing_564 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_isCommutativeRing_564 v0
  = coe
      d_isCommutativeRing_308
      (coe d_isHeytingCommutativeRing_464 (coe v0))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeSemiring
d_isCommutativeSemiring_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 v11
  = du_isCommutativeSemiring_566 v11
du_isCommutativeSemiring_566 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_566 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
         (coe d_isCommutativeRing_308 (coe v1)))
-- Algebra.Apartness.Structures.IsHeytingField._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 ~v9 ~v10 v11
  = du_isCommutativeSemiringWithoutOne_568 v11
du_isCommutativeSemiringWithoutOne_568 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_568 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1628
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_2754
               (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.isEquivalence
d_isEquivalence_570 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_570 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_2642
                        (coe
                           d_isCommutativeRing_308
                           (coe d_isHeytingCommutativeRing_464 (coe v0)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isNearSemiring
d_isNearSemiring_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     v11
  = du_isNearSemiring_572 v11
du_isNearSemiring_572 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_572 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isNearSemiring_1222
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
                     (coe v4))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isPartialEquivalence
d_isPartialEquivalence_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_574 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isPartialEquivalence_574 v11
du_isPartialEquivalence_574 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_574 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
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
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                 (coe v8))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.isRing
d_isRing_576 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_576 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_2642
      (coe
         d_isCommutativeRing_308
         (coe d_isHeytingCommutativeRing_464 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemiring
d_isSemiring_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemiring_578 v11
du_isSemiring_578 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_isSemiring_578 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiring_2604
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 ~v9 ~v10 v11
  = du_isSemiringWithoutAnnihilatingZero_580 v11
du_isSemiringWithoutAnnihilatingZero_580 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_580 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_2602
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.isSemiringWithoutOne
d_isSemiringWithoutOne_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_isSemiringWithoutOne_582 v11
du_isSemiringWithoutOne_582 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_582 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1508
               (coe
                  MAlonzo.Code.Algebra.Structures.du_isSemiring_2604 (coe v3)))))
-- Algebra.Apartness.Structures.IsHeytingField._.refl
d_refl_584 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_refl_584 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              d_isCommutativeRing_308
                              (coe d_isHeytingCommutativeRing_464 (coe v0))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.reflexive
d_reflexive_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_586 v11
du_reflexive_586 ::
  T_IsHeytingField_458 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_586 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
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
                        (let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                                (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v8))
                                v9))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.setoid
d_setoid_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_setoid_588 v11
du_setoid_588 ::
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_588 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
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
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v7)))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.sym
d_sym_590 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_590 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              d_isCommutativeRing_308
                              (coe d_isHeytingCommutativeRing_464 (coe v0))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.sym
d_sym_592 ::
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_592 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_668
      (coe
         d_isApartnessRelation_310
         (coe d_isHeytingCommutativeRing_464 (coe v0)))
-- Algebra.Apartness.Structures.IsHeytingField._.trans
d_trans_594 ::
  T_IsHeytingField_458 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_594 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_2642
                           (coe
                              d_isCommutativeRing_308
                              (coe d_isHeytingCommutativeRing_464 (coe v0))))))))))
-- Algebra.Apartness.Structures.IsHeytingField._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'691''45''8315''185'_596 v6 v8 v9 v11
du_unique'691''45''8315''185'_596 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_596 v0 v1 v2 v3
  = let v4 = d_isHeytingCommutativeRing_464 (coe v3) in
    coe
      (let v5 = d_isCommutativeRing_308 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v6) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
                  (coe v0) (coe v2) (coe v1)
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v7))))))
-- Algebra.Apartness.Structures.IsHeytingField._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8
                                 v9 ~v10 v11
  = du_unique'737''45''8315''185'_598 v6 v8 v9 v11
du_unique'737''45''8315''185'_598 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsHeytingField_458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_598 v0 v1 v2 v3
  = let v4 = d_isHeytingCommutativeRing_464 (coe v3) in
    coe
      (let v5 = d_isCommutativeRing_308 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                       (coe v6) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
                  (coe v0) (coe v2) (coe v1)
                  (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v7))))))
-- Algebra.Apartness.Structures.IsHeytingField._.zero
d_zero_600 ::
  T_IsHeytingField_458 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2514
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_2642
         (coe
            d_isCommutativeRing_308
            (coe d_isHeytingCommutativeRing_464 (coe v0))))
-- Algebra.Apartness.Structures.IsHeytingField._.zeroʳ
d_zero'691'_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_zero'691'_602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_zero'691'_602 v11
du_zero'691'_602 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_zero'691'_602 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'691'_2600
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.zeroˡ
d_zero'737'_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingField_458 -> AgdaAny -> AgdaAny
d_zero'737'_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_zero'737'_604 v11
du_zero'737'_604 :: T_IsHeytingField_458 -> AgdaAny -> AgdaAny
du_zero'737'_604 v0
  = let v1 = d_isHeytingCommutativeRing_464 (coe v0) in
    coe
      (let v2 = d_isCommutativeRing_308 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_zero'737'_2598
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v2))))
-- Algebra.Apartness.Structures.IsHeytingField._.¬#-isEquivalence
d_'172''35''45'isEquivalence_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingField_458 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'172''35''45'isEquivalence_606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 ~v9 ~v10 ~v11
  = du_'172''35''45'isEquivalence_606
du_'172''35''45'isEquivalence_606 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'172''35''45'isEquivalence_606
  = coe du_'172''35''45'isEquivalence_456
