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

module MAlonzo.Code.Algebra.Lattice.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Lattice.Structures._._Absorbs_
d__Absorbs__16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__16 = erased
-- Algebra.Lattice.Structures._._DistributesOver_
d__DistributesOver__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__18 = erased
-- Algebra.Lattice.Structures._._DistributesOverʳ_
d__DistributesOver'691'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__20 = erased
-- Algebra.Lattice.Structures._._DistributesOverˡ_
d__DistributesOver'737'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__22 = erased
-- Algebra.Lattice.Structures._.Absorptive
d_Absorptive_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_28 = erased
-- Algebra.Lattice.Structures._.Associative
d_Associative_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_38 = erased
-- Algebra.Lattice.Structures._.Commutative
d_Commutative_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_42 = erased
-- Algebra.Lattice.Structures._.Congruent₁
d_Congruent'8321'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_44 = erased
-- Algebra.Lattice.Structures._.Congruent₂
d_Congruent'8322'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_46 = erased
-- Algebra.Lattice.Structures._.Inverse
d_Inverse_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_62 = erased
-- Algebra.Lattice.Structures._.LeftCongruent
d_LeftCongruent_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_74 = erased
-- Algebra.Lattice.Structures._.LeftInverse
d_LeftInverse_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_86 = erased
-- Algebra.Lattice.Structures._.RightCongruent
d_RightCongruent_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_104 = erased
-- Algebra.Lattice.Structures._.RightInverse
d_RightInverse_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_116 = erased
-- Algebra.Lattice.Structures._.IsBand
d_IsBand_150 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_170 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Structures._.IsBand.isPartialEquivalence
d_isPartialEquivalence_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_332 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_332 v5
du_isPartialEquivalence_332 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_332 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v2))))
-- Algebra.Lattice.Structures._.IsBand.reflexive
d_reflexive_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_338 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_338 v5
du_reflexive_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_338 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v2))
              v3))
