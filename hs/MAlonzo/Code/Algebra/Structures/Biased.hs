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
d_IsCommutativeMonoid_158 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsCommutativeSemiring
d_IsCommutativeSemiring_164 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Structures.Biased._.IsMonoid
d_IsMonoid_196 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsNearSemiring
d_IsNearSemiring_200 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsRing
d_IsRing_212 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Algebra.Structures.Biased._.IsSemigroup
d_IsSemigroup_218 a0 a1 a2 a3 a4 = ()
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_224 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
-- Algebra.Structures.Biased._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_226 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsAbelianGroup._//_
d__'47''47'__234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__234 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du__'47''47'__234 v4 v6
du__'47''47'__234 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__234 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Algebra.Structures.Biased._.IsAbelianGroup.comm
d_comm_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_238 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_1146 (coe v0)
-- Algebra.Structures.Biased._.IsAbelianGroup.identityʳ
d_identity'691'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
d_identity'691'_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_242 v7
du_identity'691'_242 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
du_identity'691'_242 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_728
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.identityˡ
d_identity'737'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
d_identity'737'_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_244 v7
du_identity'737'_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
du_identity'737'_244 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_726
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.inverseʳ
d_inverse'691'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
d_inverse'691'_248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_248 v7
du_inverse'691'_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
du_inverse'691'_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.inverseˡ
d_inverse'737'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
d_inverse'737'_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_250 v7
du_inverse'737'_250 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny
du_inverse'737'_250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_1106
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_252 v7
du_isCommutativeMagma_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_252 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
            (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_254 ~v0 ~v1 ~v2 ~v3
  = du_isCommutativeMonoid_254
du_isCommutativeMonoid_254 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_254 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204 v3
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_256 v7
du_isCommutativeSemigroup_256 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
         (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isGroup
d_isGroup_260 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_260 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Algebra.Structures.Biased._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_262 v7
du_isInvertibleMagma_262 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_264 v7
du_isInvertibleUnitalMagma_264 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_270 v7
du_isPartialEquivalence_270 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_270 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))))))
-- Algebra.Structures.Biased._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_274 v7
du_isUnitalMagma_274 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_274 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.reflexive
d_reflexive_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_278 v7
du_reflexive_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_278 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v4))
                    v5))))
-- Algebra.Structures.Biased._.IsAbelianGroup.setoid
d_setoid_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_280 v7
du_setoid_280 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_280 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_200
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Structures.Biased._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_286 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_286 v4 v5 v6 v7
du_unique'691''45''8315''185'_286 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_286 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1120
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3))
-- Algebra.Structures.Biased._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_288 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_288 v4 v5 v6 v7
du_unique'737''45''8315''185'_288 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_288 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1114
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v3))
-- Algebra.Structures.Biased._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_294 v7
du_'8729''45'cong'691'_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_294 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Structures.Biased._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_296 v7
du_'8729''45'cong'737'_296 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_296 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3)))))
-- Algebra.Structures.Biased._.IsCommutativeMonoid.comm
d_comm_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_528 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_748 (coe v0)
-- Algebra.Structures.Biased._.IsCommutativeMonoid.isMonoid
d_isMonoid_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_544 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Algebra.Structures.Biased._.IsCommutativeSemiring.*-comm
d_'42''45'comm_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_728 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714 (coe v0)
-- Algebra.Structures.Biased._.IsCommutativeSemiring.isSemiring
d_isSemiring_798 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_798 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)
-- Algebra.Structures.Biased._.IsMonoid.identity
d_identity_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1610 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Algebra.Structures.Biased._.IsMonoid.identityʳ
d_identity'691'_1612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny
d_identity'691'_1612 ~v0 ~v1 ~v2 ~v3 = du_identity'691'_1612
du_identity'691'_1612 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny
du_identity'691'_1612 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_identity'691'_728 v2
-- Algebra.Structures.Biased._.IsMonoid.identityˡ
d_identity'737'_1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny
d_identity'737'_1614 ~v0 ~v1 ~v2 ~v3 = du_identity'737'_1614
du_identity'737'_1614 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny
du_identity'737'_1614 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_identity'737'_726 v2
-- Algebra.Structures.Biased._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_1620 v6
du_isPartialEquivalence_1620 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1620 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))))
-- Algebra.Structures.Biased._.IsMonoid.isSemigroup
d_isSemigroup_1622 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1622 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Algebra.Structures.Biased._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_1624 ~v0 ~v1 ~v2 ~v3 = du_isUnitalMagma_1624
du_isUnitalMagma_1624 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_1624 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730 v2
-- Algebra.Structures.Biased._.IsMonoid.reflexive
d_reflexive_1628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_1628 v6
du_reflexive_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1628 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v2))
              v3))
