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
import qualified MAlonzo.Code.Algebra.Consequences.Base
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
d_Commutative_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_44 = erased
-- Algebra.Structures.Biased._.LeftIdentity
d_LeftIdentity_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_86 = erased
-- Algebra.Structures.Biased._.LeftZero
d_LeftZero_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_94 = erased
-- Algebra.Structures.Biased._.RightIdentity
d_RightIdentity_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_116 = erased
-- Algebra.Structures.Biased._.RightZero
d_RightZero_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_124 = erased
-- Algebra.Structures.Biased._.Zero
d_Zero_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_144 = erased
-- Algebra.Structures.Biased._.IsAbelianGroup
d_IsAbelianGroup_148 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsCommutativeMonoid
d_IsCommutativeMonoid_180 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsCommutativeSemiring
d_IsCommutativeSemiring_192 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Structures.Biased._.IsMonoid
d_IsMonoid_256 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsNearSemiring
d_IsNearSemiring_264 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsRing
d_IsRing_288 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Algebra.Structures.Biased._.IsSemigroup
d_IsSemigroup_300 a0 a1 a2 a3 a4 = ()
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_312 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
-- Algebra.Structures.Biased._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_316 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsAbelianGroup._//_
d__'47''47'__330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__330 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du__'47''47'__330 v4 v6
du__'47''47'__330 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__330 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Algebra.Structures.Biased._.IsAbelianGroup.comm
d_comm_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_334 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_1188 (coe v0)
-- Algebra.Structures.Biased._.IsAbelianGroup.identityʳ
d_identity'691'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
d_identity'691'_338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_338 v7
du_identity'691'_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
du_identity'691'_338 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_756
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.identityˡ
d_identity'737'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
d_identity'737'_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_340 v7
du_identity'737'_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
du_identity'737'_340 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_754
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.inverseʳ
d_inverse'691'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
d_inverse'691'_344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_344 v7
du_inverse'691'_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
du_inverse'691'_344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.inverseˡ
d_inverse'737'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
d_inverse'737'_346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_346 v7
du_inverse'737'_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny
du_inverse'737'_346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_1146
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeMagma
d_isCommutativeMagma_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_348 v7
du_isCommutativeMagma_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_348 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
            (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_350 ~v0 ~v1 ~v2 ~v3
  = du_isCommutativeMonoid_350
du_isCommutativeMonoid_350 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_350 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246 v3
-- Algebra.Structures.Biased._.IsAbelianGroup.isCommutativeSemigroup
d_isCommutativeSemigroup_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_352 v7
du_isCommutativeSemigroup_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
         (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isGroup
d_isGroup_356 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_356 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)
-- Algebra.Structures.Biased._.IsAbelianGroup.isInvertibleMagma
d_isInvertibleMagma_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_358 v7
du_isInvertibleMagma_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_358 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_360 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_360 v7
du_isInvertibleUnitalMagma_360 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0))
-- Algebra.Structures.Biased._.IsAbelianGroup.isPartialEquivalence
d_isPartialEquivalence_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_366 v7
du_isPartialEquivalence_366 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_366 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))))))
-- Algebra.Structures.Biased._.IsAbelianGroup.isUnitalMagma
d_isUnitalMagma_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_370 v7
du_isUnitalMagma_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_370 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1)))
-- Algebra.Structures.Biased._.IsAbelianGroup.reflexive
d_reflexive_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_374 v7
du_reflexive_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_374 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v4))
                    v5))))
