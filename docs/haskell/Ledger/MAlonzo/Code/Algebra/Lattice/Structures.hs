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
d_identity'691'_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_928 v6
du_identity'691'_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_928 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.identityˡ
d_identity'737'_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_930 v6
du_identity'737'_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_930 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isBand
d_isBand_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_932 ~v0 ~v1 ~v2 ~v3 = du_isBand_932
du_isBand_932 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_932 v0 v1 v2
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 v2
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isCommutativeMagma
d_isCommutativeMagma_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_934 v6
du_isCommutativeMagma_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_934 v0
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
d_isCommutativeSemigroup_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_938 v6
du_isCommutativeSemigroup_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_938 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.isPartialEquivalence
d_isPartialEquivalence_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_946 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_946 v6
du_isPartialEquivalence_946 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_946 v0
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
d_isUnitalMagma_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_950 v6
du_isUnitalMagma_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_950 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures._.IsIdempotentCommutativeMonoid.reflexive
d_reflexive_954 ::
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
d_reflexive_954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_954 v6
du_reflexive_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_954 v0
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
d_setoid_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_956 v6
du_setoid_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_956 v0
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
d_'8729''45'cong'691'_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_964 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_964 v6
du_'8729''45'cong'691'_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_964 v0
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
d_'8729''45'cong'737'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_966 v6
du_'8729''45'cong'737'_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_966 v0
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
d_IsSemilattice_2526 a0 a1 a2 a3 a4 = ()
data T_IsSemilattice_2526
  = C_IsSemilattice'46'constructor_32583 MAlonzo.Code.Algebra.Structures.T_IsBand_476
                                         (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.IsSemilattice.isBand
d_isBand_2534 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2534 v0
  = case coe v0 of
      C_IsSemilattice'46'constructor_32583 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsSemilattice.comm
d_comm_2536 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2536 v0
  = case coe v0 of
      C_IsSemilattice'46'constructor_32583 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsSemilattice._.assoc
d_assoc_2540 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2534 (coe v0)))
-- Algebra.Lattice.Structures.IsSemilattice._.idem
d_idem_2542 :: T_IsSemilattice_2526 -> AgdaAny -> AgdaAny
d_idem_2542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe d_isBand_2534 (coe v0))
-- Algebra.Lattice.Structures.IsSemilattice._.isEquivalence
d_isEquivalence_2544 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2534 (coe v0))))
-- Algebra.Lattice.Structures.IsSemilattice._.isMagma
d_isMagma_2546 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2534 (coe v0)))
-- Algebra.Lattice.Structures.IsSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2548 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2548 v5
du_isPartialEquivalence_2548 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2548 v0
  = let v1 = d_isBand_2534 (coe v0) in
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
d_isSemigroup_2550 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2550 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe d_isBand_2534 (coe v0))
-- Algebra.Lattice.Structures.IsSemilattice._.refl
d_refl_2552 :: T_IsSemilattice_2526 -> AgdaAny -> AgdaAny
d_refl_2552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsSemilattice._.reflexive
d_reflexive_2554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2554 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_2554 v5
du_reflexive_2554 ::
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2554 v0
  = let v1 = d_isBand_2534 (coe v0) in
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
d_setoid_2556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2556 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2556 v5
du_setoid_2556 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2556 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsSemilattice._.sym
d_sym_2558 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsSemilattice._.trans
d_trans_2560 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2560 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsSemilattice._.∙-cong
d_'8729''45'cong_2562 ::
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2534 (coe v0))))
-- Algebra.Lattice.Structures.IsSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2564 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_2564 v5
du_'8729''45'cong'691'_2564 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2564 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2566 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_2566 v5
du_'8729''45'cong'737'_2566 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2566 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsMeetSemilattice
d_IsMeetSemilattice_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsMeetSemilattice_2568 = erased
-- Algebra.Lattice.Structures.IsMeetSemilattice._.assoc
d_assoc_2578 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2534 (coe v0)))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.comm
d_comm_2580 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2580 v0 = coe d_comm_2536 (coe v0)
-- Algebra.Lattice.Structures.IsMeetSemilattice._.idem
d_idem_2582 :: T_IsSemilattice_2526 -> AgdaAny -> AgdaAny
d_idem_2582 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe d_isBand_2534 (coe v0))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isBand
d_isBand_2584 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2584 v0 = coe d_isBand_2534 (coe v0)
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isEquivalence
d_isEquivalence_2586 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2534 (coe v0))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isMagma
d_isMagma_2588 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2588 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2534 (coe v0)))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2590 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2590 v5
du_isPartialEquivalence_2590 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2590 v0
  = let v1 = d_isBand_2534 (coe v0) in
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
d_isSemigroup_2592 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe d_isBand_2534 (coe v0))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.refl
d_refl_2594 :: T_IsSemilattice_2526 -> AgdaAny -> AgdaAny
d_refl_2594 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.reflexive
d_reflexive_2596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2596 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_2596 v5
du_reflexive_2596 ::
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2596 v0
  = let v1 = d_isBand_2534 (coe v0) in
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
d_setoid_2598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2598 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2598 v5
du_setoid_2598 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2598 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.sym
d_sym_2600 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2600 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.trans
d_trans_2602 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2602 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.∙-cong
d_'8729''45'cong_2604 ::
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2534 (coe v0))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2606 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_2606 v5
du_'8729''45'cong'691'_2606 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2606 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsMeetSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2608 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_2608 v5
du_'8729''45'cong'737'_2608 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2608 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsJoinSemilattice
d_IsJoinSemilattice_2610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_IsJoinSemilattice_2610 = erased
-- Algebra.Lattice.Structures.IsJoinSemilattice._.assoc
d_assoc_2620 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2620 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_450
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2534 (coe v0)))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.comm
d_comm_2622 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2622 v0 = coe d_comm_2536 (coe v0)
-- Algebra.Lattice.Structures.IsJoinSemilattice._.idem
d_idem_2624 :: T_IsSemilattice_2526 -> AgdaAny -> AgdaAny
d_idem_2624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_486
      (coe d_isBand_2534 (coe v0))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isBand
