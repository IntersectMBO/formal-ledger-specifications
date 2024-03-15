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

module MAlonzo.Code.Algebra.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Structures.Biased._._DistributesOver_
d__DistributesOver__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__18 = erased
-- Algebra.Structures.Biased._._DistributesOverʳ_
d__DistributesOver'691'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__20 = erased
-- Algebra.Structures.Biased._._DistributesOverˡ_
d__DistributesOver'737'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__22 = erased
-- Algebra.Structures.Biased._.Commutative
d_Commutative_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_42 = erased
-- Algebra.Structures.Biased._.LeftIdentity
d_LeftIdentity_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_84 = erased
-- Algebra.Structures.Biased._.LeftZero
d_LeftZero_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_92 = erased
-- Algebra.Structures.Biased._.RightIdentity
d_RightIdentity_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_114 = erased
-- Algebra.Structures.Biased._.RightZero
d_RightZero_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_122 = erased
-- Algebra.Structures.Biased._.Zero
d_Zero_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_142 = erased
-- Algebra.Structures.Biased._.IsAbelianGroup
d_IsAbelianGroup_146 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsCommutativeMonoid
d_IsCommutativeMonoid_156 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsCommutativeSemiring
d_IsCommutativeSemiring_162 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Structures.Biased._.IsMonoid
d_IsMonoid_192 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsNearSemiring
d_IsNearSemiring_196 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsRing
d_IsRing_208 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Algebra.Structures.Biased._.IsSemigroup
d_IsSemigroup_214 a0 a1 a2 a3 a4 = ()
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_220 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
-- Algebra.Structures.Biased._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_222 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsAbelianGroup._-_
d__'45'__228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'45'__228 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 = du__'45'__228 v4 v6
du__'45'__228 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__228 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.Biased._.IsAbelianGroup.identityʳ
d_identity'691'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
d_identity'691'_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_236 v7
du_identity'691'_236 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
du_identity'691'_236 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.identityˡ
d_identity'737'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
d_identity'737'_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_238 v7
du_identity'737'_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
du_identity'737'_238 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.inverseʳ
d_inverse'691'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
d_inverse'691'_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_242 v7
du_inverse'691'_242 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
du_inverse'691'_242 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.inverseˡ
d_inverse'737'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
d_inverse'737'_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_244 v7
du_inverse'737'_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny
du_inverse'737'_244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_246 v7
du_isCommutativeMagma_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_246 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
            (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_248 ~v0 ~v1 ~v2 ~v3
  = du_isCommutativeMonoid_248
du_isCommutativeMonoid_248 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_248 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052 v3
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_250 v7
du_isCommutativeSemigroup_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
         (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_256 v7
du_isInvertibleMagma_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_258 v7
du_isInvertibleUnitalMagma_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_264 v7
du_isPartialEquivalence_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_264 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))))
-- Algebra.Structures.Biased._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_268 v7
du_isUnitalMagma_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_268 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.reflexive
d_reflexive_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_272 v7
du_reflexive_272 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_272 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                    v5))))
-- Algebra.Structures.Biased._.IsAbelianGroup.setoid
d_setoid_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_274 v7
du_setoid_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_274 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Structures.Biased._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_280 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_280 v4 v5 v6 v7
du_unique'691''45''8315''185'_280 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_280 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3))
-- Algebra.Structures.Biased._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_282 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_282 v4 v5 v6 v7
du_unique'737''45''8315''185'_282 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_282 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3))
-- Algebra.Structures.Biased._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_288 v7
du_'8729''45'cong'691'_288 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_288 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Structures.Biased._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_290 v7
du_'8729''45'cong'737'_290 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_290 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Structures.Biased._.IsMonoid.identityʳ
d_identity'691'_1488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny
d_identity'691'_1488 ~v0 ~v1 ~v2 ~v3 = du_identity'691'_1488
du_identity'691'_1488 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny
du_identity'691'_1488 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_identity'691'_646 v2
-- Algebra.Structures.Biased._.IsMonoid.identityˡ
d_identity'737'_1490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny
d_identity'737'_1490 ~v0 ~v1 ~v2 ~v3 = du_identity'737'_1490
du_identity'737'_1490 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny
du_identity'737'_1490 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_identity'737'_644 v2
-- Algebra.Structures.Biased._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_1496 v6
du_isPartialEquivalence_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1496 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v2))))
-- Algebra.Structures.Biased._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_1500 ~v0 ~v1 ~v2 ~v3 = du_isUnitalMagma_1500
du_isUnitalMagma_1500 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_1500 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648 v2
-- Algebra.Structures.Biased._.IsMonoid.reflexive
d_reflexive_1504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_1504 v6
du_reflexive_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1504 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v2))
              v3))