-- Algebra.Structures.Biased._.IsAbelianGroup.setoid
d_setoid_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_376 v7
du_setoid_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_376 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3)))))
-- Algebra.Structures.Biased._.IsAbelianGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_382 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_382 v4 v5 v6 v7
du_unique'691''45''8315''185'_382 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_382 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1160
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3))
-- Algebra.Structures.Biased._.IsAbelianGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_384 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_384 v4 v5 v6 v7
du_unique'737''45''8315''185'_384 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_384 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1154
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v3))
-- Algebra.Structures.Biased._.IsAbelianGroup.∙-congʳ
d_'8729''45'cong'691'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_390 v7
du_'8729''45'cong'691'_390 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_390 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.Biased._.IsAbelianGroup.∙-congˡ
d_'8729''45'cong'737'_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_392 v7
du_'8729''45'cong'737'_392 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_392 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v3) in
             coe
               (let v5
                      = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.Biased._.IsCommutativeMonoid.comm
d_comm_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_850 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_778 (coe v0)
-- Algebra.Structures.Biased._.IsCommutativeMonoid.isMonoid
d_isMonoid_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_866 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)
-- Algebra.Structures.Biased._.IsCommutativeSemiring.*-comm
d_'42''45'comm_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1050 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1768 (coe v0)
-- Algebra.Structures.Biased._.IsCommutativeSemiring.isSemiring
d_isSemiring_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1120 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)
-- Algebra.Structures.Biased._.IsMonoid.identity
d_identity_1932 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1932 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Algebra.Structures.Biased._.IsMonoid.identityʳ
d_identity'691'_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_1934 ~v0 ~v1 ~v2 ~v3 = du_identity'691'_1934
du_identity'691'_1934 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_1934 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_identity'691'_756 v2
-- Algebra.Structures.Biased._.IsMonoid.identityˡ
d_identity'737'_1936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_1936 ~v0 ~v1 ~v2 ~v3 = du_identity'737'_1936
du_identity'737'_1936 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_1936 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_identity'737'_754 v2
-- Algebra.Structures.Biased._.IsMonoid.isPartialEquivalence
d_isPartialEquivalence_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_1942 v6
du_isPartialEquivalence_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1942 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))))
-- Algebra.Structures.Biased._.IsMonoid.isSemigroup
d_isSemigroup_1944 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1944 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Algebra.Structures.Biased._.IsMonoid.isUnitalMagma
d_isUnitalMagma_1946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_1946 ~v0 ~v1 ~v2 ~v3 = du_isUnitalMagma_1946
du_isUnitalMagma_1946 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_1946 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758 v2
-- Algebra.Structures.Biased._.IsMonoid.reflexive
d_reflexive_1950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_1950 v6
du_reflexive_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1950 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
              (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v2))
              v3))
-- Algebra.Structures.Biased._.IsMonoid.setoid
d_setoid_1952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1952 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_1952 v6
du_setoid_1952 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1952 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1)))
-- Algebra.Structures.Biased._.IsMonoid.∙-congʳ
d_'8729''45'cong'691'_1960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_1960 v6
du_'8729''45'cong'691'_1960 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1960 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.Biased._.IsMonoid.∙-congˡ
d_'8729''45'cong'737'_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_1962 v6
du_'8729''45'cong'737'_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1962 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v1) in
       coe
         (let v3
                = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.Biased._.IsNearSemiring.*-assoc
d_'42''45'assoc_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2032 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1284 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.*-cong
d_'42''45'cong_2034 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2034 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1282 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_2060 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_2060 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1280 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.distribʳ
d_distrib'691'_2066 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2066 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib'691'_1286 (coe v0)
-- Algebra.Structures.Biased._.IsNearSemiring.zeroˡ
d_zero'737'_2082 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny
d_zero'737'_2082 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero'737'_1288 (coe v0)
-- Algebra.Structures.Biased._.IsRing.*-assoc
d_'42''45'assoc_2450 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2450 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2894 (coe v0)
-- Algebra.Structures.Biased._.IsRing.*-cong
d_'42''45'cong_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2452 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2892 (coe v0)
-- Algebra.Structures.Biased._.IsRing.*-identity
d_'42''45'identity_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896 (coe v0)
-- Algebra.Structures.Biased._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2486 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe v0)
-- Algebra.Structures.Biased._.IsRing.distrib
d_distrib_2516 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2516 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2898 (coe v0)
-- Algebra.Structures.Biased._.IsSemigroup.assoc
d_assoc_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2678 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_500 (coe v0)
-- Algebra.Structures.Biased._.IsSemigroup.isMagma
d_isMagma_2682 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2682 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2818 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1562 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2820 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2820 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1560 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2826 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1564 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2856 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1558
      (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2868 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2868 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1566 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2890 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2890 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_1366 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2892 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2892 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_1364 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2920 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1362
      (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.distrib
d_distrib_2926 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2926 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1368 (coe v0)
-- Algebra.Structures.Biased._.IsSemiringWithoutOne.zero
d_zero_2948 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2948 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1370 (coe v0)
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ
d_IsCommutativeMonoid'737'_3006 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'737'_3006
  = C_constructor_3056 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
                       (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isSemigroup
d_isSemigroup_3018 ::
  T_IsCommutativeMonoid'737'_3006 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3018 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityˡ
d_identity'737'_3020 ::
  T_IsCommutativeMonoid'737'_3006 -> AgdaAny -> AgdaAny
d_identity'737'_3020 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.comm
d_comm_3022 ::
  T_IsCommutativeMonoid'737'_3006 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_3022 v0
  = case coe v0 of
      C_constructor_3056 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isCommutativeMonoid
d_isCommutativeMonoid_3024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_3006 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_3024 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_3024 v4 v5 v6
du_isCommutativeMonoid_3024 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_3006 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_3024 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_760
         (coe d_isSemigroup_3018 (coe v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'737''8658'id_382
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe d_isSemigroup_3018 (coe v2))))
            (coe v0) (coe d_comm_3022 (coe v2)) (coe v1)
            (coe d_identity'737'_3020 (coe v2))))
      (coe d_comm_3022 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ
d_IsCommutativeMonoid'691'_3062 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'691'_3062
  = C_constructor_3112 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
                       (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isSemigroup
d_isSemigroup_3074 ::
  T_IsCommutativeMonoid'691'_3062 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3074 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityʳ
d_identity'691'_3076 ::
  T_IsCommutativeMonoid'691'_3062 -> AgdaAny -> AgdaAny
d_identity'691'_3076 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.comm
d_comm_3078 ::
  T_IsCommutativeMonoid'691'_3062 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_3078 v0
  = case coe v0 of
      C_constructor_3112 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isCommutativeMonoid
d_isCommutativeMonoid_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_3062 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_3080 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_3080 v4 v5 v6
du_isCommutativeMonoid_3080 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_3062 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_3080 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_760
         (coe d_isSemigroup_3074 (coe v2))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'691''8658'id_386
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe d_isSemigroup_3074 (coe v2))))
            (coe v0) (coe d_comm_3078 (coe v2)) (coe v1)
            (coe d_identity'691'_3076 (coe v2))))
      (coe d_comm_3078 (coe v2))