d_isBand_2626 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2626 v0 = coe d_isBand_2534 (coe v0)
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isEquivalence
d_isEquivalence_2628 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2534 (coe v0))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isMagma
d_isMagma_2630 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe d_isBand_2534 (coe v0)))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2632 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_2632 v5
du_isPartialEquivalence_2632 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2632 v0
  = let v1 = d_isBand_2534 (coe v0) in
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
d_isSemigroup_2634 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2634 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe d_isBand_2534 (coe v0))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.refl
d_refl_2636 :: T_IsSemilattice_2526 -> AgdaAny -> AgdaAny
d_refl_2636 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.reflexive
d_reflexive_2638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2638 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_2638 v5
du_reflexive_2638 ::
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2638 v0
  = let v1 = d_isBand_2534 (coe v0) in
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
d_setoid_2640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2640 v5
du_setoid_2640 ::
  T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2640 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.sym
d_sym_2642 ::
  T_IsSemilattice_2526 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.trans
d_trans_2644 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2644 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
               (coe d_isBand_2534 (coe v0)))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.∙-cong
d_'8729''45'cong_2646 ::
  T_IsSemilattice_2526 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe d_isBand_2534 (coe v0))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.∙-congʳ
d_'8729''45'cong'691'_2648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2648 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_2648 v5
du_'8729''45'cong'691'_2648 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2648 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsJoinSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2650 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_2650 v5
du_'8729''45'cong'737'_2650 ::
  T_IsSemilattice_2526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2650 v0
  = let v1 = d_isBand_2534 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Algebra.Lattice.Structures.IsBoundedSemilattice