-- Algebra.Lattice.Structures._.IsBand.setoid
d_setoid_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_340 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_340 v5
du_setoid_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_340 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_168
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Algebra.Lattice.Structures._.IsBand.∙-congʳ
d_'8729''45'cong'691'_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_348 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_348 v5
du_'8729''45'cong'691'_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_348 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Algebra.Lattice.Structures._.IsBand.∙-congˡ
d_'8729''45'cong'737'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_350 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_350 v5
du_'8729''45'cong'737'_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_350 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.identityʳ
d_identity'691'_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_930 v6
du_identity'691'_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_930 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_932 v6
du_identity'737'_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_932 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isBand
d_isBand_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_934 ~v0 ~v1 ~v2 ~v3 = du_isBand_934
du_isBand_934 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_934 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 v2
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_936 v6
du_isCommutativeMagma_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_936 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
            (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_940 v6
du_isCommutativeSemigroup_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_948 v6
du_isPartialEquivalence_948 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_948 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
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
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isUnitalMagma
d_isUnitalMagma_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_952 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_952 v6
du_isUnitalMagma_952 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_952 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_956 v6
du_reflexive_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_956 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
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
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.setoid
d_setoid_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_958 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_958 v6
du_setoid_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_958 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.∙-congʳ
d_'8729''45'cong'691'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_966 v6
du_'8729''45'cong'691'_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_966 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.∙-congˡ
d_'8729''45'cong'737'_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_968 v6
du_'8729''45'cong'737'_968 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_968 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsSemilattice
d_IsSemilattice_2530 a0 a1 a2 a3 a4 = ()
data T_IsSemilattice_2530
  = C_IsSemilattice'46'constructor_33435 MAlonzo.Code.Algebra.Structures.T_IsBand_476
                                         (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.IsSemilattice.isBand
d_isBand_2538 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2538 v0
  = case coe v0 of
      C_IsSemilattice'46'constructor_33435 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsSemilattice.comm
d_comm_2540 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2540 v0
  = case coe v0 of
      C_IsSemilattice'46'constructor_33435 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsSemilattice._.assoc
d_assoc_2544 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2538 (coe v0)))
-- Algebra.Lattice.Structures.IsSemilattice._.idem
d_idem_2546 :: T_IsSemilattice_2530 -> AgdaAny -> AgdaAny
d_idem_2546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe d_isBand_2538 (coe v0))
-- Algebra.Lattice.Structures.IsSemilattice._.isEquivalence
d_isEquivalence_2548 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2548 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2538 (coe v0))))
-- Algebra.Lattice.Structures.IsSemilattice._.isMagma
d_isMagma_2550 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2550 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2538 (coe v0)))
-- Algebra.Lattice.Structures.IsSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2552 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2552 v5
du_isPartialEquivalence_2552 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2552 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Lattice.Structures.IsSemilattice._.isSemigroup
d_isSemigroup_2554 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2554 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe d_isBand_2538 (coe v0))
-- Algebra.Lattice.Structures.IsSemilattice._.refl
d_refl_2556 :: T_IsSemilattice_2530 -> AgdaAny -> AgdaAny
d_refl_2556 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsSemilattice._.reflexive
d_reflexive_2558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2558 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_2558 v5
du_reflexive_2558 ::
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2558 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.IsSemilattice._.setoid
d_setoid_2560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2560 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2560 v5
du_setoid_2560 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2560 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsSemilattice._.sym
d_sym_2562 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2562 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsSemilattice._.trans
d_trans_2564 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsSemilattice._.∙-cong
d_'8729''45'cong_2566 ::
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2566 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2538 (coe v0))))
-- Algebra.Lattice.Structures.IsSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2568 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_2568 v5
du_'8729''45'cong'691'_2568 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2568 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2570 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_2570 v5
du_'8729''45'cong'737'_2570 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2570 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsMeetSemilattice
d_IsMeetSemilattice_2572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsMeetSemilattice_2572 = erased
-- Algebra.Lattice.Structures.IsMeetSemilattice._.assoc
d_assoc_2582 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2582 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2538 (coe v0)))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.comm
d_comm_2584 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2584 v0 = coe d_comm_2540 (coe v0)
-- Algebra.Lattice.Structures.IsMeetSemilattice._.idem
d_idem_2586 :: T_IsSemilattice_2530 -> AgdaAny -> AgdaAny
d_idem_2586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe d_isBand_2538 (coe v0))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isBand
d_isBand_2588 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2588 v0 = coe d_isBand_2538 (coe v0)
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isEquivalence
d_isEquivalence_2590 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2590 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2538 (coe v0))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isMagma
d_isMagma_2592 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2538 (coe v0)))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2594 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2594 v5
du_isPartialEquivalence_2594 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2594 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isSemigroup
d_isSemigroup_2596 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe d_isBand_2538 (coe v0))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.refl
d_refl_2598 :: T_IsSemilattice_2530 -> AgdaAny -> AgdaAny
d_refl_2598 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.reflexive
d_reflexive_2600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2600 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_2600 v5
du_reflexive_2600 ::
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2600 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.setoid
d_setoid_2602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2602 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2602 v5
du_setoid_2602 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2602 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.sym
d_sym_2604 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2604 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.trans
d_trans_2606 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.∙-cong
d_'8729''45'cong_2608 ::
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2538 (coe v0))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2610 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_2610 v5
du_'8729''45'cong'691'_2610 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2610 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2612 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_2612 v5
du_'8729''45'cong'737'_2612 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2612 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsJoinSemilattice
d_IsJoinSemilattice_2614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsJoinSemilattice_2614 = erased
-- Algebra.Lattice.Structures.IsJoinSemilattice._.assoc
d_assoc_2624 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2538 (coe v0)))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.comm
d_comm_2626 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2626 v0 = coe d_comm_2540 (coe v0)
-- Algebra.Lattice.Structures.IsJoinSemilattice._.idem
d_idem_2628 :: T_IsSemilattice_2530 -> AgdaAny -> AgdaAny
d_idem_2628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe d_isBand_2538 (coe v0))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isBand
d_isBand_2630 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2630 v0 = coe d_isBand_2538 (coe v0)
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isEquivalence
d_isEquivalence_2632 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2538 (coe v0))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isMagma
d_isMagma_2634 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2538 (coe v0)))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2636 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2636 v5
du_isPartialEquivalence_2636 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2636 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isSemigroup
d_isSemigroup_2638 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2638 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe d_isBand_2538 (coe v0))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.refl
d_refl_2640 :: T_IsSemilattice_2530 -> AgdaAny -> AgdaAny
d_refl_2640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.reflexive
d_reflexive_2642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_2642 v5
du_reflexive_2642 ::
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2642 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v3))
                 v4)))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.setoid