-- Algebra.Structures.Biased._.IsMonoid.setoid
d_setoid_1506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_1506 v6
du_setoid_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1506 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_168
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Algebra.Structures.Biased._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_1514 v6
du_'8729''45'cong'691'_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1514 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Algebra.Structures.Biased._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_1516 v6
du_'8729''45'cong'737'_1516 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1516 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ
d_IsCommutativeMonoid'737'_2528 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'737'_2528
  = C_IsCommutativeMonoid'737''46'constructor_32619 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
                                                    (AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isSemigroup
d_isSemigroup_2540 ::
  T_IsCommutativeMonoid'737'_2528 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2540 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_32619 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityˡ
d_identity'737'_2542 ::
  T_IsCommutativeMonoid'737'_2528 -> AgdaAny -> AgdaAny
d_identity'737'_2542 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_32619 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.comm
d_comm_2544 ::
  T_IsCommutativeMonoid'737'_2528 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2544 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_32619 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isCommutativeMonoid
d_isCommutativeMonoid_2546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_2528 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2546 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_2546 v4 v5 v6
du_isCommutativeMonoid_2546 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_2528 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_2546 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
         (coe d_isSemigroup_2540 (coe v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'737''8658'id_352
            (let v3 = d_isSemigroup_2540 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3))))
            (coe v0) (coe d_comm_2544 (coe v2)) (coe v1)
            (coe d_identity'737'_2542 (coe v2))))
      (coe d_comm_2544 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ
d_IsCommutativeMonoid'691'_2582 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'691'_2582
  = C_IsCommutativeMonoid'691''46'constructor_34055 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
                                                    (AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isSemigroup
d_isSemigroup_2594 ::
  T_IsCommutativeMonoid'691'_2582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2594 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_34055 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityʳ
d_identity'691'_2596 ::
  T_IsCommutativeMonoid'691'_2582 -> AgdaAny -> AgdaAny
d_identity'691'_2596 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_34055 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.comm
d_comm_2598 ::
  T_IsCommutativeMonoid'691'_2582 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2598 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_34055 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isCommutativeMonoid
d_isCommutativeMonoid_2600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_2582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2600 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_2600 v4 v5 v6
du_isCommutativeMonoid_2600 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_2582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_2600 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
         (coe d_isSemigroup_2594 (coe v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'691''8658'id_356
            (let v3 = d_isSemigroup_2594 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3))))
            (coe v0) (coe d_comm_2598 (coe v2)) (coe v1)
            (coe d_identity'691'_2596 (coe v2))))
      (coe d_comm_2598 (coe v2))
-- Algebra.Structures.Biased.IsSemiringWithoutOne*
d_IsSemiringWithoutOne'42'_2638 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringWithoutOne'42'_2638
  = C_IsSemiringWithoutOne'42''46'constructor_35529 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
                                                    MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2654 ::
  T_IsSemiringWithoutOne'42'_2638 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2654 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_35529 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.*-isSemigroup
d_'42''45'isSemigroup_2656 ::
  T_IsSemiringWithoutOne'42'_2638 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_2656 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_35529 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.distrib
d_distrib_2658 ::
  T_IsSemiringWithoutOne'42'_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2658 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_35529 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.zero
d_zero_2660 ::
  T_IsSemiringWithoutOne'42'_2638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2660 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_35529 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.isSemiringWithoutOne