d_IsBoundedSemilattice_2652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedSemilattice_2652 = erased
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.assoc
d_assoc_2664 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2664 v0
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
d_comm_2666 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_666
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.idem
d_idem_2668 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_idem_2668 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_726 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.identity
d_identity_2670 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2670 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.identityʳ
d_identity'691'_2672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_2672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_2672 v6
du_identity'691'_2672 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_2672 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.identityˡ
d_identity'737'_2674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_2674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_2674 v6
du_identity'737'_2674 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_2674 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isBand
d_isBand_2676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_2676 v6
du_isBand_2676 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2676 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isCommutativeMagma
d_isCommutativeMagma_2678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
d_isCommutativeMagma_2678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_2678 v6
du_isCommutativeMagma_2678 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180
du_isCommutativeMagma_2678 v0
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
d_isCommutativeMonoid_2680 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isCommutativeSemigroup
d_isCommutativeSemigroup_2682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_2682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_2682 v6
du_isCommutativeSemigroup_2682 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_2682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_704
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isEquivalence
d_isEquivalence_2684 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2684 v0
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
d_isMagma_2686 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2686 v0
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
d_isMonoid_2688 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2688 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isPartialEquivalence
d_isPartialEquivalence_2690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2690 v6
du_isPartialEquivalence_2690 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2690 v0
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
d_isSemigroup_2692 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2692 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.isUnitalMagma
d_isUnitalMagma_2694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
d_isUnitalMagma_2694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_2694 v6
du_isUnitalMagma_2694 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560
du_isUnitalMagma_2694 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_isUnitalMagma_648
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedSemilattice._.refl
d_refl_2696 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_refl_2696 v0
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
d_reflexive_2698 ::
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
d_reflexive_2698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2698 v6
du_reflexive_2698 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2698 v0
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
d_setoid_2700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_2700 v6
du_setoid_2700 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2700 v0
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
d_sym_2702 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2702 v0
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
d_trans_2704 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2704 v0
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
d_'8729''45'cong_2706 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2706 v0
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
d_'8729''45'cong'691'_2708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_2708 v6
du_'8729''45'cong'691'_2708 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2708 v0
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
d_'8729''45'cong'737'_2710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_2710 v6
du_'8729''45'cong'737'_2710 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2710 v0
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
d_isSemilattice_2712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2526
d_isSemilattice_2712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemilattice_2712 v6
du_isSemilattice_2712 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2526
du_isSemilattice_2712 v0
  = coe
      C_IsSemilattice'46'constructor_32583
      (coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_666
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice
d_IsBoundedMeetSemilattice_2714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedMeetSemilattice_2714 = erased
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.identity
d_identity_2726 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.identityʳ
d_identity'691'_2728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_2728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_2728 v6
du_identity'691'_2728 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_2728 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.identityˡ
d_identity'737'_2730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_2730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_2730 v6
du_identity'737'_2730 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_2730 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isSemilattice
d_isSemilattice_2732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2526
d_isSemilattice_2732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemilattice_2732 v6
du_isSemilattice_2732 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2526
du_isSemilattice_2732 v0 = coe du_isSemilattice_2712 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.assoc
d_assoc_2736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_assoc_2736 v6
du_assoc_2736 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2736 v0
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
d_comm_2738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_comm_2738 v6
du_comm_2738 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_comm_2738 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_666
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.idem
d_idem_2740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_idem_2740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_idem_2740 v6
du_idem_2740 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_idem_2740 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_726 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isBand
d_isBand_2742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_2742 v6
du_isBand_2742 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2742 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.isEquivalence
d_isEquivalence_2744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2744 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_2744 v6
du_isEquivalence_2744 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2744 v0
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
d_isMagma_2746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2746 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isMagma_2746 v6
du_isMagma_2746 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2746 v0
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
d_isPartialEquivalence_2748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2748 v6
du_isPartialEquivalence_2748 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2748 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
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
d_isSemigroup_2750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemigroup_2750 v6
du_isSemigroup_2750 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.refl
d_refl_2752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_refl_2752 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_2752 v6
du_refl_2752 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_refl_2752 v0
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
d_reflexive_2754 ::
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
d_reflexive_2754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2754 v6
du_reflexive_2754 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2754 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
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
d_setoid_2756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_2756 v6
du_setoid_2756 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2756 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.sym
d_sym_2758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_2758 v6
du_sym_2758 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2758 v0
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
d_trans_2760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2760 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_2760 v6
du_trans_2760 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2760 v0
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
d_'8729''45'cong_2762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2762 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong_2762 v6
du_'8729''45'cong_2762 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2762 v0
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
d_'8729''45'cong'691'_2764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2764 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_2764 v6
du_'8729''45'cong'691'_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2764 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedMeetSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2766 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_2766 v6
du_'8729''45'cong'737'_2766 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2766 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice
d_IsBoundedJoinSemilattice_2768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedJoinSemilattice_2768 = erased
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.identity
d_identity_2780 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2780 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.identityʳ
d_identity'691'_2782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'691'_2782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_2782 v6
du_identity'691'_2782 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'691'_2782 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_646
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.identityˡ
d_identity'737'_2784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_identity'737'_2784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_2784 v6
du_identity'737'_2784 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_identity'737'_2784 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_identity'737'_644
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v1)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isSemilattice
d_isSemilattice_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2526
d_isSemilattice_2786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemilattice_2786 v6
du_isSemilattice_2786 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  T_IsSemilattice_2526
du_isSemilattice_2786 v0 = coe du_isSemilattice_2712 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.assoc
d_assoc_2790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_assoc_2790 v6
du_assoc_2790 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2790 v0
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
d_comm_2792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_comm_2792 v6
du_comm_2792 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_comm_2792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_666
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.idem
d_idem_2794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_idem_2794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_idem_2794 v6
du_idem_2794 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_idem_2794 v0
  = coe MAlonzo.Code.Algebra.Structures.d_idem_726 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isBand