-- Algebra.Structures.Biased._.IsMonoid.setoid
d_setoid_1630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_1630 v6
du_setoid_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1630 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_200
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Algebra.Structures.Biased._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1638 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_1638 v6
du_'8729''45'cong'691'_1638 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1638 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Algebra.Structures.Biased._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_1640 v6
du_'8729''45'cong'737'_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1640 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v1)))
-- Algebra.Structures.Biased._.IsNearSemiring.*-assoc
d_'42''45'assoc_1710 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1710 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1240 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.*-cong
d_'42''45'cong_1712 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1712 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1238 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_1738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1236 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.distribʳ
d_distrib'691'_1744 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1744 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib'691'_1242 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.zeroˡ
d_zero'737'_1760 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218 ->
  AgdaAny -> AgdaAny
d_zero'737'_1760 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero'737'_1244 (coe v0)
-- Algebra.Structures.Biased._.IsRing.*-assoc
d_'42''45'assoc_2128 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2128 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2698 (coe v0)
-- Algebra.Structures.Biased._.IsRing.*-cong
d_'42''45'cong_2130 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2130 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2696 (coe v0)
-- Algebra.Structures.Biased._.IsRing.*-identity
d_'42''45'identity_2136 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700 (coe v0)
-- Algebra.Structures.Biased._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2164 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe v0)
-- Algebra.Structures.Biased._.IsRing.distrib
d_distrib_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2194 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2702 (coe v0)
-- Algebra.Structures.Biased._.IsSemigroup.assoc
d_assoc_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2356 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_482 (coe v0)
-- Algebra.Structures.Biased._.IsSemigroup.isMagma
d_isMagma_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2360 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2496 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1512 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2498 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2498 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1510 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2504 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2504 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1514 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2534 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1508
      (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2546 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2546 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1516 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2568 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2568 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1320 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2570 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2570 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1318 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2598 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1316
      (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.distrib
d_distrib_2604 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2604 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1322 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.zero
d_zero_2626 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2626 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1324 (coe v0)
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ
d_IsCommutativeMonoid'737'_2684 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'737'_2684
  = C_IsCommutativeMonoid'737''46'constructor_35015 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
                                                    (AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isSemigroup
d_isSemigroup_2696 ::
  T_IsCommutativeMonoid'737'_2684 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2696 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_35015 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityˡ
d_identity'737'_2698 ::
  T_IsCommutativeMonoid'737'_2684 -> AgdaAny -> AgdaAny
d_identity'737'_2698 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_35015 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.comm
d_comm_2700 ::
  T_IsCommutativeMonoid'737'_2684 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2700 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_35015 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isCommutativeMonoid
d_isCommutativeMonoid_2702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_2684 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2702 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_2702 v4 v5 v6
du_isCommutativeMonoid_2702 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_2684 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2702 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
         (coe d_isSemigroup_2696 (coe v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'737''8658'id_354
            (let v3 = d_isSemigroup_2696 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3))))
            (coe v0) (coe d_comm_2700 (coe v2)) (coe v1)
            (coe d_identity'737'_2698 (coe v2))))
      (coe d_comm_2700 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ
d_IsCommutativeMonoid'691'_2738 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'691'_2738
  = C_IsCommutativeMonoid'691''46'constructor_36457 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
                                                    (AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isSemigroup
d_isSemigroup_2750 ::
  T_IsCommutativeMonoid'691'_2738 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_2750 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_36457 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityʳ
d_identity'691'_2752 ::
  T_IsCommutativeMonoid'691'_2738 -> AgdaAny -> AgdaAny
d_identity'691'_2752 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_36457 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.comm
d_comm_2754 ::
  T_IsCommutativeMonoid'691'_2738 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2754 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_36457 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isCommutativeMonoid
d_isCommutativeMonoid_2756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_2738 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_2756 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_2756 v4 v5 v6
du_isCommutativeMonoid_2756 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_2738 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_2756 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
         (coe d_isSemigroup_2750 (coe v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'691''8658'id_358
            (let v3 = d_isSemigroup_2750 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v3))))
            (coe v0) (coe d_comm_2754 (coe v2)) (coe v1)
            (coe d_identity'691'_2752 (coe v2))))
      (coe d_comm_2754 (coe v2))