d_isSemiringWithoutOne_2662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne'42'_2638 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_2662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringWithoutOne_2662 v7
du_isSemiringWithoutOne_2662 ::
  T_IsSemiringWithoutOne'42'_2638 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_2662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutOne'46'constructor_33087
      (coe d_'43''45'isCommutativeMonoid_2654 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe d_'42''45'isSemigroup_2656 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe d_'42''45'isSemigroup_2656 (coe v0)))
      (coe d_distrib_2658 (coe v0)) (coe d_zero_2660 (coe v0))
-- Algebra.Structures.Biased.IsNearSemiring*
d_IsNearSemiring'42'_2700 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiring'42'_2700
  = C_IsNearSemiring'42''46'constructor_37331 MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
                                              MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                              (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsNearSemiring*.+-isMonoid
d_'43''45'isMonoid_2716 ::
  T_IsNearSemiring'42'_2700 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_2716 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_37331 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.*-isSemigroup
d_'42''45'isSemigroup_2718 ::
  T_IsNearSemiring'42'_2700 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_2718 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_37331 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.distribʳ
d_distrib'691'_2720 ::
  T_IsNearSemiring'42'_2700 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2720 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_37331 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.zeroˡ
d_zero'737'_2722 :: T_IsNearSemiring'42'_2700 -> AgdaAny -> AgdaAny
d_zero'737'_2722 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_37331 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.isNearSemiring
d_isNearSemiring_2724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring'42'_2700 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
d_isNearSemiring_2724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_2724 v7
du_isNearSemiring_2724 ::
  T_IsNearSemiring'42'_2700 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066
du_isNearSemiring_2724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsNearSemiring'46'constructor_30503
      (coe d_'43''45'isMonoid_2716 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe d_'42''45'isSemigroup_2718 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe d_'42''45'isSemigroup_2718 (coe v0)))
      (coe d_distrib'691'_2720 (coe v0)) (coe d_zero'737'_2722 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*
d_IsSemiringWithoutAnnihilatingZero'42'_2764 a0 a1 a2 a3 a4 a5 a6
                                             a7
  = ()
data T_IsSemiringWithoutAnnihilatingZero'42'_2764
  = C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_39127 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
                                                                 MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2780 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2780 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_39127 v1 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.*-isMonoid
d_'42''45'isMonoid_2782 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_2782 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_39127 v1 v2 v3
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.distrib
d_distrib_2784 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2784 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_39127 v1 v2 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 v8
  = du_isSemiringWithoutAnnihilatingZero_2786 v8
du_isSemiringWithoutAnnihilatingZero_2786 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_2786 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
      (coe d_'43''45'isCommutativeMonoid_2780 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_2782 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe d_'42''45'isMonoid_2782 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_616
         (coe d_'42''45'isMonoid_2782 (coe v0)))
      (coe d_distrib_2784 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.identityʳ
d_identity'691'_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 -> AgdaAny -> AgdaAny
d_identity'691'_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2798 v8
du_identity'691'_2798 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 -> AgdaAny -> AgdaAny
du_identity'691'_2798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_646
      (coe d_'42''45'isMonoid_2782 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.identityˡ
d_identity'737'_2800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 -> AgdaAny -> AgdaAny
d_identity'737'_2800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2800 v8
du_identity'737'_2800 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 -> AgdaAny -> AgdaAny
du_identity'737'_2800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_644
      (coe d_'42''45'isMonoid_2782 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.isPartialEquivalence
d_isPartialEquivalence_2806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2806 v8
du_isPartialEquivalence_2806 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2806 v0
  = let v1 = d_'42''45'isMonoid_2782 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.isUnitalMagma
d_isUnitalMagma_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_2810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2810 v8
du_isUnitalMagma_2810 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_2810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
      (coe d_'42''45'isMonoid_2782 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.reflexive
d_reflexive_2814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2814 v8
du_reflexive_2814 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2814 v0
  = let v1 = d_'42''45'isMonoid_2782 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.setoid
d_setoid_2816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2816 v8
du_setoid_2816 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2816 v0
  = let v1 = d_'42''45'isMonoid_2782 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.∙-congʳ
d_'8729''45'cong'691'_2824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2824 v8
du_'8729''45'cong'691'_2824 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2824 v0
  = let v1 = d_'42''45'isMonoid_2782 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.∙-congˡ
d_'8729''45'cong'737'_2826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2826 v8
du_'8729''45'cong'737'_2826 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2764 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2826 v0
  = let v1 = d_'42''45'isMonoid_2782 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ
d_IsCommutativeSemiring'737'_2836 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'737'_2836
  = C_IsCommutativeSemiring'737''46'constructor_41409 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
                                                      MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                      (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2854 ::
  T_IsCommutativeSemiring'737'_2836 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2854 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_41409 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2856 ::
  T_IsCommutativeSemiring'737'_2836 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_2856 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_41409 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribʳ
d_distrib'691'_2858 ::
  T_IsCommutativeSemiring'737'_2836 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2858 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_41409 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroˡ
d_zero'737'_2860 ::
  T_IsCommutativeSemiring'737'_2836 -> AgdaAny -> AgdaAny
d_zero'737'_2860 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_41409 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.isCommutativeSemiring
d_isCommutativeSemiring_2862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_2836 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_2862 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_2862 v4 v5 v6 v8
du_isCommutativeSemiring_2862 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_2836 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_2862 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
         (coe
            MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
            (coe d_'43''45'isCommutativeMonoid_2854 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                        (coe d_'42''45'isCommutativeMonoid_2856 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_450
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                     (coe d_'42''45'isCommutativeMonoid_2856 (coe v3)))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe d_'42''45'isCommutativeMonoid_2856 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'691''8658'distr_528
               (let v4 = d_'43''45'isCommutativeMonoid_2854 (coe v3) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4) in
                   coe
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))
               (coe v1) (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                           (coe d_'43''45'isCommutativeMonoid_2854 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_666
                  (coe d_'42''45'isCommutativeMonoid_2856 (coe v3)))
               (coe d_distrib'691'_2858 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'737''8658'ze_372
            (let v4 = d_'43''45'isCommutativeMonoid_2854 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_666
               (coe d_'42''45'isCommutativeMonoid_2856 (coe v3)))
            (coe v2) (coe d_zero'737'_2860 (coe v3))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_666
         (coe d_'42''45'isCommutativeMonoid_2856 (coe v3)))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ
d_IsCommutativeSemiring'691'_2964 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'691'_2964
  = C_IsCommutativeSemiring'691''46'constructor_46457 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
                                                      MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                      (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2982 ::
  T_IsCommutativeSemiring'691'_2964 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2982 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_46457 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2984 ::
  T_IsCommutativeSemiring'691'_2964 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_2984 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_46457 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribˡ
d_distrib'737'_2986 ::
  T_IsCommutativeSemiring'691'_2964 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2986 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_46457 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroʳ
d_zero'691'_2988 ::
  T_IsCommutativeSemiring'691'_2964 -> AgdaAny -> AgdaAny
d_zero'691'_2988 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_46457 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.isCommutativeSemiring
d_isCommutativeSemiring_2990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_2964 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_2990 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_2990 v4 v5 v6 v8
du_isCommutativeSemiring_2990 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_2964 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_2990 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
         (coe
            MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
            (coe d_'43''45'isCommutativeMonoid_2982 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_448
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                        (coe d_'42''45'isCommutativeMonoid_2984 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_450
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                     (coe d_'42''45'isCommutativeMonoid_2984 (coe v3)))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_616
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe d_'42''45'isCommutativeMonoid_2984 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr_524
               (let v4 = d_'43''45'isCommutativeMonoid_2982 (coe v3) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4) in
                   coe
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_168
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))
               (coe v1) (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_448
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                           (coe d_'43''45'isCommutativeMonoid_2982 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_666
                  (coe d_'42''45'isCommutativeMonoid_2984 (coe v3)))
               (coe d_distrib'737'_2986 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'691''8658'ze_376
            (let v4 = d_'43''45'isCommutativeMonoid_2982 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_666
               (coe d_'42''45'isCommutativeMonoid_2984 (coe v3)))
            (coe v2) (coe d_zero'691'_2988 (coe v3))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_666
         (coe d_'42''45'isCommutativeMonoid_2984 (coe v3)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero
d_IsRingWithoutAnnihilatingZero_3094 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T_IsRingWithoutAnnihilatingZero_3094
  = C_IsRingWithoutAnnihilatingZero'46'constructor_51539 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
                                                         MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
                                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+-isAbelianGroup
d_'43''45'isAbelianGroup_3112 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_3112 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_51539 v1 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_3114 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_3114 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_51539 v1 v2 v3
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.distrib
d_distrib_3116 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3116 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_51539 v1 v2 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+._-_
d__'45'__3120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'45'__3120 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'45'__3120 v4 v6
du__'45'__3120 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__3120 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.assoc
d_assoc_3122 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe d_'43''45'isAbelianGroup_3112 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.comm
d_comm_3124 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_3124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_994
      (coe d_'43''45'isAbelianGroup_3112 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identity
d_identity_3126 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe d_'43''45'isAbelianGroup_3112 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identityʳ
d_identity'691'_3128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_identity'691'_3128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3128 v9
du_identity'691'_3128 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_identity'691'_3128 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_646
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identityˡ
d_identity'737'_3130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_identity'737'_3130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3130 v9
du_identity'737'_3130 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_identity'737'_3130 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_644
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverse
d_inverse_3132 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_3132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe d_'43''45'isAbelianGroup_3112 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverseʳ
d_inverse'691'_3134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_inverse'691'_3134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_3134 v9
du_inverse'691'_3134 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_inverse'691'_3134 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverseˡ
d_inverse'737'_3136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_inverse'737'_3136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_3136 v9
du_inverse'737'_3136 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_inverse'737'_3136 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'737'_954
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeMagma
d_isCommutativeMagma_3138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_3138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_3138 v9
du_isCommutativeMagma_3138 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_3138 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
               (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeMonoid
d_isCommutativeMonoid_3140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_3140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_3140 v9
du_isCommutativeMonoid_3140 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_isCommutativeMonoid_3140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
      (coe d_'43''45'isAbelianGroup_3112 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeSemigroup
d_isCommutativeSemigroup_3142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_3142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_3142 v9
du_isCommutativeSemigroup_3142 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_3142 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1052
            (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isEquivalence
d_isEquivalence_3144 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3144 v0
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
                  (coe d_'43''45'isAbelianGroup_3112 (coe v0))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isGroup
d_isGroup_3146 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_3146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe d_'43''45'isAbelianGroup_3112 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isInvertibleMagma
d_isInvertibleMagma_3148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_3148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_3148 v9
du_isInvertibleMagma_3148 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
du_isInvertibleMagma_3148 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_970
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_3150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_3150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_3150 v9
du_isInvertibleUnitalMagma_3150 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_3150 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_972
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isMagma
d_isMagma_3152 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_3152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe d_'43''45'isAbelianGroup_3112 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isMonoid
d_isMonoid_3154 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_3154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe d_'43''45'isAbelianGroup_3112 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isPartialEquivalence
d_isPartialEquivalence_3156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3156 v9
du_isPartialEquivalence_3156 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3156 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isSemigroup
d_isSemigroup_3158 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_3158 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe d_'43''45'isAbelianGroup_3112 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isUnitalMagma
d_isUnitalMagma_3160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_3160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3160 v9
du_isUnitalMagma_3160 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_3160 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.refl
d_refl_3162 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_refl_3162 v0
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
                     (coe d_'43''45'isAbelianGroup_3112 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.reflexive
d_reflexive_3164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3164 v9
du_reflexive_3164 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3164 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v5))
                       v6)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.setoid
d_setoid_3166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3166 v9
du_setoid_3166 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3166 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.sym
d_sym_3168 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3168 v0
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
                     (coe d_'43''45'isAbelianGroup_3112 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.trans
d_trans_3170 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3170 v0
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
                     (coe d_'43''45'isAbelianGroup_3112 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_3172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_3172 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_3172 v4 v6 v7 v9
du_unique'691''45''8315''185'_3172 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_3172 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_3112 (coe v3) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_968
         (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_3174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_3174 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_3174 v4 v6 v7 v9
du_unique'737''45''8315''185'_3174 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_3174 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_3112 (coe v3) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_962
         (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.⁻¹-cong
d_'8315''185''45'cong_3176 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_3176 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_910
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe d_'43''45'isAbelianGroup_3112 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-cong
d_'8729''45'cong_3178 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3178 v0
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
                  (coe d_'43''45'isAbelianGroup_3112 (coe v0))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-congʳ
d_'8729''45'cong'691'_3180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3180 v9
du_'8729''45'cong'691'_3180 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3180 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-congˡ
d_'8729''45'cong'737'_3182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3182 v9
du_'8729''45'cong'737'_3182 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3182 v0
  = let v1 = d_'43''45'isAbelianGroup_3112 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.assoc
d_assoc_3186 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe d_'42''45'isMonoid_3114 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identity
d_identity_3188 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3188 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe d_'42''45'isMonoid_3114 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identityʳ
d_identity'691'_3190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_identity'691'_3190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3190 v9
du_identity'691'_3190 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_identity'691'_3190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_646
      (coe d_'42''45'isMonoid_3114 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identityˡ
d_identity'737'_3192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_identity'737'_3192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3192 v9
du_identity'737'_3192 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_identity'737'_3192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_644
      (coe d_'42''45'isMonoid_3114 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isEquivalence
d_isEquivalence_3194 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe d_'42''45'isMonoid_3114 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isMagma
d_isMagma_3196 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_3196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe d_'42''45'isMonoid_3114 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isPartialEquivalence
d_isPartialEquivalence_3198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3198 v9
du_isPartialEquivalence_3198 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3198 v0
  = let v1 = d_'42''45'isMonoid_3114 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isSemigroup
d_isSemigroup_3200 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_3200 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe d_'42''45'isMonoid_3114 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isUnitalMagma
d_isUnitalMagma_3202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_3202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3202 v9
du_isUnitalMagma_3202 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_3202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
      (coe d_'42''45'isMonoid_3114 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.refl
d_refl_3204 ::
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_refl_3204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3114 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.reflexive
d_reflexive_3206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3206 v9
du_reflexive_3206 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3206 v0
  = let v1 = d_'42''45'isMonoid_3114 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.setoid
d_setoid_3208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3208 v9
du_setoid_3208 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3208 v0
  = let v1 = d_'42''45'isMonoid_3114 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.sym
d_sym_3210 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3114 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.trans
d_trans_3212 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3212 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3114 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-cong
d_'8729''45'cong_3214 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe d_'42''45'isMonoid_3114 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-congʳ
d_'8729''45'cong'691'_3216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3216 v9
du_'8729''45'cong'691'_3216 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3216 v0
  = let v1 = d_'42''45'isMonoid_3114 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-congˡ
d_'8729''45'cong'737'_3218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3218 v9
du_'8729''45'cong'737'_3218 ::
  T_IsRingWithoutAnnihilatingZero_3094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3218 v0
  = let v1 = d_'42''45'isMonoid_3114 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroˡ
d_zero'737'_3220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_zero'737'_3220 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_3220 v4 v5 v6 v7 v9
du_zero'737'_3220 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_zero'737'_3220 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_594
      (let v5 = d_'43''45'isAbelianGroup_3112 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
             coe
               (let v8
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe d_'43''45'isAbelianGroup_3112 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3114 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe d_'43''45'isAbelianGroup_3112 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_3116 (coe v4)))
      (let v5 = d_'43''45'isAbelianGroup_3112 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6)))))
      (let v5 = d_'43''45'isAbelianGroup_3112 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroʳ
d_zero'691'_3222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
d_zero'691'_3222 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_3222 v4 v5 v6 v7 v9
du_zero'691'_3222 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 -> AgdaAny -> AgdaAny
du_zero'691'_3222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_606
      (let v5 = d_'43''45'isAbelianGroup_3112 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
          coe
            (let v7
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6) in
             coe
               (let v8
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v8)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_906
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_992
                     (coe d_'43''45'isAbelianGroup_3112 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3114 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe d_'43''45'isAbelianGroup_3112 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe d_distrib_3116 (coe v4)))
      (let v5 = d_'43''45'isAbelianGroup_3112 (coe v4) in
       coe
         (let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_646
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v6)))))
      (let v5 = d_'43''45'isAbelianGroup_3112 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'691'_956
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v5))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zero
d_zero_3224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3224 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_3224 v4 v5 v6 v7 v9
du_zero_3224 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_3224 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_3220 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_zero'691'_3222 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.isRing
d_isRing_3226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_3226 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isRing_3226 v4 v5 v6 v7 v9
du_isRing_3226 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3094 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
du_isRing_3226 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_87335
      (coe d_'43''45'isAbelianGroup_3112 (coe v4))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3114 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe d_'42''45'isMonoid_3114 (coe v4))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_616
         (coe d_'42''45'isMonoid_3114 (coe v4)))
      (coe d_distrib_3116 (coe v4))
      (coe du_zero_3224 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.Biased.IsRing*
d_IsRing'42'_3238 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRing'42'_3238
  = C_IsRing'42''46'constructor_60239 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
                                      MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRing*.+-isAbelianGroup
d_'43''45'isAbelianGroup_3258 ::
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_3258 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_60239 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.*-isMonoid
d_'42''45'isMonoid_3260 ::
  T_IsRing'42'_3238 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'isMonoid_3260 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_60239 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.distrib
d_distrib_3262 ::
  T_IsRing'42'_3238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3262 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_60239 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.zero
d_zero_3264 ::
  T_IsRing'42'_3238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3264 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_60239 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.isRing
d_isRing_3266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_3266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRing_3266 v9
du_isRing_3266 ::
  T_IsRing'42'_3238 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2480
du_isRing_3266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_87335
      (coe d_'43''45'isAbelianGroup_3258 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe d_'42''45'isMonoid_3260 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_450
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe d_'42''45'isMonoid_3260 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_616
         (coe d_'42''45'isMonoid_3260 (coe v0)))
      (coe d_distrib_3262 (coe v0)) (coe d_zero_3264 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.identityʳ
d_identity'691'_3278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing'42'_3238 -> AgdaAny -> AgdaAny
d_identity'691'_3278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3278 v9
du_identity'691'_3278 :: T_IsRing'42'_3238 -> AgdaAny -> AgdaAny
du_identity'691'_3278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_646
      (coe d_'42''45'isMonoid_3260 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.identityˡ
d_identity'737'_3280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing'42'_3238 -> AgdaAny -> AgdaAny
d_identity'737'_3280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3280 v9
du_identity'737'_3280 :: T_IsRing'42'_3238 -> AgdaAny -> AgdaAny
du_identity'737'_3280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_644
      (coe d_'42''45'isMonoid_3260 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.isPartialEquivalence
d_isPartialEquivalence_3286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3286 v9
du_isPartialEquivalence_3286 ::
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3286 v0
  = let v1 = d_'42''45'isMonoid_3260 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.Biased.IsRing*._._.isUnitalMagma
d_isUnitalMagma_3290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_3290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3290 v9
du_isUnitalMagma_3290 ::
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_3290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
      (coe d_'42''45'isMonoid_3260 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.reflexive
d_reflexive_3294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3294 v9
du_reflexive_3294 ::
  T_IsRing'42'_3238 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3294 v0
  = let v1 = d_'42''45'isMonoid_3260 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsRing*._._.setoid
d_setoid_3296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3296 v9
du_setoid_3296 ::
  T_IsRing'42'_3238 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3296 v0
  = let v1 = d_'42''45'isMonoid_3260 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsRing*._._.∙-congʳ
d_'8729''45'cong'691'_3304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3304 v9
du_'8729''45'cong'691'_3304 ::
  T_IsRing'42'_3238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3304 v0
  = let v1 = d_'42''45'isMonoid_3260 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Structures.Biased.IsRing*._._.∙-congˡ
d_'8729''45'cong'737'_3306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3306 v9
du_'8729''45'cong'737'_3306 ::
  T_IsRing'42'_3238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3306 v0
  = let v1 = d_'42''45'isMonoid_3260 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