d_isBand_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_2796 v6
du_isBand_2796 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2796 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.isEquivalence
d_isEquivalence_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_2798 v6
du_isEquivalence_2798 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2798 v0
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
d_isMagma_2800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isMagma_2800 v6
du_isMagma_2800 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2800 v0
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
d_isPartialEquivalence_2802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2802 v6
du_isPartialEquivalence_2802 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2802 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
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
d_isSemigroup_2804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isSemigroup_2804 v6
du_isSemigroup_2804 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.refl
d_refl_2806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
d_refl_2806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_2806 v6
du_refl_2806 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny
du_refl_2806 v0
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
d_reflexive_2808 ::
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
d_reflexive_2808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2808 v6
du_reflexive_2808 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2808 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
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
d_setoid_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_2810 v6
du_setoid_2810 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2810 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.sym
d_sym_2812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_2812 v6
du_sym_2812 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2812 v0
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
d_trans_2814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_2814 v6
du_trans_2814 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2814 v0
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
d_'8729''45'cong_2816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong_2816 v6
du_'8729''45'cong_2816 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2816 v0
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
d_'8729''45'cong'691'_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_2818 v6
du_'8729''45'cong'691'_2818 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2818 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsBoundedJoinSemilattice._.∙-congˡ
d_'8729''45'cong'737'_2820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_2820 v6
du_'8729''45'cong'737'_2820 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2820 v0
  = let v1 = coe du_isSemilattice_2712 (coe v0) in
    coe
      (let v2 = d_isBand_2534 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Algebra.Lattice.Structures.IsLattice
d_IsLattice_2826 a0 a1 a2 a3 a4 a5 = ()
data T_IsLattice_2826
  = C_IsLattice'46'constructor_35597 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
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
d_isEquivalence_2848 ::
  T_IsLattice_2826 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2848 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∨-comm
d_'8744''45'comm_2850 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_2850 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∨-assoc
d_'8744''45'assoc_2852 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_2852 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∨-cong
d_'8744''45'cong_2854 ::
  T_IsLattice_2826 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_2854 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∧-comm
d_'8743''45'comm_2856 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_2856 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∧-assoc
d_'8743''45'assoc_2858 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_2858 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.∧-cong
d_'8743''45'cong_2860 ::
  T_IsLattice_2826 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_2860 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice.absorptive
d_absorptive_2862 ::
  T_IsLattice_2826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2862 v0
  = case coe v0 of
      C_IsLattice'46'constructor_35597 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsLattice._.isPartialEquivalence
d_isPartialEquivalence_2866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2866 v6
du_isPartialEquivalence_2866 ::
  T_IsLattice_2826 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2866 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_2848 (coe v0))
-- Algebra.Lattice.Structures.IsLattice._.refl
d_refl_2868 :: T_IsLattice_2826 -> AgdaAny -> AgdaAny
d_refl_2868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_2848 (coe v0))
-- Algebra.Lattice.Structures.IsLattice._.reflexive
d_reflexive_2870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2870 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2870 v6
du_reflexive_2870 ::
  T_IsLattice_2826 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2870 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe d_isEquivalence_2848 (coe v0)) v1
-- Algebra.Lattice.Structures.IsLattice._.sym
d_sym_2872 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2872 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_2848 (coe v0))
-- Algebra.Lattice.Structures.IsLattice._.trans
d_trans_2874 ::
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2874 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_2848 (coe v0))
-- Algebra.Lattice.Structures.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_2876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_2876 v6
du_'8744''45'absorbs'45''8743'_2876 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_2876 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_absorptive_2862 (coe v0))
-- Algebra.Lattice.Structures.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_2878 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_2878 v6
du_'8743''45'absorbs'45''8744'_2878 ::
  T_IsLattice_2826 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_2878 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_absorptive_2862 (coe v0))