d_setoid_2644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2644 v5
du_setoid_2644 ::
  T_IsSemilattice_2530 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2644 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.sym
d_sym_2646 ::
  T_IsSemilattice_2530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2646 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.trans
d_trans_2648 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2648 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2538 (coe v0)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.∙-cong
d_'8729''45'cong_2650 ::
  T_IsSemilattice_2530 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2538 (coe v0))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2652 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_2652 v5
du_'8729''45'cong'691'_2652 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2652 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2654 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_2654 v5
du_'8729''45'cong'737'_2654 ::
  T_IsSemilattice_2530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2654 v0
  = let v1 = d_isBand_2538 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice
d_IsBoundedSemilattice_2656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedSemilattice_2656 = erased
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.assoc
d_assoc_2668 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2668 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.comm
d_comm_2670 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2670 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_666
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.idem
d_idem_2672 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_idem_2672 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_726 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.identity
d_identity_2674 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.identityʳ
d_identity'691'_2676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_2676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_2676 v6
du_identity'691'_2676 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_2676 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.identityˡ
d_identity'737'_2678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_2678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_2678 v6
du_identity'737'_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_2678 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isBand
d_isBand_2680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_2680 v6
du_isBand_2680 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2680 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isCommutativeMagma
d_isCommutativeMagma_2682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_2682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_2682 v6
du_isCommutativeMagma_2682 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_2682 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_554
         (coe
            MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
            (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isCommutativeMonoid
d_isCommutativeMonoid_2684 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2684 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isCommutativeSemigroup
d_isCommutativeSemigroup_2686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_2686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_2686 v6
du_isCommutativeSemigroup_2686 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_2686 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isEquivalence
d_isEquivalence_2688 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                  (coe v0)))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isMagma
d_isMagma_2690 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isMonoid
d_isMonoid_2692 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2692 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2694 v6
du_isPartialEquivalence_2694 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2694 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
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
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isSemigroup
d_isSemigroup_2696 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2696 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isUnitalMagma
d_isUnitalMagma_2698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_2698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_2698 v6
du_isUnitalMagma_2698 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_2698 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.refl
d_refl_2700 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_refl_2700 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.reflexive
d_reflexive_2702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2702 v6
du_reflexive_2702 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2702 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
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
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.setoid
d_setoid_2704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_2704 v6
du_setoid_2704 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2704 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.sym
d_sym_2706 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.trans
d_trans_2708 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2708 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.∙-cong
d_'8729''45'cong_2710 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                  (coe v0)))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_2712 v6
du_'8729''45'cong'691'_2712 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2712 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_2714 v6
du_'8729''45'cong'737'_2714 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2714 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice.isSemilattice
d_isSemilattice_2716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2530
d_isSemilattice_2716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemilattice_2716 v6
du_isSemilattice_2716 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2530
du_isSemilattice_2716 v0
  = coe
      C_IsSemilattice'46'constructor_33435
      (coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_666
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice
d_IsBoundedMeetSemilattice_2718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedMeetSemilattice_2718 = erased
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.identity
d_identity_2730 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.identityʳ
d_identity'691'_2732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_2732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_2732 v6
du_identity'691'_2732 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_2732 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.identityˡ
d_identity'737'_2734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_2734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_2734 v6
du_identity'737'_2734 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_2734 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isSemilattice
d_isSemilattice_2736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2530
d_isSemilattice_2736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemilattice_2736 v6
du_isSemilattice_2736 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2530
du_isSemilattice_2736 v0 = coe du_isSemilattice_2716 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.assoc
d_assoc_2740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_assoc_2740 v6
du_assoc_2740 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.comm
d_comm_2742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_comm_2742 v6
du_comm_2742 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_comm_2742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_666
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.idem
d_idem_2744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_idem_2744 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_idem_2744 v6
du_idem_2744 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_idem_2744 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_726 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isBand
d_isBand_2746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2746 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_2746 v6
du_isBand_2746 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2746 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isEquivalence
d_isEquivalence_2748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_2748 v6
du_isEquivalence_2748 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                  (coe v0)))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isMagma
d_isMagma_2750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isMagma_2750 v6
du_isMagma_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2752 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2752 v6
du_isPartialEquivalence_2752 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2752 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isSemigroup
d_isSemigroup_2754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemigroup_2754 v6
du_isSemigroup_2754 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2754 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.refl
d_refl_2756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_refl_2756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_2756 v6
du_refl_2756 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_refl_2756 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.reflexive
d_reflexive_2758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2758 v6
du_reflexive_2758 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2758 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                    v5))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.setoid
d_setoid_2760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2760 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_2760 v6
du_setoid_2760 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2760 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.sym
d_sym_2762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2762 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_2762 v6
du_sym_2762 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2762 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.trans
d_trans_2764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2764 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_2764 v6
du_trans_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2764 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.∙-cong
d_'8729''45'cong_2766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong_2766 v6
du_'8729''45'cong_2766 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                  (coe v0)))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_2768 v6
du_'8729''45'cong'691'_2768 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2768 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_2770 v6
du_'8729''45'cong'737'_2770 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2770 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice
d_IsBoundedJoinSemilattice_2772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedJoinSemilattice_2772 = erased
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.identity
d_identity_2784 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.identityʳ
d_identity'691'_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_2786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_2786 v6
du_identity'691'_2786 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_2786 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.identityˡ
d_identity'737'_2788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_2788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_2788 v6
du_identity'737'_2788 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_2788 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isSemilattice
d_isSemilattice_2790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2530
d_isSemilattice_2790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemilattice_2790 v6
du_isSemilattice_2790 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2530
du_isSemilattice_2790 v0 = coe du_isSemilattice_2716 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.assoc
d_assoc_2794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_assoc_2794 v6
du_assoc_2794 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.comm
d_comm_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_comm_2796 v6
du_comm_2796 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_comm_2796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_666
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.idem
d_idem_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_idem_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_idem_2798 v6
du_idem_2798 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_idem_2798 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_726 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isBand
d_isBand_2800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_2800 v6
du_isBand_2800 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2800 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isEquivalence
d_isEquivalence_2802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_2802 v6
du_isEquivalence_2802 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2802 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                  (coe v0)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isMagma
d_isMagma_2804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isMagma_2804 v6
du_isMagma_2804 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2806 v6
du_isPartialEquivalence_2806 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2806 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isSemigroup
d_isSemigroup_2808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemigroup_2808 v6
du_isSemigroup_2808 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.refl
d_refl_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_refl_2810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_2810 v6
du_refl_2810 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_refl_2810 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.reflexive
d_reflexive_2812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2812 v6
du_reflexive_2812 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2812 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v4))
                    v5))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.setoid