-- Algebra.Structures.Biased.IsSemiringWithoutOne*
d_IsSemiringWithoutOne'42'_2794 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringWithoutOne'42'_2794
  = C_IsSemiringWithoutOne'42''46'constructor_37937 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
                                                    MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2810 ::
  T_IsSemiringWithoutOne'42'_2794 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2810 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_37937 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.*-isSemigroup
d_'42''45'isSemigroup_2812 ::
  T_IsSemiringWithoutOne'42'_2794 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2812 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_37937 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.distrib
d_distrib_2814 ::
  T_IsSemiringWithoutOne'42'_2794 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2814 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_37937 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.zero
d_zero_2816 ::
  T_IsSemiringWithoutOne'42'_2794 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2816 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'42''46'constructor_37937 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.isSemiringWithoutOne
d_isSemiringWithoutOne_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne'42'_2794 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
d_isSemiringWithoutOne_2818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringWithoutOne_2818 v7
du_isSemiringWithoutOne_2818 ::
  T_IsSemiringWithoutOne'42'_2794 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1298
du_isSemiringWithoutOne_2818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutOne'46'constructor_37629
      (coe d_'43''45'isCommutativeMonoid_2810 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe d_'42''45'isSemigroup_2812 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe d_'42''45'isSemigroup_2812 (coe v0)))
      (coe d_distrib_2814 (coe v0)) (coe d_zero_2816 (coe v0))