-- Algebra.Lattice.Structures.IsLattice.∧-congˡ
d_'8743''45'cong'737'_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_2880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8743''45'cong'737'_2880 v6 v7 v8 v9 v10
du_'8743''45'cong'737'_2880 ::
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_2880 v0 v1 v2 v3 v4
  = coe
      d_'8743''45'cong_2860 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2848 (coe v0)) v1)
      v4
-- Algebra.Lattice.Structures.IsLattice.∧-congʳ
d_'8743''45'cong'691'_2884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_2884 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8743''45'cong'691'_2884 v6 v7 v8 v9 v10
du_'8743''45'cong'691'_2884 ::
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_2884 v0 v1 v2 v3 v4
  = coe
      d_'8743''45'cong_2860 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2848 (coe v0)) v1)
-- Algebra.Lattice.Structures.IsLattice.∨-congˡ
d_'8744''45'cong'737'_2888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_2888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8744''45'cong'737'_2888 v6 v7 v8 v9 v10
du_'8744''45'cong'737'_2888 ::
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_2888 v0 v1 v2 v3 v4
  = coe
      d_'8744''45'cong_2854 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2848 (coe v0)) v1)
      v4
-- Algebra.Lattice.Structures.IsLattice.∨-congʳ
d_'8744''45'cong'691'_2892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_2892 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8744''45'cong'691'_2892 v6 v7 v8 v9 v10
du_'8744''45'cong'691'_2892 ::
  T_IsLattice_2826 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_2892 v0 v1 v2 v3 v4
  = coe
      d_'8744''45'cong_2854 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_2848 (coe v0)) v1)
-- Algebra.Lattice.Structures.IsDistributiveLattice
d_IsDistributiveLattice_2900 a0 a1 a2 a3 a4 a5 = ()
data T_IsDistributiveLattice_2900
  = C_IsDistributiveLattice'46'constructor_39691 T_IsLattice_2826
                                                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Lattice.Structures.IsDistributiveLattice.isLattice
d_isLattice_2912 ::
  T_IsDistributiveLattice_2900 -> T_IsLattice_2826
d_isLattice_2912 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_39691 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_2914 ::
  T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_2914 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_39691 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_2916 ::
  T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_2916 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_39691 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsDistributiveLattice._.absorptive
d_absorptive_2920 ::
  T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2920 v0
  = coe d_absorptive_2862 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.isEquivalence
d_isEquivalence_2922 ::
  T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2922 v0
  = coe d_isEquivalence_2848 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.isPartialEquivalence
d_isPartialEquivalence_2924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2924 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_2924 v6
du_isPartialEquivalence_2924 ::
  T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2924 v0
  = let v1 = d_isLattice_2912 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_2848 (coe v1)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.refl
d_refl_2926 :: T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny
d_refl_2926 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_2848 (coe d_isLattice_2912 (coe v0)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.reflexive
d_reflexive_2928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_2928 v6
du_reflexive_2928 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2928 v0
  = let v1 = d_isLattice_2912 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_2848 (coe v1)) v2)
-- Algebra.Lattice.Structures.IsDistributiveLattice._.sym
d_sym_2930 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2930 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_2848 (coe d_isLattice_2912 (coe v0)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.trans
d_trans_2932 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2932 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_2848 (coe d_isLattice_2912 (coe v0)))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_2934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_2934 v6
du_'8743''45'absorbs'45''8744'_2934 ::
  T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_2934 v0
  = coe
      du_'8743''45'absorbs'45''8744'_2878 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-assoc
d_'8743''45'assoc_2936 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_2936 v0
  = coe d_'8743''45'assoc_2858 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-comm
d_'8743''45'comm_2938 ::
  T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_2938 v0
  = coe d_'8743''45'comm_2856 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-cong
d_'8743''45'cong_2940 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_2940 v0
  = coe d_'8743''45'cong_2860 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-congʳ
d_'8743''45'cong'691'_2942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_2942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_2942 v6
du_'8743''45'cong'691'_2942 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_2942 v0
  = coe du_'8743''45'cong'691'_2884 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∧-congˡ