-- Algebra.Structures.Biased.IsSemiringWithoutOne*
d_IsSemiringWithoutOne'42'_3120 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringWithoutOne'42'_3120
  = C_constructor_3176 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
                       MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_3136 ::
  T_IsSemiringWithoutOne'42'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_3136 v0
  = case coe v0 of
      C_constructor_3176 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.*-isSemigroup
d_'42''45'isSemigroup_3138 ::
  T_IsSemiringWithoutOne'42'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_3138 v0
  = case coe v0 of
      C_constructor_3176 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.distrib
d_distrib_3140 ::
  T_IsSemiringWithoutOne'42'_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3140 v0
  = case coe v0 of
      C_constructor_3176 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.zero
d_zero_3142 ::
  T_IsSemiringWithoutOne'42'_3120 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3142 v0
  = case coe v0 of
      C_constructor_3176 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutOne*.isSemiringWithoutOne
d_isSemiringWithoutOne_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne'42'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_3144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemiringWithoutOne_3144 v7
du_isSemiringWithoutOne_3144 ::
  T_IsSemiringWithoutOne'42'_3120 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_3144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1432
      (coe d_'43''45'isCommutativeMonoid_3136 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe d_'42''45'isSemigroup_3138 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe d_'42''45'isSemigroup_3138 (coe v0)))
      (coe d_distrib_3140 (coe v0)) (coe d_zero_3142 (coe v0))
-- Algebra.Structures.Biased.IsNearSemiring*
d_IsNearSemiring'42'_3184 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiring'42'_3184
  = C_constructor_3240 MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
                       MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsNearSemiring*.+-isMonoid
d_'43''45'isMonoid_3200 ::
  T_IsNearSemiring'42'_3184 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'43''45'isMonoid_3200 v0
  = case coe v0 of
      C_constructor_3240 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.*-isSemigroup
d_'42''45'isSemigroup_3202 ::
  T_IsNearSemiring'42'_3184 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'42''45'isSemigroup_3202 v0
  = case coe v0 of
      C_constructor_3240 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.distribʳ
d_distrib'691'_3204 ::
  T_IsNearSemiring'42'_3184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_3204 v0
  = case coe v0 of
      C_constructor_3240 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.zeroˡ