-- Algebra.Structures.Biased.IsNearSemiring*
d_IsNearSemiring'42'_2856 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiring'42'_2856
  = C_IsNearSemiring'42''46'constructor_39751 MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
                                              MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                              (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsNearSemiring*.+-isMonoid
d_'43''45'isMonoid_2872 ::
  T_IsNearSemiring'42'_2856 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'isMonoid_2872 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_39751 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.*-isSemigroup
d_'42''45'isSemigroup_2874 ::
  T_IsNearSemiring'42'_2856 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_2874 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_39751 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.distribʳ
d_distrib'691'_2876 ::
  T_IsNearSemiring'42'_2856 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2876 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_39751 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.zeroˡ
d_zero'737'_2878 :: T_IsNearSemiring'42'_2856 -> AgdaAny -> AgdaAny
d_zero'737'_2878 v0
  = case coe v0 of
      C_IsNearSemiring'42''46'constructor_39751 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.isNearSemiring
d_isNearSemiring_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring'42'_2856 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
d_isNearSemiring_2880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_2880 v7
du_isNearSemiring_2880 ::
  T_IsNearSemiring'42'_2856 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1218
du_isNearSemiring_2880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsNearSemiring'46'constructor_35025
      (coe d_'43''45'isMonoid_2872 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe d_'42''45'isSemigroup_2874 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe d_'42''45'isSemigroup_2874 (coe v0)))
      (coe d_distrib'691'_2876 (coe v0)) (coe d_zero'737'_2878 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*
d_IsSemiringWithoutAnnihilatingZero'42'_2920 a0 a1 a2 a3 a4 a5 a6
                                             a7
  = ()
data T_IsSemiringWithoutAnnihilatingZero'42'_2920
  = C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_41559 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
                                                                 MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2936 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2936 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_41559 v1 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.*-isMonoid
d_'42''45'isMonoid_2938 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_2938 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_41559 v1 v2 v3
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.distrib
d_distrib_2940 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2940 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'42''46'constructor_41559 v1 v2 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 v8
  = du_isSemiringWithoutAnnihilatingZero_2942 v8
du_isSemiringWithoutAnnihilatingZero_2942 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
du_isSemiringWithoutAnnihilatingZero_2942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
      (coe d_'43''45'isCommutativeMonoid_2936 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_2938 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe d_'42''45'isMonoid_2938 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_698
         (coe d_'42''45'isMonoid_2938 (coe v0)))
      (coe d_distrib_2940 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.identityʳ
d_identity'691'_2954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 -> AgdaAny -> AgdaAny
d_identity'691'_2954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2954 v8
du_identity'691'_2954 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 -> AgdaAny -> AgdaAny
du_identity'691'_2954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_728
      (coe d_'42''45'isMonoid_2938 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.identityˡ
d_identity'737'_2956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 -> AgdaAny -> AgdaAny
d_identity'737'_2956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2956 v8
du_identity'737'_2956 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 -> AgdaAny -> AgdaAny
du_identity'737'_2956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_726
      (coe d_'42''45'isMonoid_2938 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.isPartialEquivalence
d_isPartialEquivalence_2962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2962 v8
du_isPartialEquivalence_2962 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2962 v0
  = let v1 = d_'42''45'isMonoid_2938 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.isUnitalMagma
d_isUnitalMagma_2966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_2966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2966 v8
du_isUnitalMagma_2966 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_2966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe d_'42''45'isMonoid_2938 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.reflexive
d_reflexive_2970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2970 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2970 v8
du_reflexive_2970 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2970 v0
  = let v1 = d_'42''45'isMonoid_2938 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.setoid
d_setoid_2972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2972 v8
du_setoid_2972 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2972 v0
  = let v1 = d_'42''45'isMonoid_2938 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.∙-congʳ
d_'8729''45'cong'691'_2980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2980 v8
du_'8729''45'cong'691'_2980 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2980 v0
  = let v1 = d_'42''45'isMonoid_2938 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.∙-congˡ
d_'8729''45'cong'737'_2982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2982 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2982 v8
du_'8729''45'cong'737'_2982 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2982 v0
  = let v1 = d_'42''45'isMonoid_2938 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ
d_IsCommutativeSemiring'737'_2992 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'737'_2992
  = C_IsCommutativeSemiring'737''46'constructor_43847 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
                                                      MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                      (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_3010 ::
  T_IsCommutativeSemiring'737'_2992 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_3010 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_43847 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3012 ::
  T_IsCommutativeSemiring'737'_2992 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_3012 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_43847 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribʳ
d_distrib'691'_3014 ::
  T_IsCommutativeSemiring'737'_2992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_3014 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_43847 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroˡ
d_zero'737'_3016 ::
  T_IsCommutativeSemiring'737'_2992 -> AgdaAny -> AgdaAny
d_zero'737'_3016 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_43847 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.isCommutativeSemiring
d_isCommutativeSemiring_3018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_2992 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_3018 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_3018 v4 v5 v6 v8
du_isCommutativeSemiring_3018 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_2992 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_isCommutativeSemiring_3018 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
         (coe
            MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
            (coe d_'43''45'isCommutativeMonoid_3010 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                        (coe d_'42''45'isCommutativeMonoid_3012 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_482
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                     (coe d_'42''45'isCommutativeMonoid_3012 (coe v3)))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_698
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe d_'42''45'isCommutativeMonoid_3012 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'691''8658'distr_530
               (let v4 = d_'43''45'isCommutativeMonoid_3010 (coe v3) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                   coe
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))
               (coe v1) (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                           (coe d_'43''45'isCommutativeMonoid_3010 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_748
                  (coe d_'42''45'isCommutativeMonoid_3012 (coe v3)))
               (coe d_distrib'691'_3014 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'737''8658'ze_374
            (let v4 = d_'43''45'isCommutativeMonoid_3010 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_748
               (coe d_'42''45'isCommutativeMonoid_3012 (coe v3)))
            (coe v2) (coe d_zero'737'_3016 (coe v3))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_748
         (coe d_'42''45'isCommutativeMonoid_3012 (coe v3)))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ
d_IsCommutativeSemiring'691'_3120 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'691'_3120
  = C_IsCommutativeSemiring'691''46'constructor_48907 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
                                                      MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                      (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_3138 ::
  T_IsCommutativeSemiring'691'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_3138 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_48907 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3140 ::
  T_IsCommutativeSemiring'691'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'isCommutativeMonoid_3140 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_48907 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribˡ
d_distrib'737'_3142 ::
  T_IsCommutativeSemiring'691'_3120 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_3142 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_48907 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroʳ
d_zero'691'_3144 ::
  T_IsCommutativeSemiring'691'_3120 -> AgdaAny -> AgdaAny
d_zero'691'_3144 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_48907 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.isCommutativeSemiring
d_isCommutativeSemiring_3146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_isCommutativeSemiring_3146 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_3146 v4 v5 v6 v8
du_isCommutativeSemiring_3146 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_isCommutativeSemiring_3146 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
         (coe
            MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
            (coe d_'43''45'isCommutativeMonoid_3138 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_480
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                        (coe d_'42''45'isCommutativeMonoid_3140 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_482
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                     (coe d_'42''45'isCommutativeMonoid_3140 (coe v3)))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_698
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                  (coe d_'42''45'isCommutativeMonoid_3140 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr_526
               (let v4 = d_'43''45'isCommutativeMonoid_3138 (coe v3) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                   coe
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))
               (coe v1) (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                           (coe d_'43''45'isCommutativeMonoid_3138 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_748
                  (coe d_'42''45'isCommutativeMonoid_3140 (coe v3)))
               (coe d_distrib'737'_3142 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'691''8658'ze_378
            (let v4 = d_'43''45'isCommutativeMonoid_3138 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v6))))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_748
               (coe d_'42''45'isCommutativeMonoid_3140 (coe v3)))
            (coe v2) (coe d_zero'691'_3144 (coe v3))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_748
         (coe d_'42''45'isCommutativeMonoid_3140 (coe v3)))
-- Algebra.Structures.Biased.IsRing*
d_IsRing'42'_3250 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRing'42'_3250
  = C_IsRing'42''46'constructor_54031 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
                                      MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRing*.+-isAbelianGroup
d_'43''45'isAbelianGroup_3270 ::
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_3270 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_54031 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.*-isMonoid
d_'42''45'isMonoid_3272 ::
  T_IsRing'42'_3250 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_3272 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_54031 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.distrib
d_distrib_3274 ::
  T_IsRing'42'_3250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3274 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_54031 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.zero
d_zero_3276 ::
  T_IsRing'42'_3250 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3276 v0
  = case coe v0 of
      C_IsRing'42''46'constructor_54031 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.isRing
d_isRing_3278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_3278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRing_3278 v9
du_isRing_3278 ::
  T_IsRing'42'_3250 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2672
du_isRing_3278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_96683
      (coe d_'43''45'isAbelianGroup_3270 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3272 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe d_'42''45'isMonoid_3272 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_698
         (coe d_'42''45'isMonoid_3272 (coe v0)))
      (coe d_distrib_3274 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.identityʳ
d_identity'691'_3290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing'42'_3250 -> AgdaAny -> AgdaAny
d_identity'691'_3290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3290 v9
du_identity'691'_3290 :: T_IsRing'42'_3250 -> AgdaAny -> AgdaAny
du_identity'691'_3290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_728
      (coe d_'42''45'isMonoid_3272 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.identityˡ
d_identity'737'_3292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing'42'_3250 -> AgdaAny -> AgdaAny
d_identity'737'_3292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3292 v9
du_identity'737'_3292 :: T_IsRing'42'_3250 -> AgdaAny -> AgdaAny
du_identity'737'_3292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_726
      (coe d_'42''45'isMonoid_3272 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.isPartialEquivalence
d_isPartialEquivalence_3298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3298 v9
du_isPartialEquivalence_3298 ::
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3298 v0
  = let v1 = d_'42''45'isMonoid_3272 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Algebra.Structures.Biased.IsRing*._._.isUnitalMagma
d_isUnitalMagma_3302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_3302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3302 v9
du_isUnitalMagma_3302 ::
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_3302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe d_'42''45'isMonoid_3272 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.reflexive
d_reflexive_3306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3306 v9
du_reflexive_3306 ::
  T_IsRing'42'_3250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3306 v0
  = let v1 = d_'42''45'isMonoid_3272 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsRing*._._.setoid
d_setoid_3308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3308 v9
du_setoid_3308 ::
  T_IsRing'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3308 v0
  = let v1 = d_'42''45'isMonoid_3272 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsRing*._._.∙-congʳ
d_'8729''45'cong'691'_3316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3316 v9
du_'8729''45'cong'691'_3316 ::
  T_IsRing'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3316 v0
  = let v1 = d_'42''45'isMonoid_3272 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsRing*._._.∙-congˡ
d_'8729''45'cong'737'_3318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3318 v9
du_'8729''45'cong'737'_3318 ::
  T_IsRing'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3318 v0
  = let v1 = d_'42''45'isMonoid_3272 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero
d_IsRingWithoutAnnihilatingZero_3330 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T_IsRingWithoutAnnihilatingZero_3330
  = C_IsRingWithoutAnnihilatingZero'46'constructor_56639 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
                                                         MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
                                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+-isAbelianGroup
d_'43''45'isAbelianGroup_3348 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_3348 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_56639 v1 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_3350 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'isMonoid_3350 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_56639 v1 v2 v3
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.distrib
d_distrib_3352 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3352 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_56639 v1 v2 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+._//_
d__'47''47'__3356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__3356 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'47''47'__3356 v4 v6
du__'47''47'__3356 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__3356 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1098 (coe v0)
      (coe v1)
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.assoc
d_assoc_3358 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3358 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe d_'43''45'isAbelianGroup_3348 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.comm
d_comm_3360 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_3360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_1146
      (coe d_'43''45'isAbelianGroup_3348 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identity
d_identity_3362 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3362 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe d_'43''45'isAbelianGroup_3348 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identityʳ
d_identity'691'_3364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_identity'691'_3364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3364 v9
du_identity'691'_3364 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_identity'691'_3364 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_728
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identityˡ
d_identity'737'_3366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_identity'737'_3366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3366 v9
du_identity'737'_3366 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_identity'737'_3366 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_726
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverse
d_inverse_3368 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_3368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1052
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe d_'43''45'isAbelianGroup_3348 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverseʳ
d_inverse'691'_3370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_inverse'691'_3370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_3370 v9
du_inverse'691'_3370 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_inverse'691'_3370 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverseˡ
d_inverse'737'_3372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_inverse'737'_3372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_3372 v9
du_inverse'737'_3372 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_inverse'737'_3372 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'737'_1106
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeMagma
d_isCommutativeMagma_3374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
d_isCommutativeMagma_3374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_3374 v9
du_isCommutativeMagma_3374 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_212
du_isCommutativeMagma_3374 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_586
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
               (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeMonoid
d_isCommutativeMonoid_3376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_isCommutativeMonoid_3376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_3376 v9
du_isCommutativeMonoid_3376 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_isCommutativeMonoid_3376 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
      (coe d_'43''45'isAbelianGroup_3348 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeSemigroup
d_isCommutativeSemigroup_3378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_isCommutativeSemigroup_3378 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_3378 v9
du_isCommutativeSemigroup_3378 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
du_isCommutativeSemigroup_3378 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_786
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1204
            (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isEquivalence
d_isEquivalence_3380 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe d_'43''45'isAbelianGroup_3348 (coe v0))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isGroup
d_isGroup_3382 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_3382 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1144
      (coe d_'43''45'isAbelianGroup_3348 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isInvertibleMagma
d_isInvertibleMagma_3384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
d_isInvertibleMagma_3384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_3384 v9
du_isInvertibleMagma_3384 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_924
du_isInvertibleMagma_3384 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1122
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_3386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
d_isInvertibleUnitalMagma_3386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_3386 v9
du_isInvertibleUnitalMagma_3386 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_976
du_isInvertibleUnitalMagma_3386 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1124
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isMagma
d_isMagma_3388 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_3388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1144
               (coe d_'43''45'isAbelianGroup_3348 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isMonoid
d_isMonoid_3390 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_3390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe d_'43''45'isAbelianGroup_3348 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isPartialEquivalence
d_isPartialEquivalence_3392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3392 v9
du_isPartialEquivalence_3392 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3392 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isSemigroup
d_isSemigroup_3394 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_3394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1144
            (coe d_'43''45'isAbelianGroup_3348 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isUnitalMagma
d_isUnitalMagma_3396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_3396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3396 v9
du_isUnitalMagma_3396 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_3396 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.refl
d_refl_3398 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_refl_3398 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe d_'43''45'isAbelianGroup_3348 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.reflexive
d_reflexive_3400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3400 v9
du_reflexive_3400 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3400 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v5))
                       v6)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.setoid
d_setoid_3402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3402 v9
du_setoid_3402 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3402 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_200
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.sym
d_sym_3404 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3404 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe d_'43''45'isAbelianGroup_3348 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.trans
d_trans_3406 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3406 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe d_'43''45'isAbelianGroup_3348 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_3408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_3408 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_3408 v4 v6 v7 v9
du_unique'691''45''8315''185'_3408 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_3408 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_3348 (coe v3) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1120
         (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_3410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_3410 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_3410 v4 v6 v7 v9
du_unique'737''45''8315''185'_3410 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_3410 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_3348 (coe v3) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1114
         (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.⁻¹-cong
d_'8315''185''45'cong_3412 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_3412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1054
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1144
         (coe d_'43''45'isAbelianGroup_3348 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-cong
d_'8729''45'cong_3414 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe d_'43''45'isAbelianGroup_3348 (coe v0))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-congʳ
d_'8729''45'cong'691'_3416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3416 v9
du_'8729''45'cong'691'_3416 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3416 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-congˡ
d_'8729''45'cong'737'_3418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3418 v9
du_'8729''45'cong'737'_3418 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3418 v0
  = let v1 = d_'43''45'isAbelianGroup_3348 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.assoc
d_assoc_3422 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_482
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe d_'42''45'isMonoid_3350 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identity
d_identity_3424 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_698
      (coe d_'42''45'isMonoid_3350 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identityʳ
d_identity'691'_3426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_identity'691'_3426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3426 v9
du_identity'691'_3426 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_identity'691'_3426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_728
      (coe d_'42''45'isMonoid_3350 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identityˡ
d_identity'737'_3428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_identity'737'_3428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3428 v9
du_identity'737'_3428 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_identity'737'_3428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_726
      (coe d_'42''45'isMonoid_3350 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isEquivalence
d_isEquivalence_3430 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe d_'42''45'isMonoid_3350 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isMagma
d_isMagma_3432 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_3432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_480
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
         (coe d_'42''45'isMonoid_3350 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isPartialEquivalence
d_isPartialEquivalence_3434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3434 v9
du_isPartialEquivalence_3434 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3434 v0
  = let v1 = d_'42''45'isMonoid_3350 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isSemigroup
d_isSemigroup_3436 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_3436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
      (coe d_'42''45'isMonoid_3350 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isUnitalMagma
d_isUnitalMagma_3438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
d_isUnitalMagma_3438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3438 v9
du_isUnitalMagma_3438 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_642
du_isUnitalMagma_3438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_730
      (coe d_'42''45'isMonoid_3350 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.refl
d_refl_3440 ::
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_refl_3440 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3350 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.reflexive
d_reflexive_3442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3442 v9
du_reflexive_3442 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3442 v0
  = let v1 = d_'42''45'isMonoid_3350 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.setoid
d_setoid_3444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3444 v9
du_setoid_3444 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3444 v0
  = let v1 = d_'42''45'isMonoid_3350 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_200
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.sym
d_sym_3446 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3446 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3350 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.trans
d_trans_3448 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3448 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3350 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-cong
d_'8729''45'cong_3450 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_480
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe d_'42''45'isMonoid_3350 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-congʳ
d_'8729''45'cong'691'_3452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3452 v9
du_'8729''45'cong'691'_3452 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3452 v0
  = let v1 = d_'42''45'isMonoid_3350 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_206
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-congˡ
d_'8729''45'cong'737'_3454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3454 v9
du_'8729''45'cong'737'_3454 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3454 v0
  = let v1 = d_'42''45'isMonoid_3350 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroˡ
d_zero'737'_3456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_zero'737'_3456 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_3456 v4 v5 v6 v7 v9
du_zero'737'_3456 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_zero'737'_3456 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_596
      (let v5 = d_'43''45'isAbelianGroup_3348 (coe v4) in
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
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe d_'43''45'isAbelianGroup_3348 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3350 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe d_'43''45'isAbelianGroup_3348 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_3352 (coe v4)))
      (let v5 = d_'43''45'isAbelianGroup_3348 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_728
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6)))))
      (let v5 = d_'43''45'isAbelianGroup_3348 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroʳ
d_zero'691'_3458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
d_zero'691'_3458 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_3458 v4 v5 v6 v7 v9
du_zero'691'_3458 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 -> AgdaAny -> AgdaAny
du_zero'691'_3458 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_608
      (let v5 = d_'43''45'isAbelianGroup_3348 (coe v4) in
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
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v8)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                     (coe d_'43''45'isAbelianGroup_3348 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3350 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1050
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1144
                  (coe d_'43''45'isAbelianGroup_3348 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe d_distrib_3352 (coe v4)))
      (let v5 = d_'43''45'isAbelianGroup_3348 (coe v4) in
       coe
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_identity'691'_728
               (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v6)))))
      (let v5 = d_'43''45'isAbelianGroup_3348 (coe v4) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_inverse'691'_1108
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v5))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zero
d_zero_3460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3460 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_3460 v4 v5 v6 v7 v9
du_zero_3460 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_3460 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_3456 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_zero'691'_3458 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.isRing
d_isRing_3462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_3462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRing_3462 v9
du_isRing_3462 ::
  T_IsRingWithoutAnnihilatingZero_3330 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
du_isRing_3462 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_96683
      (coe d_'43''45'isAbelianGroup_3348 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_480
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
               (coe d_'42''45'isMonoid_3350 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_482
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
            (coe d_'42''45'isMonoid_3350 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_698
         (coe d_'42''45'isMonoid_3350 (coe v0)))
      (coe d_distrib_3352 (coe v0))