d_'8743''45'cong'737'_2944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_2944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_2944 v6
du_'8743''45'cong'737'_2944 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_2944 v0
  = coe du_'8743''45'cong'737'_2880 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_2946 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_2946 v6
du_'8744''45'absorbs'45''8743'_2946 ::
  T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_2946 v0
  = coe
      du_'8744''45'absorbs'45''8743'_2876 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-assoc
d_'8744''45'assoc_2948 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_2948 v0
  = coe d_'8744''45'assoc_2852 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-comm
d_'8744''45'comm_2950 ::
  T_IsDistributiveLattice_2900 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_2950 v0
  = coe d_'8744''45'comm_2850 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-cong
d_'8744''45'cong_2952 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_2952 v0
  = coe d_'8744''45'cong_2854 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-congʳ
d_'8744''45'cong'691'_2954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_2954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_2954 v6
du_'8744''45'cong'691'_2954 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_2954 v0
  = coe du_'8744''45'cong'691'_2892 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice._.∨-congˡ
d_'8744''45'cong'737'_2956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_2956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_2956 v6
du_'8744''45'cong'737'_2956 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_2956 v0
  = coe du_'8744''45'cong'737'_2888 (coe d_isLattice_2912 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_2958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_2958 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'distrib'737''45''8743'_2958 v6
du_'8744''45'distrib'737''45''8743'_2958 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_2958 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8744''45'distrib'45''8743'_2914 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_2960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_2960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'distrib'691''45''8743'_2960 v6
du_'8744''45'distrib'691''45''8743'_2960 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_2960 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8744''45'distrib'45''8743'_2914 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_2962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_2962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'distrib'737''45''8744'_2962 v6
du_'8743''45'distrib'737''45''8744'_2962 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_2962 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8743''45'distrib'45''8744'_2916 (coe v0))
-- Algebra.Lattice.Structures.IsDistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_2964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_2964 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'distrib'691''45''8744'_2964 v6
du_'8743''45'distrib'691''45''8744'_2964 ::
  T_IsDistributiveLattice_2900 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_2964 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8743''45'distrib'45''8744'_2916 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra
d_IsBooleanAlgebra_2976 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBooleanAlgebra_2976
  = C_IsBooleanAlgebra'46'constructor_42757 T_IsDistributiveLattice_2900
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                            (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Lattice.Structures.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_2996 ::
  T_IsBooleanAlgebra_2976 -> T_IsDistributiveLattice_2900
d_isDistributiveLattice_2996 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_42757 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_2998 ::
  T_IsBooleanAlgebra_2976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_2998 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_42757 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_3000 ::
  T_IsBooleanAlgebra_2976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_3000 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_42757 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra.¬-cong
d_'172''45'cong_3002 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_3002 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_42757 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.absorptive
d_absorptive_3006 ::
  T_IsBooleanAlgebra_2976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_3006 v0
  = coe
      d_absorptive_2862
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.isEquivalence
d_isEquivalence_3008 ::
  T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3008 v0
  = coe
      d_isEquivalence_2848
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.isLattice
d_isLattice_3010 :: T_IsBooleanAlgebra_2976 -> T_IsLattice_2826
d_isLattice_3010 v0
  = coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.isPartialEquivalence
d_isPartialEquivalence_3012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3012 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3012 v9
du_isPartialEquivalence_3012 ::
  T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3012 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (let v2 = d_isLattice_2912 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_2848 (coe v2))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.refl
d_refl_3014 :: T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
d_refl_3014 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_2848
         (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.reflexive
d_reflexive_3016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3016 v9
du_reflexive_3016 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3016 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (let v2 = d_isLattice_2912 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_2848 (coe v2)) v3))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.sym
d_sym_3018 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3018 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_2848
         (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.trans
d_trans_3020 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3020 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_2848
         (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0))))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_3022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_3022 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'8743''45'absorbs'45''8744'_3022 v9