d_zero'737'_3206 :: T_IsNearSemiring'42'_3184 -> AgdaAny -> AgdaAny
d_zero'737'_3206 v0
  = case coe v0 of
      C_constructor_3240 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsNearSemiring*.isNearSemiring
d_isNearSemiring_3208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring'42'_3184 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
d_isNearSemiring_3208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_3208 v7
du_isNearSemiring_3208 ::
  T_IsNearSemiring'42'_3184 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1262
du_isNearSemiring_3208 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1336
      (coe d_'43''45'isMonoid_3200 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe d_'42''45'isSemigroup_3202 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe d_'42''45'isSemigroup_3202 (coe v0)))
      (coe d_distrib'691'_3204 (coe v0)) (coe d_zero'737'_3206 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*
d_IsSemiringWithoutAnnihilatingZero'42'_3250 a0 a1 a2 a3 a4 a5 a6
                                             a7
  = ()
data T_IsSemiringWithoutAnnihilatingZero'42'_3250
  = C_constructor_3314 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
                       MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_3266 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_3266 v0
  = case coe v0 of
      C_constructor_3314 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.*-isMonoid
d_'42''45'isMonoid_3268 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_3268 v0
  = case coe v0 of
      C_constructor_3314 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.distrib
d_distrib_3270 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3270 v0
  = case coe v0 of
      C_constructor_3314 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_3272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_3272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 v8
  = du_isSemiringWithoutAnnihilatingZero_3272 v8
du_isSemiringWithoutAnnihilatingZero_3272 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_3272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1632
      (coe d_'43''45'isCommutativeMonoid_3266 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3268 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe d_'42''45'isMonoid_3268 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_726
         (coe d_'42''45'isMonoid_3268 (coe v0)))
      (coe d_distrib_3270 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.identityʳ
d_identity'691'_3284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 -> AgdaAny -> AgdaAny
d_identity'691'_3284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3284 v8
du_identity'691'_3284 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 -> AgdaAny -> AgdaAny
du_identity'691'_3284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_756
      (coe d_'42''45'isMonoid_3268 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.identityˡ
d_identity'737'_3286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 -> AgdaAny -> AgdaAny
d_identity'737'_3286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3286 v8
du_identity'737'_3286 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 -> AgdaAny -> AgdaAny
du_identity'737'_3286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_754
      (coe d_'42''45'isMonoid_3268 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.isPartialEquivalence
d_isPartialEquivalence_3292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3292 v8
du_isPartialEquivalence_3292 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3292 v0
  = let v1 = d_'42''45'isMonoid_3268 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.isUnitalMagma
d_isUnitalMagma_3296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_3296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_3296 v8
du_isUnitalMagma_3296 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_3296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe d_'42''45'isMonoid_3268 (coe v0))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.reflexive
d_reflexive_3300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3300 v8
du_reflexive_3300 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3300 v0
  = let v1 = d_'42''45'isMonoid_3268 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.setoid
d_setoid_3302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3302 v8
du_setoid_3302 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3302 v0
  = let v1 = d_'42''45'isMonoid_3268 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.∙-congʳ
d_'8729''45'cong'691'_3310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3310 v8
du_'8729''45'cong'691'_3310 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3310 v0
  = let v1 = d_'42''45'isMonoid_3268 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (let v4
                   = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.Biased.IsSemiringWithoutAnnihilatingZero*._._.∙-congˡ
d_'8729''45'cong'737'_3312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3312 v8
du_'8729''45'cong'737'_3312 ::
  T_IsSemiringWithoutAnnihilatingZero'42'_3250 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3312 v0
  = let v1 = d_'42''45'isMonoid_3268 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (let v4
                   = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ
d_IsCommutativeSemiring'737'_3324 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'737'_3324
  = C_constructor_3444 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
                       MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_3342 ::
  T_IsCommutativeSemiring'737'_3324 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_3342 v0
  = case coe v0 of
      C_constructor_3444 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3344 ::
  T_IsCommutativeSemiring'737'_3324 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_3344 v0
  = case coe v0 of
      C_constructor_3444 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribʳ
d_distrib'691'_3346 ::
  T_IsCommutativeSemiring'737'_3324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_3346 v0
  = case coe v0 of
      C_constructor_3444 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroˡ
d_zero'737'_3348 ::
  T_IsCommutativeSemiring'737'_3324 -> AgdaAny -> AgdaAny
d_zero'737'_3348 v0
  = case coe v0 of
      C_constructor_3444 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.isCommutativeSemiring
d_isCommutativeSemiring_3350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_3324 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_3350 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_3350 v4 v5 v6 v8
du_isCommutativeSemiring_3350 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_3324 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_3350 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1742
         (coe
            MAlonzo.Code.Algebra.Structures.C_constructor_1632
            (coe d_'43''45'isCommutativeMonoid_3342 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                        (coe d_'42''45'isCommutativeMonoid_3344 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_500
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                     (coe d_'42''45'isCommutativeMonoid_3344 (coe v3)))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_726
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                  (coe d_'42''45'isCommutativeMonoid_3344 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'691''8658'distr_594
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                           (coe d_'43''45'isCommutativeMonoid_3342 (coe v3))))))
               (coe v1) (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                           (coe d_'43''45'isCommutativeMonoid_3342 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_778
                  (coe d_'42''45'isCommutativeMonoid_3344 (coe v3)))
               (coe d_distrib'691'_3346 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'737''8658'ze_402
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                        (coe d_'43''45'isCommutativeMonoid_3342 (coe v3))))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_778
               (coe d_'42''45'isCommutativeMonoid_3344 (coe v3)))
            (coe v2) (coe d_zero'737'_3348 (coe v3))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_778
         (coe d_'42''45'isCommutativeMonoid_3344 (coe v3)))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ
d_IsCommutativeSemiring'691'_3454 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'691'_3454
  = C_constructor_3574 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
                       MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_3472 ::
  T_IsCommutativeSemiring'691'_3454 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_3472 v0
  = case coe v0 of
      C_constructor_3574 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3474 ::
  T_IsCommutativeSemiring'691'_3454 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_3474 v0
  = case coe v0 of
      C_constructor_3574 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribˡ
d_distrib'737'_3476 ::
  T_IsCommutativeSemiring'691'_3454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_3476 v0
  = case coe v0 of
      C_constructor_3574 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroʳ
d_zero'691'_3478 ::
  T_IsCommutativeSemiring'691'_3454 -> AgdaAny -> AgdaAny
d_zero'691'_3478 v0
  = case coe v0 of
      C_constructor_3574 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.isCommutativeSemiring
d_isCommutativeSemiring_3480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_3454 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_3480 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_3480 v4 v5 v6 v8
du_isCommutativeSemiring_3480 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_3454 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_3480 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1742
         (coe
            MAlonzo.Code.Algebra.Structures.C_constructor_1632
            (coe d_'43''45'isCommutativeMonoid_3472 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                        (coe d_'42''45'isCommutativeMonoid_3474 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_500
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                     (coe d_'42''45'isCommutativeMonoid_3474 (coe v3)))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_identity_726
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                  (coe d_'42''45'isCommutativeMonoid_3474 (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr_590
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                           (coe d_'43''45'isCommutativeMonoid_3472 (coe v3))))))
               (coe v1) (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_498
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                           (coe d_'43''45'isCommutativeMonoid_3472 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_778
                  (coe d_'42''45'isCommutativeMonoid_3474 (coe v3)))
               (coe d_distrib'737'_3476 (coe v3))))
         (coe
            MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'691''8658'ze_406
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_204
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_498
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isMonoid_776
                        (coe d_'43''45'isCommutativeMonoid_3472 (coe v3))))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_778
               (coe d_'42''45'isCommutativeMonoid_3474 (coe v3)))
            (coe v2) (coe d_zero'691'_3478 (coe v3))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_778
         (coe d_'42''45'isCommutativeMonoid_3474 (coe v3)))