d_setoid_2814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_2814 v6
du_setoid_2814 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2814 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.sym
d_sym_2816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_2816 v6
du_sym_2816 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2816 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.trans
d_trans_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_2818 v6
du_trans_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2818 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                     (coe v0))))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.∙-cong
d_'8729''45'cong_2820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong_2820 v6
du_'8729''45'cong_2820 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2820 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
                  (coe v0)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_2822 v6
du_'8729''45'cong'691'_2822 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2822 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_2824 v6
du_'8729''45'cong'737'_2824 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2824 v0
  = let v1 = coe du_isSemilattice_2716 (coe v0) in
    coe
      (let v2 = d_isBand_2538 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsLattice
d_IsLattice_2830 a0 a1 a2 a3 a4 a5 = ()
data T_IsLattice_2830
  = C_IsLattice'46'constructor_36449 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                     (AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny ->
                                      AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny ->
                                      AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Lattice.Structures.IsLattice.isEquivalence
d_isEquivalence_2852 ::
  T_IsLattice_2830 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2852 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∨-comm
d_'8744''45'comm_2854 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_2854 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∨-assoc
d_'8744''45'assoc_2856 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_2856 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∨-cong
d_'8744''45'cong_2858 ::
  T_IsLattice_2830 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_2858 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∧-comm
d_'8743''45'comm_2860 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_2860 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∧-assoc
d_'8743''45'assoc_2862 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_2862 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∧-cong
d_'8743''45'cong_2864 ::
  T_IsLattice_2830 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_2864 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.absorptive
d_absorptive_2866 ::
  T_IsLattice_2830 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2866 v0
  = case coe v0 of
      C_IsLattice'46'constructor_36449 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice._.isPartialEquivalence
d_isPartialEquivalence_2870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2870 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2870 v6
du_isPartialEquivalence_2870 ::
  T_IsLattice_2830 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_2852 (coe v0))
-- Algebra.Lattice.Structures.IsLattice._.refl
d_refl_2872 :: T_IsLattice_2830 -> AgdaAny -> AgdaAny
d_refl_2872 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_2852 (coe v0))
-- Algebra.Lattice.Structures.IsLattice._.reflexive
d_reflexive_2874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2874 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2874 v6
du_reflexive_2874 ::
  T_IsLattice_2830 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2874 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe d_isEquivalence_2852 (coe v0)) v1