du_'8743''45'absorbs'45''8744'_3022 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_3022 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (coe
         du_'8743''45'absorbs'45''8744'_2878
         (coe d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-assoc
d_'8743''45'assoc_3024 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_3024 v0
  = coe
      d_'8743''45'assoc_2858
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-comm
d_'8743''45'comm_3026 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_3026 v0
  = coe
      d_'8743''45'comm_2856
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-cong
d_'8743''45'cong_3028 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_3028 v0
  = coe
      d_'8743''45'cong_2860
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-congʳ
d_'8743''45'cong'691'_3030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_3030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'691'_3030 v9
du_'8743''45'cong'691'_3030 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_3030 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (coe du_'8743''45'cong'691'_2884 (coe d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-congˡ
d_'8743''45'cong'737'_3032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_3032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'737'_3032 v9
du_'8743''45'cong'737'_3032 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_3032 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (coe du_'8743''45'cong'737'_2880 (coe d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3034 ::
  T_IsBooleanAlgebra_2976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3034 v0
  = coe
      d_'8743''45'distrib'45''8744'_2916
      (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_3036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8743''45'distrib'691''45''8744'_3036 v9
du_'8743''45'distrib'691''45''8744'_3036 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_3036 v0
  = coe
      du_'8743''45'distrib'691''45''8744'_2964
      (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_3038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8743''45'distrib'737''45''8744'_3038 v9
du_'8743''45'distrib'737''45''8744'_3038 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_3038 v0
  = coe
      du_'8743''45'distrib'737''45''8744'_2962
      (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_3040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_3040 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'8744''45'absorbs'45''8743'_3040 v9
du_'8744''45'absorbs'45''8743'_3040 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_3040 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (coe
         du_'8744''45'absorbs'45''8743'_2876
         (coe d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-assoc
d_'8744''45'assoc_3042 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_3042 v0
  = coe
      d_'8744''45'assoc_2852
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-comm
d_'8744''45'comm_3044 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_3044 v0
  = coe
      d_'8744''45'comm_2850
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-cong
d_'8744''45'cong_3046 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_3046 v0
  = coe
      d_'8744''45'cong_2854
      (coe d_isLattice_2912 (coe d_isDistributiveLattice_2996 (coe v0)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-congʳ
d_'8744''45'cong'691'_3048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_3048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'691'_3048 v9
du_'8744''45'cong'691'_3048 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_3048 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (coe du_'8744''45'cong'691'_2892 (coe d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-congˡ
d_'8744''45'cong'737'_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_3050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'737'_3050 v9
du_'8744''45'cong'737'_3050 ::
  T_IsBooleanAlgebra_2976 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_3050 v0
  = let v1 = d_isDistributiveLattice_2996 (coe v0) in
    coe
      (coe du_'8744''45'cong'737'_2888 (coe d_isLattice_2912 (coe v1)))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3052 ::
  T_IsBooleanAlgebra_2976 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3052 v0
  = coe
      d_'8744''45'distrib'45''8743'_2914
      (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_3054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8744''45'distrib'691''45''8743'_3054 v9
du_'8744''45'distrib'691''45''8743'_3054 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'691''45''8743'_3054 v0
  = coe
      du_'8744''45'distrib'691''45''8743'_2960
      (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra._.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_3056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8744''45'distrib'737''45''8743'_3056 v9
du_'8744''45'distrib'737''45''8743'_3056 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_3056 v0
  = coe
      du_'8744''45'distrib'737''45''8743'_2958
      (coe d_isDistributiveLattice_2996 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∨-complementˡ
d_'8744''45'complement'737'_3058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
d_'8744''45'complement'737'_3058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8744''45'complement'737'_3058 v9
du_'8744''45'complement'737'_3058 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
du_'8744''45'complement'737'_3058 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8744''45'complement_2998 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∨-complementʳ
d_'8744''45'complement'691'_3060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
d_'8744''45'complement'691'_3060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8744''45'complement'691'_3060 v9
du_'8744''45'complement'691'_3060 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
du_'8744''45'complement'691'_3060 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8744''45'complement_2998 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∧-complementˡ
d_'8743''45'complement'737'_3062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
d_'8743''45'complement'737'_3062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8743''45'complement'737'_3062 v9
du_'8743''45'complement'737'_3062 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
du_'8743''45'complement'737'_3062 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'8743''45'complement_3000 (coe v0))
-- Algebra.Lattice.Structures.IsBooleanAlgebra.∧-complementʳ
d_'8743''45'complement'691'_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
d_'8743''45'complement'691'_3064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                 ~v8 v9
  = du_'8743''45'complement'691'_3064 v9
du_'8743''45'complement'691'_3064 ::
  T_IsBooleanAlgebra_2976 -> AgdaAny -> AgdaAny
du_'8743''45'complement'691'_3064 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'8743''45'complement_3000 (coe v0))