-- Algebra.Structures.Biased.IsRing*
d_IsRing'42'_3586 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRing'42'_3586
  = C_constructor_3656 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
                       MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRing*.+-isAbelianGroup
d_'43''45'isAbelianGroup_3606 ::
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_3606 v0
  = case coe v0 of
      C_constructor_3656 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.*-isMonoid
d_'42''45'isMonoid_3608 ::
  T_IsRing'42'_3586 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_3608 v0
  = case coe v0 of
      C_constructor_3656 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.distrib
d_distrib_3610 ::
  T_IsRing'42'_3586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3610 v0
  = case coe v0 of
      C_constructor_3656 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.zero
d_zero_3612 ::
  T_IsRing'42'_3586 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3612 v0
  = case coe v0 of
      C_constructor_3656 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRing*.isRing
d_isRing_3614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_3614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRing_3614 v9
du_isRing_3614 ::
  T_IsRing'42'_3586 -> MAlonzo.Code.Algebra.Structures.T_IsRing_2868
du_isRing_3614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3004
      (coe d_'43''45'isAbelianGroup_3606 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3608 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe d_'42''45'isMonoid_3608 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_726
         (coe d_'42''45'isMonoid_3608 (coe v0)))
      (coe d_distrib_3610 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.identityʳ
d_identity'691'_3626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing'42'_3586 -> AgdaAny -> AgdaAny
d_identity'691'_3626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3626 v9
du_identity'691'_3626 :: T_IsRing'42'_3586 -> AgdaAny -> AgdaAny
du_identity'691'_3626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_756
      (coe d_'42''45'isMonoid_3608 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.identityˡ
d_identity'737'_3628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing'42'_3586 -> AgdaAny -> AgdaAny
d_identity'737'_3628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3628 v9
du_identity'737'_3628 :: T_IsRing'42'_3586 -> AgdaAny -> AgdaAny
du_identity'737'_3628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_754
      (coe d_'42''45'isMonoid_3608 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.isPartialEquivalence
d_isPartialEquivalence_3634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3634 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3634 v9
du_isPartialEquivalence_3634 ::
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3634 v0
  = let v1 = d_'42''45'isMonoid_3608 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.Biased.IsRing*._._.isUnitalMagma
d_isUnitalMagma_3638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_3638 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3638 v9
du_isUnitalMagma_3638 ::
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_3638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe d_'42''45'isMonoid_3608 (coe v0))
-- Algebra.Structures.Biased.IsRing*._._.reflexive
d_reflexive_3642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3642 v9
du_reflexive_3642 ::
  T_IsRing'42'_3586 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3642 v0
  = let v1 = d_'42''45'isMonoid_3608 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsRing*._._.setoid
d_setoid_3644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3644 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3644 v9
du_setoid_3644 ::
  T_IsRing'42'_3586 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3644 v0
  = let v1 = d_'42''45'isMonoid_3608 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Algebra.Structures.Biased.IsRing*._._.∙-congʳ
d_'8729''45'cong'691'_3652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3652 v9
du_'8729''45'cong'691'_3652 ::
  T_IsRing'42'_3586 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3652 v0
  = let v1 = d_'42''45'isMonoid_3608 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (let v4
                   = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.Biased.IsRing*._._.∙-congˡ
d_'8729''45'cong'737'_3654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing'42'_3586 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3654 v9
du_'8729''45'cong'737'_3654 ::
  T_IsRing'42'_3586 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3654 v0
  = let v1 = d_'42''45'isMonoid_3608 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (let v4
                   = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero
d_IsRingWithoutAnnihilatingZero_3668 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T_IsRingWithoutAnnihilatingZero_3668
  = C_constructor_3802 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
                       MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+-isAbelianGroup
d_'43''45'isAbelianGroup_3686 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_3686 v0
  = case coe v0 of
      C_constructor_3802 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_3688 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'42''45'isMonoid_3688 v0
  = case coe v0 of
      C_constructor_3802 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.distrib
d_distrib_3690 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3690 v0
  = case coe v0 of
      C_constructor_3802 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+._//_
d__'47''47'__3694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__3694 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'47''47'__3694 v4 v6
du__'47''47'__3694 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__3694 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.du__'47''47'__1138 (coe v0)
      (coe v1)
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.assoc
d_assoc_3696 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3696 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_500
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe d_'43''45'isAbelianGroup_3686 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.comm
d_comm_3698 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_3698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_1188
      (coe d_'43''45'isAbelianGroup_3686 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identity
d_identity_3700 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3700 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe d_'43''45'isAbelianGroup_3686 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identityʳ
d_identity'691'_3702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_identity'691'_3702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3702 v9
du_identity'691'_3702 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_identity'691'_3702 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'691'_756
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.identityˡ
d_identity'737'_3704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_identity'737'_3704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3704 v9
du_identity'737'_3704 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_identity'737'_3704 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_identity'737'_754
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverse
d_inverse_3706 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_3706 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_1092
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe d_'43''45'isAbelianGroup_3686 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverseʳ
d_inverse'691'_3708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_inverse'691'_3708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_3708 v9
du_inverse'691'_3708 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_inverse'691'_3708 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.inverseˡ
d_inverse'737'_3710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_inverse'737'_3710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_3710 v9
du_inverse'737'_3710 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_inverse'737'_3710 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'737'_1146
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeMagma
d_isCommutativeMagma_3712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
d_isCommutativeMagma_3712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_3712 v9
du_isCommutativeMagma_3712 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_216
du_isCommutativeMagma_3712 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_608
            (coe
               MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
               (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeMonoid
d_isCommutativeMonoid_3714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_isCommutativeMonoid_3714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_3714 v9
du_isCommutativeMonoid_3714 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_isCommutativeMonoid_3714 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
      (coe d_'43''45'isAbelianGroup_3686 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isCommutativeSemigroup
d_isCommutativeSemigroup_3716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_3716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_3716 v9
du_isCommutativeSemigroup_3716 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_3716 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_816
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_1246
            (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isEquivalence
d_isEquivalence_3718 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe d_'43''45'isAbelianGroup_3686 (coe v0))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isGroup
d_isGroup_3720 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_3720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_1186
      (coe d_'43''45'isAbelianGroup_3686 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isInvertibleMagma
d_isInvertibleMagma_3722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
d_isInvertibleMagma_3722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_3722 v9
du_isInvertibleMagma_3722 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_960
du_isInvertibleMagma_3722 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleMagma_1162
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_3724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_3724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_3724 v9
du_isInvertibleUnitalMagma_3724 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_3724 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isInvertibleUnitalMagma_1164
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isMagma
d_isMagma_3726 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe d_'43''45'isAbelianGroup_3686 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isMonoid
d_isMonoid_3728 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_3728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe d_'43''45'isAbelianGroup_3686 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isPartialEquivalence
d_isPartialEquivalence_3730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3730 v9
du_isPartialEquivalence_3730 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3730 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isSemigroup
d_isSemigroup_3732 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe d_'43''45'isAbelianGroup_3686 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.isUnitalMagma
d_isUnitalMagma_3734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_3734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3734 v9
du_isUnitalMagma_3734 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_3734 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.refl
d_refl_3736 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_refl_3736 v0
  = coe
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
                     (coe d_'43''45'isAbelianGroup_3686 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.reflexive
d_reflexive_3738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3738 v9
du_reflexive_3738 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3738 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                       (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v5))
                       v6)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.setoid
d_setoid_3740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3740 v9
du_setoid_3740 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3740 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_204
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.sym
d_sym_3742 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3742 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
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
                     (coe d_'43''45'isAbelianGroup_3686 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.trans
d_trans_3744 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3744 v0
  = coe
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
                     (coe d_'43''45'isAbelianGroup_3686 (coe v0)))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_3746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_3746 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_3746 v4 v6 v7 v9
du_unique'691''45''8315''185'_3746 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_3746 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_3686 (coe v3) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_1160
         (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_3748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_3748 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_3748 v4 v6 v7 v9
du_unique'737''45''8315''185'_3748 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_3748 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_3686 (coe v3) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_1154
         (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.⁻¹-cong
d_'8315''185''45'cong_3750 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_3750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_1186
         (coe d_'43''45'isAbelianGroup_3686 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-cong
d_'8729''45'cong_3752 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe d_'43''45'isAbelianGroup_3686 (coe v0))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-congʳ
d_'8729''45'cong'691'_3754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3754 v9
du_'8729''45'cong'691'_3754 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3754 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (let v6
                         = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+.∙-congˡ
d_'8729''45'cong'737'_3756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3756 v9
du_'8729''45'cong'737'_3756 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3756 v0
  = let v1 = d_'43''45'isAbelianGroup_3686 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v4) in
                coe
                  (let v6
                         = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v5) in
                   coe
                     (let v7
                            = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.assoc
d_assoc_3760 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_500
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe d_'42''45'isMonoid_3688 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identity
d_identity_3762 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_726
      (coe d_'42''45'isMonoid_3688 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identityʳ
d_identity'691'_3764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_identity'691'_3764 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3764 v9
du_identity'691'_3764 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_identity'691'_3764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_756
      (coe d_'42''45'isMonoid_3688 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.identityˡ
d_identity'737'_3766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_identity'737'_3766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3766 v9
du_identity'737'_3766 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_identity'737'_3766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_754
      (coe d_'42''45'isMonoid_3688 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isEquivalence
d_isEquivalence_3768 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe d_'42''45'isMonoid_3688 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isMagma
d_isMagma_3770 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_3770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_498
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
         (coe d_'42''45'isMonoid_3688 (coe v0)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isPartialEquivalence
d_isPartialEquivalence_3772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3772 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3772 v9
du_isPartialEquivalence_3772 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3772 v0
  = let v1 = d_'42''45'isMonoid_3688 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isSemigroup
d_isSemigroup_3774 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_3774 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
      (coe d_'42''45'isMonoid_3688 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.isUnitalMagma
d_isUnitalMagma_3776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
d_isUnitalMagma_3776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3776 v9
du_isUnitalMagma_3776 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_668
du_isUnitalMagma_3776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_758
      (coe d_'42''45'isMonoid_3688 (coe v0))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.refl
d_refl_3778 ::
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_refl_3778 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3688 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.reflexive
d_reflexive_3780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3780 v9
du_reflexive_3780 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3780 v0
  = let v1 = d_'42''45'isMonoid_3688 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v3))
                 v4)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.setoid
d_setoid_3782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3782 v9
du_setoid_3782 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3782 v0
  = let v1 = d_'42''45'isMonoid_3688 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_204
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.sym
d_sym_3784 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3784 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3688 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.trans
d_trans_3786 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_188
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3688 (coe v0)))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-cong
d_'8729''45'cong_3788 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_498
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe d_'42''45'isMonoid_3688 (coe v0))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-congʳ
d_'8729''45'cong'691'_3790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3790 v9
du_'8729''45'cong'691'_3790 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3790 v0
  = let v1 = d_'42''45'isMonoid_3688 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (let v4
                   = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*.∙-congˡ
d_'8729''45'cong'737'_3792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3792 v9
du_'8729''45'cong'737'_3792 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3792 v0
  = let v1 = d_'42''45'isMonoid_3688 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v2) in
          coe
            (let v4
                   = coe MAlonzo.Code.Algebra.Structures.du_setoid_204 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroˡ
d_zero'737'_3794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_zero'737'_3794 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_3794 v4 v5 v6 v7 v9
du_zero'737'_3794 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_zero'737'_3794 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe d_'43''45'isAbelianGroup_3686 (coe v4)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe d_'43''45'isAbelianGroup_3686 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3688 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe d_'43''45'isAbelianGroup_3686 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_3690 (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_756
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe d_'43''45'isAbelianGroup_3686 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe d_'43''45'isAbelianGroup_3686 (coe v4))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroʳ
d_zero'691'_3796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
d_zero'691'_3796 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_3796 v4 v5 v6 v7 v9
du_zero'691'_3796 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 -> AgdaAny -> AgdaAny
du_zero'691'_3796 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_204
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe d_'43''45'isAbelianGroup_3686 (coe v4)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                     (coe d_'43''45'isAbelianGroup_3686 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3688 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_1186
                  (coe d_'43''45'isAbelianGroup_3686 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe d_distrib_3690 (coe v4)))
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_756
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_1090
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_1186
               (coe d_'43''45'isAbelianGroup_3686 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_1148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_1186
            (coe d_'43''45'isAbelianGroup_3686 (coe v4))))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zero
d_zero_3798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3798 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_3798 v4 v5 v6 v7 v9
du_zero_3798 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_3798 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_3794 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_zero'691'_3796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.isRing
d_isRing_3800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_3800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRing_3800 v9
du_isRing_3800 ::
  T_IsRingWithoutAnnihilatingZero_3668 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
du_isRing_3800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3004
      (coe d_'43''45'isAbelianGroup_3686 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_498
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
               (coe d_'42''45'isMonoid_3688 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_500
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_724
            (coe d_'42''45'isMonoid_3688 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_726
         (coe d_'42''45'isMonoid_3688 (coe v0)))
      (coe d_distrib_3690 (coe v0))