-- Algebra.Lattice.Structures.IsLattice._.sym
d_sym_2876 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2876 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_2852 (coe v0))
-- Algebra.Lattice.Structures.IsLattice._.trans
d_trans_2878 ::
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2878 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_2852 (coe v0))
-- Algebra.Lattice.Structures.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_2880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_2880 v6
du_'8744''45'absorbs'45''8743'_2880 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_2880 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_absorptive_2866 (coe v0))
-- Algebra.Lattice.Structures.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_2882 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_2882 v6
du_'8743''45'absorbs'45''8744'_2882 ::
  T_IsLattice_2830 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_2882 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_absorptive_2866 (coe v0))
-- Algebra.Lattice.Structures.IsLattice.∧-congˡ
d_'8743''45'cong'737'_2884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_2884 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8743''45'cong'737'_2884 v6 v7 v8 v9 v10
du_'8743''45'cong'737'_2884 ::
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_2884 v0 v1 v2 v3 v4
  = coe
      d_'8743''45'cong_2864 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2852 (coe v0)) v1)
      v4
-- Algebra.Lattice.Structures.IsLattice.∧-congʳ
d_'8743''45'cong'691'_2888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_2888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8743''45'cong'691'_2888 v6 v7 v8 v9 v10
du_'8743''45'cong'691'_2888 ::
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_2888 v0 v1 v2 v3 v4
  = coe
      d_'8743''45'cong_2864 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2852 (coe v0)) v1)
-- Algebra.Lattice.Structures.IsLattice.∨-congˡ
d_'8744''45'cong'737'_2892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_2892 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8744''45'cong'737'_2892 v6 v7 v8 v9 v10
du_'8744''45'cong'737'_2892 ::
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_2892 v0 v1 v2 v3 v4
  = coe
      d_'8744''45'cong_2858 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2852 (coe v0)) v1)
      v4
-- Algebra.Lattice.Structures.IsLattice.∨-congʳ
d_'8744''45'cong'691'_2896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_2896 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8744''45'cong'691'_2896 v6 v7 v8 v9 v10
du_'8744''45'cong'691'_2896 ::
  T_IsLattice_2830 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_2896 v0 v1 v2 v3 v4
  = coe
      d_'8744''45'cong_2858 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2852 (coe v0)) v1)
-- Algebra.Lattice.Structures.IsDistributiveLattice
d_IsDistributiveLattice_2904 a0 a1 a2 a3 a4 a5 = ()
data T_IsDistributiveLattice_2904
  = C_IsDistributiveLattice'46'constructor_40543 T_IsLattice_2830
                                                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Lattice.Structures.IsDistributiveLattice.isLattice
d_isLattice_2916 ::
  T_IsDistributiveLattice_2904 -> T_IsLattice_2830
d_isLattice_2916 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_40543 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_2918 ::
  T_IsDistributiveLattice_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_2918 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_40543 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_2920 ::
  T_IsDistributiveLattice_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_2920 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_40543 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsDistributiveLattice._.absorptive
d_absorptive_2924 ::
  T_IsDistributiveLattice_2904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2924 v0
  = coe d_absorptive_2866 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.isEquivalence
d_isEquivalence_2926 ::
  T_IsDistributiveLattice_2904 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2926 v0
  = coe d_isEquivalence_2852 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.isPartialEquivalence
d_isPartialEquivalence_2928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2928 v6
du_isPartialEquivalence_2928 ::
  T_IsDistributiveLattice_2904 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2928 v0
  = let v1 = d_isLattice_2916 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_2852 (coe v1)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.refl
d_refl_2930 :: T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny
d_refl_2930 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_2852 (coe d_isLattice_2916 (coe v0)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.reflexive
d_reflexive_2932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2932 v6
du_reflexive_2932 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2932 v0
  = let v1 = d_isLattice_2916 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_2852 (coe v1)) v2)
-- Algebra.Lattice.Structures.IsDistributiveLattice._.sym
d_sym_2934 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2934 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_2852 (coe d_isLattice_2916 (coe v0)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.trans
d_trans_2936 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_2852 (coe d_isLattice_2916 (coe v0)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_2938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_2938 v6
du_'8743''45'absorbs'45''8744'_2938 ::
  T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_2938 v0
  = coe
      du_'8743''45'absorbs'45''8744'_2882 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-assoc
d_'8743''45'assoc_2940 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_2940 v0
  = coe d_'8743''45'assoc_2862 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-comm
d_'8743''45'comm_2942 ::
  T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_2942 v0
  = coe d_'8743''45'comm_2860 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-cong
d_'8743''45'cong_2944 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_2944 v0
  = coe d_'8743''45'cong_2864 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-congʳ
d_'8743''45'cong'691'_2946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_2946 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_2946 v6
du_'8743''45'cong'691'_2946 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_2946 v0
  = coe du_'8743''45'cong'691'_2888 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-congˡ
d_'8743''45'cong'737'_2948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_2948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_2948 v6
du_'8743''45'cong'737'_2948 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_2948 v0
  = coe du_'8743''45'cong'737'_2884 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_2950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_2950 v6
du_'8744''45'absorbs'45''8743'_2950 ::
  T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_2950 v0
  = coe
      du_'8744''45'absorbs'45''8743'_2880 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-assoc
d_'8744''45'assoc_2952 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_2952 v0
  = coe d_'8744''45'assoc_2856 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-comm
d_'8744''45'comm_2954 ::
  T_IsDistributiveLattice_2904 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_2954 v0
  = coe d_'8744''45'comm_2854 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-cong
d_'8744''45'cong_2956 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_2956 v0
  = coe d_'8744''45'cong_2858 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-congʳ
d_'8744''45'cong'691'_2958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_2958 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_2958 v6
du_'8744''45'cong'691'_2958 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_2958 v0
  = coe du_'8744''45'cong'691'_2896 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-congˡ
d_'8744''45'cong'737'_2960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_2960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_2960 v6
du_'8744''45'cong'737'_2960 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_2960 v0
  = coe du_'8744''45'cong'737'_2892 (coe d_isLattice_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_2962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_2962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'distrib'737''45''8743'_2962 v6
du_'8744''45'distrib'737''45''8743'_2962 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_2962 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8744''45'distrib'45''8743'_2918 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_2964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_2964 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'distrib'691''45''8743'_2964 v6
du_'8744''45'distrib'691''45''8743'_2964 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_2964 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8744''45'distrib'45''8743'_2918 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_2966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_2966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'distrib'737''45''8744'_2966 v6
du_'8743''45'distrib'737''45''8744'_2966 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_2966 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8743''45'distrib'45''8744'_2920 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_2968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_2968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'distrib'691''45''8744'_2968 v6
du_'8743''45'distrib'691''45''8744'_2968 ::
  T_IsDistributiveLattice_2904 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_2968 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8743''45'distrib'45''8744'_2920 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra
d_IsBooleanAlgebra_2980 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBooleanAlgebra_2980
  = C_IsBooleanAlgebra'46'constructor_43609 T_IsDistributiveLattice_2904
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                            (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_3000 ::
  T_IsBooleanAlgebra_2980 -> T_IsDistributiveLattice_2904
d_isDistributiveLattice_3000 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_43609 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_3002 ::
  T_IsBooleanAlgebra_2980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_3002 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_43609 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_3004 ::
  T_IsBooleanAlgebra_2980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_3004 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_43609 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra.¬-cong
d_'172''45'cong_3006 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_3006 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_43609 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.absorptive
d_absorptive_3010 ::
  T_IsBooleanAlgebra_2980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_3010 v0
  = coe
      d_absorptive_2866
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.isEquivalence
d_isEquivalence_3012 ::
  T_IsBooleanAlgebra_2980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3012 v0
  = coe
      d_isEquivalence_2852
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.isLattice
d_isLattice_3014 :: T_IsBooleanAlgebra_2980 -> T_IsLattice_2830
d_isLattice_3014 v0
  = coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.isPartialEquivalence
d_isPartialEquivalence_3016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3016 v9
du_isPartialEquivalence_3016 ::
  T_IsBooleanAlgebra_2980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3016 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (let v2 = d_isLattice_2916 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_2852 (coe v2))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.refl
d_refl_3018 :: T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
d_refl_3018 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_2852
         (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.reflexive
d_reflexive_3020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3020 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3020 v9
du_reflexive_3020 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3020 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (let v2 = d_isLattice_2916 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_2852 (coe v2)) v3))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.sym
d_sym_3022 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3022 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_2852
         (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.trans
d_trans_3024 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3024 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_2852
         (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_3026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_3026 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'8743''45'absorbs'45''8744'_3026 v9
du_'8743''45'absorbs'45''8744'_3026 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_3026 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (coe
         du_'8743''45'absorbs'45''8744'_2882
         (coe d_isLattice_2916 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-assoc
d_'8743''45'assoc_3028 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_3028 v0
  = coe
      d_'8743''45'assoc_2862
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-comm
d_'8743''45'comm_3030 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_3030 v0
  = coe
      d_'8743''45'comm_2860
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-cong
d_'8743''45'cong_3032 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_3032 v0
  = coe
      d_'8743''45'cong_2864
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-congʳ
d_'8743''45'cong'691'_3034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_3034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'691'_3034 v9
du_'8743''45'cong'691'_3034 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_3034 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (coe du_'8743''45'cong'691'_2888 (coe d_isLattice_2916 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-congˡ
d_'8743''45'cong'737'_3036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_3036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'737'_3036 v9
du_'8743''45'cong'737'_3036 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_3036 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (coe du_'8743''45'cong'737'_2884 (coe d_isLattice_2916 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3038 ::
  T_IsBooleanAlgebra_2980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3038 v0
  = coe
      d_'8743''45'distrib'45''8744'_2920
      (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_3040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8743''45'distrib'691''45''8744'_3040 v9
du_'8743''45'distrib'691''45''8744'_3040 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_3040 v0
  = coe
      du_'8743''45'distrib'691''45''8744'_2968
      (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_3042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8743''45'distrib'737''45''8744'_3042 v9
du_'8743''45'distrib'737''45''8744'_3042 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_3042 v0
  = coe
      du_'8743''45'distrib'737''45''8744'_2966
      (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_3044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_3044 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'8744''45'absorbs'45''8743'_3044 v9
du_'8744''45'absorbs'45''8743'_3044 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_3044 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (coe
         du_'8744''45'absorbs'45''8743'_2880
         (coe d_isLattice_2916 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-assoc
d_'8744''45'assoc_3046 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_3046 v0
  = coe
      d_'8744''45'assoc_2856
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-comm
d_'8744''45'comm_3048 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_3048 v0
  = coe
      d_'8744''45'comm_2854
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-cong
d_'8744''45'cong_3050 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_3050 v0
  = coe
      d_'8744''45'cong_2858
      (coe d_isLattice_2916 (coe d_isDistributiveLattice_3000 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-congʳ
d_'8744''45'cong'691'_3052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_3052 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'691'_3052 v9
du_'8744''45'cong'691'_3052 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_3052 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (coe du_'8744''45'cong'691'_2896 (coe d_isLattice_2916 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-congˡ
d_'8744''45'cong'737'_3054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_3054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'737'_3054 v9
du_'8744''45'cong'737'_3054 ::
  T_IsBooleanAlgebra_2980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_3054 v0
  = let v1 = d_isDistributiveLattice_3000 (coe v0) in
    coe
      (coe du_'8744''45'cong'737'_2892 (coe d_isLattice_2916 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3056 ::
  T_IsBooleanAlgebra_2980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3056 v0
  = coe
      d_'8744''45'distrib'45''8743'_2918
      (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_3058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8744''45'distrib'691''45''8743'_3058 v9
du_'8744''45'distrib'691''45''8743'_3058 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_3058 v0
  = coe
      du_'8744''45'distrib'691''45''8743'_2964
      (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_3060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8744''45'distrib'737''45''8743'_3060 v9
du_'8744''45'distrib'737''45''8743'_3060 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_3060 v0
  = coe
      du_'8744''45'distrib'737''45''8743'_2962
      (coe d_isDistributiveLattice_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∨-complementˡ
d_'8744''45'complement'737'_3062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
d_'8744''45'complement'737'_3062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8744''45'complement'737'_3062 v9
du_'8744''45'complement'737'_3062 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
du_'8744''45'complement'737'_3062 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8744''45'complement_3002 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∨-complementʳ
d_'8744''45'complement'691'_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
d_'8744''45'complement'691'_3064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8744''45'complement'691'_3064 v9
du_'8744''45'complement'691'_3064 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
du_'8744''45'complement'691'_3064 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8744''45'complement_3002 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∧-complementˡ
d_'8743''45'complement'737'_3066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
d_'8743''45'complement'737'_3066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8743''45'complement'737'_3066 v9
du_'8743''45'complement'737'_3066 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
du_'8743''45'complement'737'_3066 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8743''45'complement_3004 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∧-complementʳ
d_'8743''45'complement'691'_3068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
d_'8743''45'complement'691'_3068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8743''45'complement'691'_3068 v9
du_'8743''45'complement'691'_3068 ::
  T_IsBooleanAlgebra_2980 -> AgdaAny -> AgdaAny
du_'8743''45'complement'691'_3068 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8743''45'complement_3004 (coe v0))
