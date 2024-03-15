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

module MAlonzo.Code.Algebra.Lattice.Properties.BooleanAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice
import qualified MAlonzo.Code.Algebra.Lattice.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Lattice.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Lattice.Properties.BooleanAlgebra._.IsAbelianGroup
d_IsAbelianGroup_116 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeMonoid
d_IsCommutativeMonoid_126 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing
d_IsCommutativeRing_128 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring
d_IsCommutativeSemiring_132 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup
d_IsGroup_138 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma
d_IsMagma_156 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid
d_IsMonoid_162 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing
d_IsRing_178 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup
d_IsSemigroup_184 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring
d_IsSemiring_188 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOver_
d__DistributesOver__2498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__2498 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOverʳ_
d__DistributesOver'691'__2500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__2500 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOverˡ_
d__DistributesOver'737'__2502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__2502 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Associative
d_Associative_2518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_2518 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Commutative
d_Commutative_2522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_2522 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Congruent₂
d_Congruent'8322'_2526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_2526 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Identity
d_Identity_2538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_2538 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Inverse
d_Inverse_2542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_2542 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Involutive
d_Involutive_2546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_2546 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftIdentity
d_LeftIdentity_2564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_2564 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftInverse
d_LeftInverse_2566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_2566 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftZero
d_LeftZero_2572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_2572 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightIdentity
d_RightIdentity_2594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_2594 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightInverse
d_RightInverse_2596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_2596 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightZero
d_RightZero_2602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_2602 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Zero
d_Zero_2622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_2622 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra
d_IsBooleanAlgebra_2710 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.poset
d_poset_3172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_poset_3172 ~v0 ~v1 v2 = du_poset_3172 v2
du_poset_3172 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
du_poset_3172 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-idem
d_'8743''45'idem_3174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_3174 ~v0 ~v1 v2 = du_'8743''45'idem_3174 v2
du_'8743''45'idem_3174 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_3174 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3046
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isBand
d_'8743''45'isBand_3176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8743''45'isBand_3176 ~v0 ~v1 v2 = du_'8743''45'isBand_3176 v2
du_'8743''45'isBand_3176 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8743''45'isBand_3176 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isBand_3054
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isMagma
d_'8743''45'isMagma_3178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8743''45'isMagma_3178 ~v0 ~v1 v2 = du_'8743''45'isMagma_3178 v2
du_'8743''45'isMagma_3178 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8743''45'isMagma_3178 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isMagma_3050
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3180 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3180 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3180 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3180 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_3182 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3182 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3182 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_3182 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isSemigroup
d_'8743''45'isSemigroup_3184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8743''45'isSemigroup_3184 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_3184 v2
du_'8743''45'isSemigroup_3184 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8743''45'isSemigroup_3184 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_3052
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isSemilattice
d_'8743''45'isSemilattice_3186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8743''45'isSemilattice_3186 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_3186 v2
du_'8743''45'isSemilattice_3186 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_'8743''45'isSemilattice_3186 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemilattice_3056
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3188 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3188 v2
du_'8743''45'orderTheoreticJoinSemilattice_3188 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3188 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_3190 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3190 v2
du_'8743''45'orderTheoreticMeetSemilattice_3190 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_3190 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-semilattice
d_'8743''45'semilattice_3192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3192 ~v0 ~v1 v2
  = du_'8743''45'semilattice_3192 v2
du_'8743''45'semilattice_3192 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8743''45'semilattice_3192 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3058
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_3194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8743''45''8744''45'distributiveLattice_3194 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_3194 v2
du_'8743''45''8744''45'distributiveLattice_3194 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
du_'8743''45''8744''45'distributiveLattice_3194 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'distributiveLattice_736
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
         (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_3196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8743''45''8744''45'isDistributiveLattice_3196 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_3196 v2
du_'8743''45''8744''45'isDistributiveLattice_3196 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
du_'8743''45''8744''45'isDistributiveLattice_3196 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_734
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
         (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_3198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8743''45''8744''45'isLattice_3198 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_3198 v2
du_'8743''45''8744''45'isLattice_3198 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
du_'8743''45''8744''45'isLattice_3198 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_3094
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-lattice
d_'8743''45''8744''45'lattice_3200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8743''45''8744''45'lattice_3200 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_3200 v2
du_'8743''45''8744''45'lattice_3200 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
du_'8743''45''8744''45'lattice_3200 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'lattice_3096
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-idem
d_'8744''45'idem_3202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_3202 ~v0 ~v1 v2 = du_'8744''45'idem_3202 v2
du_'8744''45'idem_3202 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_3202 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3070
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isBand
d_'8744''45'isBand_3204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8744''45'isBand_3204 ~v0 ~v1 v2 = du_'8744''45'isBand_3204 v2
du_'8744''45'isBand_3204 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_'8744''45'isBand_3204 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isBand_3078
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isMagma
d_'8744''45'isMagma_3206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8744''45'isMagma_3206 ~v0 ~v1 v2 = du_'8744''45'isMagma_3206 v2
du_'8744''45'isMagma_3206 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8744''45'isMagma_3206 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isMagma_3074
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3208 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3208 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3208 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3208 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_3210 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3210 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3210 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_3210 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isSemigroup
d_'8744''45'isSemigroup_3212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8744''45'isSemigroup_3212 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_3212 v2
du_'8744''45'isSemigroup_3212 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8744''45'isSemigroup_3212 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_3076
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isSemilattice
d_'8744''45'isSemilattice_3214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8744''45'isSemilattice_3214 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_3214 v2
du_'8744''45'isSemilattice_3214 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_'8744''45'isSemilattice_3214 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemilattice_3080
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3216 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3216 v2
du_'8743''45'orderTheoreticJoinSemilattice_3216 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3216 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_3218 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3218 v2
du_'8743''45'orderTheoreticMeetSemilattice_3218 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_3218 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-semilattice
d_'8744''45'semilattice_3220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3220 ~v0 ~v1 v2
  = du_'8744''45'semilattice_3220 v2
du_'8744''45'semilattice_3220 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8744''45'semilattice_3220 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3082
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_3222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_'8744''45''8743''45'isOrderTheoreticLattice_3222 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_3222 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_3222 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_'8744''45''8743''45'isOrderTheoreticLattice_3222 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_3108
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_3224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
d_'8744''45''8743''45'orderTheoreticLattice_3224 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_3224 v2
du_'8744''45''8743''45'orderTheoreticLattice_3224 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
du_'8744''45''8743''45'orderTheoreticLattice_3224 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_3164
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra
d_'8743''45''8744''45'isBooleanAlgebra_3226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976
d_'8743''45''8744''45'isBooleanAlgebra_3226 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isBooleanAlgebra_3226 v2
du_'8743''45''8744''45'isBooleanAlgebra_3226 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976
du_'8743''45''8744''45'isBooleanAlgebra_3226 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsBooleanAlgebra'46'constructor_42757
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_734
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3000
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_2998
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
            (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-booleanAlgebra
d_'8743''45''8744''45'booleanAlgebra_3228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680
d_'8743''45''8744''45'booleanAlgebra_3228 ~v0 ~v1 v2
  = du_'8743''45''8744''45'booleanAlgebra_3228 v2
du_'8743''45''8744''45'booleanAlgebra_3228 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680
du_'8743''45''8744''45'booleanAlgebra_3228 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_BooleanAlgebra'46'constructor_11505
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe du_'8743''45''8744''45'isBooleanAlgebra_3226 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identityʳ
d_'8743''45'identity'691'_3230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'691'_3230 ~v0 ~v1 v2 v3
  = du_'8743''45'identity'691'_3230 v2 v3
du_'8743''45'identity'691'_3230 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'691'_3230 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                   (coe v2))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (let v2
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v2) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_2878
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                  (coe v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3060
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))
                        v1))))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identityˡ
d_'8743''45'identity'737'_3234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'737'_3234 ~v0 ~v1 v2
  = du_'8743''45'identity'737'_3234 v2
du_'8743''45'identity'737'_3234 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'737'_3234 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'691''8658'id'737'_346
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe du_'8743''45'identity'691'_3230 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identity
d_'8743''45'identity_3236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_3236 ~v0 ~v1 v2
  = du_'8743''45'identity_3236 v2
du_'8743''45'identity_3236 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'identity_3236 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'identity'737'_3234 (coe v0))
      (coe du_'8743''45'identity'691'_3230 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identityʳ
d_'8744''45'identity'691'_3238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'691'_3238 ~v0 ~v1 v2 v3
  = du_'8744''45'identity'691'_3238 v2 v3
du_'8744''45'identity'691'_3238 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'691'_3238 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                   (coe v2))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (let v2
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v2) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_2876
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v2))
               (coe v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identityˡ
d_'8744''45'identity'737'_3242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'737'_3242 ~v0 ~v1 v2
  = du_'8744''45'identity'737'_3242 v2
du_'8744''45'identity'737'_3242 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'737'_3242 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'691''8658'id'737'_346
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe du_'8744''45'identity'691'_3238 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identity
d_'8744''45'identity_3244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_3244 ~v0 ~v1 v2
  = du_'8744''45'identity_3244 v2
du_'8744''45'identity_3244 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'identity_3244 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'identity'737'_3242 (coe v0))
      (coe du_'8744''45'identity'691'_3238 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zeroʳ
d_'8743''45'zero'691'_3246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'691'_3246 ~v0 ~v1 v2 v3
  = du_'8743''45'zero'691'_3246 v2 v3
du_'8743''45'zero'691'_3246 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'691'_3246 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v2
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v2
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v2)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                  (let v2
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v2
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v2))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1))
               (let v2
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v1)
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3046
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                 (coe v0)))
                           (coe v1))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))))
               v1 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zeroˡ
d_'8743''45'zero'737'_3250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'737'_3250 ~v0 ~v1 v2
  = du_'8743''45'zero'737'_3250 v2
du_'8743''45'zero'737'_3250 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'737'_3250 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'691''8658'ze'737'_366
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe du_'8743''45'zero'691'_3246 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zero
d_'8743''45'zero_3252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_3252 ~v0 ~v1 v2 = du_'8743''45'zero_3252 v2
du_'8743''45'zero_3252 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'zero_3252 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'zero'737'_3250 (coe v0))
      (coe du_'8743''45'zero'691'_3246 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zeroʳ
d_'8744''45'zero'691'_3256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'691'_3256 ~v0 ~v1 v2 v3
  = du_'8744''45'zero'691'_3256 v2 v3
du_'8744''45'zero'691'_3256 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'691'_3256 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v2
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v2
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v2)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (let v2
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v2
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v2))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3060
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1))
               (let v2
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v1)
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                 (coe v0)))
                           (coe v1))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))))
               v1 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3060
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zeroˡ
d_'8744''45'zero'737'_3260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'737'_3260 ~v0 ~v1 v2
  = du_'8744''45'zero'737'_3260 v2
du_'8744''45'zero'737'_3260 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'737'_3260 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'691''8658'ze'737'_366
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe du_'8744''45'zero'691'_3256 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zero
d_'8744''45'zero_3262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_3262 ~v0 ~v1 v2 = du_'8744''45'zero_3262 v2
du_'8744''45'zero_3262 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'zero_3262 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'zero'737'_3260 (coe v0))
      (coe du_'8744''45'zero'691'_3256 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-⊥-isMonoid
d_'8744''45''8869''45'isMonoid_3264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8744''45''8869''45'isMonoid_3264 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isMonoid_3264 v2
du_'8744''45''8869''45'isMonoid_3264 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8744''45''8869''45'isMonoid_3264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_3076
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
               (coe v0))))
      (coe du_'8744''45'identity_3244 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-⊤-isMonoid
d_'8743''45''8868''45'isMonoid_3266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8743''45''8868''45'isMonoid_3266 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isMonoid_3266 v2
du_'8743''45''8868''45'isMonoid_3266 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8743''45''8868''45'isMonoid_3266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_3052
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
               (coe v0))))
      (coe du_'8743''45'identity_3236 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid
d_'8744''45''8869''45'isCommutativeMonoid_3268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'8744''45''8869''45'isCommutativeMonoid_3268 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isCommutativeMonoid_3268 v2
du_'8744''45''8869''45'isCommutativeMonoid_3268 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'8744''45''8869''45'isCommutativeMonoid_3268 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe du_'8744''45''8869''45'isMonoid_3264 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid
d_'8743''45''8868''45'isCommutativeMonoid_3270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'8743''45''8868''45'isCommutativeMonoid_3270 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isCommutativeMonoid_3270 v2
du_'8743''45''8868''45'isCommutativeMonoid_3270 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
du_'8743''45''8868''45'isCommutativeMonoid_3270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe du_'8743''45''8868''45'isMonoid_3266 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_3272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'8744''45''8743''45'isSemiring_3272 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isSemiring_3272 v2
du_'8744''45''8743''45'isSemiring_3272 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_'8744''45''8743''45'isSemiring_3272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
         (coe du_'8744''45''8869''45'isCommutativeMonoid_3268 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0)))))
         (coe du_'8743''45'identity_3236 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_2916
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe du_'8743''45'zero_3252 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_3274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'8743''45''8744''45'isSemiring_3274 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isSemiring_3274 v2
du_'8743''45''8744''45'isSemiring_3274 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
du_'8743''45''8744''45'isSemiring_3274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
         (coe du_'8743''45''8868''45'isCommutativeMonoid_3270 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0)))))
         (coe du_'8744''45'identity_3244 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_2914
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe du_'8744''45'zero_3262 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_3276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'8744''45''8743''45'isCommutativeSemiring_3276 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isCommutativeSemiring_3276 v2
du_'8744''45''8743''45'isCommutativeSemiring_3276 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_'8744''45''8743''45'isCommutativeSemiring_3276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe du_'8744''45''8743''45'isSemiring_3272 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_3278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'8743''45''8744''45'isCommutativeSemiring_3278 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isCommutativeSemiring_3278 v2
du_'8743''45''8744''45'isCommutativeSemiring_3278 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
du_'8743''45''8744''45'isCommutativeSemiring_3278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe du_'8743''45''8744''45'isSemiring_3274 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_3280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'8744''45''8743''45'commutativeSemiring_3280 ~v0 ~v1 v2
  = du_'8744''45''8743''45'commutativeSemiring_3280 v2
du_'8744''45''8743''45'commutativeSemiring_3280 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
du_'8744''45''8743''45'commutativeSemiring_3280 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_39235
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe du_'8744''45''8743''45'isCommutativeSemiring_3276 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_3282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'8743''45''8744''45'commutativeSemiring_3282 ~v0 ~v1 v2
  = du_'8743''45''8744''45'commutativeSemiring_3282 v2
du_'8743''45''8744''45'commutativeSemiring_3282 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
du_'8743''45''8744''45'commutativeSemiring_3282 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_39235
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe du_'8743''45''8744''45'isCommutativeSemiring_3278 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.lemma
d_lemma_3288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma_3288 ~v0 ~v1 v2 v3 v4 v5 v6 = du_lemma_3288 v2 v3 v4 v5 v6
du_lemma_3288 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma_3288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5))))))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v5)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                  v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v5
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v5)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v5))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                     v2
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v5
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v5)))))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v5
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v5))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                           v2)
                        v2
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v5
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                             (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)) v2)
                           v2
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                (coe v5)))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)) v2)
                              v2 v2
                              (let v5
                                     = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (let v5
                                                   = coe
                                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                       (coe v0) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                  (coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                     (coe v5))))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                       (coe v5))
                                    (coe v2)))
                              (coe du_'8743''45'identity'737'_3234 v0 v2))
                           (let v5
                                  = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                    (coe v5))
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3060
                                    (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                       (coe v0))
                                    v1))))
                        (let v5
                               = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_2964
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe v5))
                              v2 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))))
                     (let v5
                            = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                (coe v0) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                   (coe v5) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                              (coe v3)))))
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'737'_3062
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))
                           v1))))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1
                     v2)))
            (let v5
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v6
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v5) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v6))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                     (coe v4)))))
         (coe
            du_'8743''45'identity'691'_3230 (coe v0)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.⊥≉⊤
d_'8869''8777''8868'_3298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny
d_'8869''8777''8868'_3298 ~v0 ~v1 v2
  = du_'8869''8777''8868'_3298 v2
du_'8869''8777''8868'_3298 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny
du_'8869''8777''8868'_3298 v0
  = coe
      du_lemma_3288 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe
         du_'8743''45'identity'691'_3230 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
      (coe
         du_'8744''45'zero'691'_3256 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.⊤≉⊥
d_'8868''8777''8869'_3300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny
d_'8868''8777''8869'_3300 ~v0 ~v1 v2
  = du_'8868''8777''8869'_3300 v2
du_'8868''8777''8869'_3300 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny
du_'8868''8777''8869'_3300 v0
  = coe
      du_lemma_3288 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe
         du_'8743''45'zero'691'_3246 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
      (coe
         du_'8744''45'identity'691'_3238 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.¬-involutive
d_'172''45'involutive_3302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'172''45'involutive_3302 ~v0 ~v1 v2 v3
  = du_'172''45'involutive_3302 v2 v3
du_'172''45'involutive_3302 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'172''45'involutive_3302 v0 v1
  = coe
      du_lemma_3288 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'737'_3062
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
            (coe v0))
         v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3058
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
            (coe v0))
         v1)
-- Algebra.Lattice.Properties.BooleanAlgebra.deMorgan₁
d_deMorgan'8321'_3310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8321'_3310 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8321'_3310 v2 v3 v4
du_deMorgan'8321'_3310 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8321'_3310 v0 v1 v2
  = coe
      du_lemma_3288 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
      (coe du_lem'8321'_3320 (coe v0) (coe v1) (coe v2))
      (coe du_lem'8322'_3324 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₁
d_lem'8321'_3320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3320 ~v0 ~v1 v2 v3 v4 = du_lem'8321'_3320 v2 v3 v4
du_lem'8321'_3320 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3320 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v3)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                        (let v3
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v3
                                             = coe
                                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                 (coe v0) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                            (coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                               (coe v3))))) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v3))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
                        (coe
                           du_'8744''45'identity'691'_3238 (coe v0)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe du_'8743''45'zero'691'_3246 (coe v0) (coe v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (coe du_'8743''45'zero'691'_3246 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                     (let v3
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))
                              v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
                     (let v3
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                           (coe v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))
                              v2)))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v2 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v1 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                          (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (\ v4 v5 -> v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v4 v5 -> v5)
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                          (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1))
                  (let v4
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v4))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))))
                           v1 v2))))))
         (let v3
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₃
d_lem'8323'_3322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3322 ~v0 ~v1 v2 v3 v4 = du_lem'8323'_3322 v2 v3 v4
du_lem'8323'_3322 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3322 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v3
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v3))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v2 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
               (coe
                  du_'8743''45'identity'737'_3234 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3060
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1))))
         (let v3
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1
               v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₂
d_lem'8322'_3324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3324 ~v0 ~v1 v2 v3 v4 = du_lem'8322'_3324 v2 v3 v4
du_lem'8322'_3324 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3324 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                            (coe v3))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
                     (coe
                        du_'8744''45'zero'691'_3256 (coe v0)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
                  (let v3
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3060
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))
                           v2))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v4))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe du_lem'8323'_3322 (coe v0) (coe v1) (coe v2))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0))))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra.deMorgan₂
d_deMorgan'8322'_3330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8322'_3330 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8322'_3330 v2 v3 v4
du_deMorgan'8322'_3330 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8322'_3330 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v3
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v3))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
               (coe
                  du_'172''45'involutive_3302 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  du_deMorgan'8321'_3310 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (coe du_'172''45'involutive_3302 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  v2)
               (coe du_'172''45'involutive_3302 (coe v0) (coe v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._⊕_
d__'8853'__3346 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__3346 ~v0 v1 ~v2 = du__'8853'__3346 v1
du__'8853'__3346 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8853'__3346 v0 = coe v0
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.helper
d_helper_3356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_helper_3356 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_helper_3356 v2 v5 v6 v7 v8 v9 v10
du_helper_3356 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_helper_3356 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240 (coe v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0))))
         v1 v2
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
            (\ v7 v8 -> v7) v3 v4)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v7 v8 -> v8)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0)) v3
            v4))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
            (coe v0))
         v3 v4 v6)
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-cong
d_'8853''45'cong_3362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_3362 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8853''45'cong_3362 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_'8853''45'cong_3362 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_3362 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v9 v10 v11 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
      (coe v1 v3 v5) (coe v1 v4 v6)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v9
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v9)))))))
         (coe v1 v3 v5)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v5)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5)))
         (coe v1 v4 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v9)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v6)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v6)))
            (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v9
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v9)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v9))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v6)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v6)))
               (coe v1 v4 v6) (coe v1 v4 v6)
               (let v9
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v9
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v9))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v9))
                     (coe v1 v4 v6)))
               (coe v2 v4 v6))
            (coe
               du_helper_3356 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v6)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v6)
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))))
         (coe v2 v3 v5))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-comm
d_'8853''45'comm_3376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_3376 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'comm_3376 v2 v3 v4 v5 v6
du_'8853''45'comm_3376 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_3376 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe v1 v3 v4) (coe v1 v4 v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
         (coe v1 v4 v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
            (coe v1 v4 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
               (coe v1 v4 v3) (coe v1 v4 v3)
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v5))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe v1 v4 v3)))
               (coe v2 v4 v3))
            (coe
               du_helper_3356 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  v3 v4)))
         (coe v2 v3 v4))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_3386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_3386 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'737''45''8853'_3386 v2 v3 v4 v5 v6
du_'172''45'distrib'737''45''8853'_3386 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_3386 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe v1 v3 v4))
      (coe
         v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
         v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
            v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
               v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                  v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v5)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                     v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v5
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                        v4)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v5
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v5)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                        (coe
                           v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                           v4)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v5
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                             (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    v4)))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                              v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                (coe v5)))))))
                              (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v5
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                             (coe v5))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       v4)))
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 v4)
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 v4)
                              (let v5
                                     = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (let v5
                                                   = coe
                                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                       (coe v0) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                  (coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                     (coe v5))))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                       (coe v5))
                                    (coe
                                       v1
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       v4)))
                              (coe
                                 v2 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 v4))
                           (coe
                              du_helper_3356 (coe v0)
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                                 (\ v5 v6 -> v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v5 v6 -> v6)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3) v4)
                              (let v5
                                     = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                       (coe v5))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    (coe v4) (coe du_'172''45'involutive_3302 (coe v0) (coe v4))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                                 (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                          (coe v0))))
                                 v4 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                        (let v5
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))
                              (coe
                                 du_deMorgan'8321'_3310 (coe v0) (coe v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)))))
                     (coe
                        du_deMorgan'8322'_3330 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe du_lem_3400 (coe v0) (coe v3) (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                        (coe du_lem_3400 (coe v0) (coe v4) (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))))
                     (\ v5 v6 -> v5)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v5 v6 -> v6)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))))
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4)
                           (\ v6 v7 -> v6)
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                              (\ v6 v7 -> v6)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v6 v7 -> v7)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v6 v7 -> v7)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4)
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                              (\ v6 v7 -> v6)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v6 v7 -> v7)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)))
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v6))
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                                 (\ v7 v8 -> v7)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v7 v8 -> v8)
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 (coe v0))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                                    (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                             (coe v0))))
                                    v3 v4))))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_2964
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))
                     v3 v4))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
               (coe v0))
            (coe v1 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)))
            (coe v2 v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem
d_lem_3400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem_3400 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_lem_3400 v2 v7 v8
du_lem_3400 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem_3400 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v3
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v3))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
                  (coe
                     du_'8744''45'identity'737'_3242 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))
                        v1))))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe v3))
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))))
         (let v3
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe du_deMorgan'8321'_3310 (coe v0) (coe v1) (coe v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_3410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_3410 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'691''45''8853'_3410 v2 v3 v4 v5 v6
du_'172''45'distrib'691''45''8853'_3410 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_3410 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe v1 v3 v4))
      (coe
         v1 v3
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe v1 v4 v3))
         (coe
            v1 v3
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe v1 v4 v3))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
               v3)
            (coe
               v1 v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                  v3)
               (coe
                  v1 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
               (coe
                  v1 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v5))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe
                        v1 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))))
               (coe
                  du_'8853''45'comm_3376 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                  (coe v3)))
            (coe
               du_'172''45'distrib'737''45''8853'_3386 (coe v0) (coe v1) (coe v2)
               (coe v4) (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
               (coe v0))
            (coe v1 v3 v4) (coe v1 v4 v3)
            (coe
               du_'8853''45'comm_3376 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v4))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_3420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_3420 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'annihilates'45''172'_3420 v2 v3 v4 v5 v6
du_'8853''45'annihilates'45''172'_3420 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_3420 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe v1 v3 v4)
      (coe
         v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5))))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe v1 v3 v4)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe v1 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                  v4))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                     v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v5))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))))
               (coe
                  du_'172''45'distrib'691''45''8853'_3410 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                  (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3002
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe v1 v3 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                  v4)
               (coe
                  du_'172''45'distrib'737''45''8853'_3386 (coe v0) (coe v1) (coe v2)
                  (coe v3) (coe v4))))
         (coe du_'172''45'involutive_3302 (coe v0) (coe v1 v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identityˡ
d_'8853''45'identity'737'_3426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'737'_3426 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'737'_3426 v2 v3 v4 v5
du_'8853''45'identity'737'_3426 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'737'_3426 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
      v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (coe
            v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
               v3
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v4)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
                  v3 v3
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v4))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe v3)))
                  (coe du_'8743''45'identity'691'_3230 (coe v0) (coe v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                        (coe v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                        (coe du_'8869''8777''8868'_3298 (coe v0))))))
            (coe
               du_helper_3356 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
               (coe du_'8744''45'identity'737'_3242 v0 v3)
               (coe du_'8743''45'zero'737'_3250 v0 v3)))
         (coe
            v2 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
            v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identityʳ
d_'8853''45'identity'691'_3430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'691'_3430 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'691'_3430 v2 v3 v4 v5
du_'8853''45'identity'691'_3430 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'691'_3430 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         du_'8853''45'comm_3376 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0)))))
         (coe
            v1 v3 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
         (coe
            v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)) v3)
         v3)
      (coe
         du_'8853''45'identity'737'_3426 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identity
d_'8853''45'identity_3432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_3432 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'identity_3432 v2 v3 v4
du_'8853''45'identity_3432 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_3432 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'identity'737'_3426 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity'691'_3430 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_3434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_3434 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'737'_3434 v2 v3 v4 v5
du_'8853''45'inverse'737'_3434 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_3434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v1 v3 v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (coe v1 v3 v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v3)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0))
                  v3))
            (coe
               du_helper_3356 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v3)
               (coe v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3070
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                        (coe v0)))
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3046
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                        (coe v0)))
                  (coe v3))))
         (coe v2 v3 v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_3438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_3438 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'691'_3438 v2 v3 v4 v5
du_'8853''45'inverse'691'_3438 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_3438 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         du_'8853''45'comm_3376 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0)))))
         (coe v1 v3 v3) (coe v1 v3 v3)
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
      (coe
         du_'8853''45'inverse'737'_3434 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverse
d_'8853''45'inverse_3440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_3440 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'inverse_3440 v2 v3 v4
du_'8853''45'inverse_3440 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_3440 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'inverse'737'_3434 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse'691'_3438 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_3442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_3442 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8743''45'distrib'737''45''8853'_3442 v2 v3 v4 v5 v6 v7
du_'8743''45'distrib'737''45''8853'_3442 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_3442 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
         (coe v1 v4 v5))
      (coe
         v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
            (coe v1 v4 v5))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
         (coe
            v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5)))
            (coe
               v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
               (coe
                  v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v6)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                  (coe
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v6
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v6)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                     (coe
                        v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v6)))))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v6
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v6))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                        (coe
                           v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                             (coe v6)))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                       v5))))
                           (coe
                              v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v6
                                              = coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                (coe v6)))))))
                              (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                             (coe v6))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                          v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                          v5))))
                              (coe
                                 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v5))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v6
                                                 = coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                   (coe v6)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v4 v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v5))))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       v5))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v6
                                                    = coe
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                      (coe v6)))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v5))))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v5))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                (let v6
                                                       = coe
                                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                           (coe v0) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                      (coe
                                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                         (coe v6)))))))
                                       (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v6
                                                    = coe
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                      (coe v6))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v5))))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v5))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v5))
                                       (let v6
                                              = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                     (let v6
                                                            = coe
                                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                           (coe
                                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                              (coe v6))))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                                (coe v6))
                                             (coe
                                                v1
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v5))))
                                       (coe
                                          v2
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v5)))
                                    (let v6
                                           = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                               (coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v5)))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706
                                                v0 v4 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v5))
                                          (let v7
                                                 = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
                                                (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                                   (coe v7))
                                                v3 v4 v5)))))
                                 (coe
                                    du_helper_3356 (coe v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v4 v5)))
                                    (coe du_lem'8321'_3456 (coe v0) (coe v3) (coe v4) (coe v5))))
                              (let v6
                                     = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                         (coe v0) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                            (coe v6) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                          (coe v7))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v4 v5)))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v4 v5)))
                                       (coe
                                          du_deMorgan'8321'_3310 (coe v0) (coe v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v4 v5))))))
                           (let v6
                                  = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                    (coe v6))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                                    (\ v7 v8 -> v7)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                    (\ v7 v8 -> v8)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                                 (let v7
                                        = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                            (coe v0) in
                                  coe
                                    (let v8
                                           = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                               (coe v7) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                             (coe v8))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v4 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v5))
                                          (coe
                                             du_deMorgan'8321'_3310 (coe v0) (coe v4)
                                             (coe v5))))))))
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_2962
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
                     (let v6
                            = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                (coe v0) in
                      coe
                        (let v7
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                   (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v7))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4
                                       v5))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                              (coe du_lem'8323'_3458 (coe v0) (coe v3) (coe v4) (coe v5))))))
                  (coe
                     du_'8744''45'identity'737'_3242 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
               (let v6
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v6))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                     (coe du_deMorgan'8321'_3310 (coe v0) (coe v4) (coe v5)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))))
               v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
         (let v6
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v6))
               (coe v3) (coe v1 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5)))
               (coe v2 v4 v5))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_3454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3454 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_3454 v2 v5 v6 v7
du_lem'8322'_3454 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3454 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  v2 v1 v3))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v4))
                  (coe v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0))))
            v1 v2 v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_3456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3456 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_3456 v2 v5 v6 v7
du_lem'8321'_3456 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3456 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v4)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v4))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v1 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                             (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v3))
                        (coe du_lem'8322'_3454 (coe v0) (coe v1) (coe v2) (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))))
               v1 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (let v5
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe v4) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v1)
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3046
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                           (coe v0)))
                     (coe v1))))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_3458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3458 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_3458 v2 v5 v6 v7
du_lem'8323'_3458 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3458 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                     v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v4)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                        v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                         (coe v4))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))))
                  (let v4
                         = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                             (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                              v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                       (coe v0))))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                              v1)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3064
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))
                        v1)))))
         (coe
            du_'8743''45'zero'691'_3246 (coe v0)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_3460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_3460 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'691''45''8853'_3460 v2 v3 v4
du_'8743''45'distrib'691''45''8853'_3460 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_3460 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_504
      (let v3
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (coe v1) (coe du_'8853''45'cong_3362 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe
         du_'8743''45'distrib'737''45''8853'_3442 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_3462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_3462 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'45''8853'_3462 v2 v3 v4
du_'8743''45'distrib'45''8853'_3462 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_3462 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8743''45'distrib'737''45''8853'_3442 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8743''45'distrib'691''45''8853'_3460 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.lemma₂
d_lemma'8322'_3472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8322'_3472 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_lemma'8322'_3472 v2 v5 v6 v7 v8
du_lemma'8322'_3472 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8322'_3472 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v4)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v4)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                  v4))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v4)))
            (let v5
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v5
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                   (coe v5))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v3)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v4)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v4)))))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe v5))
                     v3 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v4)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v4)))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe v5))
                     v4 v1 v2))))
         (let v5
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_2958
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe v5))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
               v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-assoc
d_'8853''45'assoc_3482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_3482 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8853''45'assoc_3482 v2 v3 v4 v5 v6 v7
du_'8853''45'assoc_3482 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_3482 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v6 v7 v8 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
         (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6)))))))
            (coe v1 v3 (coe v1 v4 v5))
            (coe
               v1 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
            (coe v1 (coe v1 v3 v4) v5)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v6)))))))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))))
               (coe v1 (coe v1 v3 v4) v5)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v6)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                    v5))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                  (coe v1 (coe v1 v3 v4) v5)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v6
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v6)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
                     (coe v1 (coe v1 v3 v4) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v6)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
                        (coe v1 (coe v1 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                             (coe v6)))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))))
                           (coe v1 (coe v1 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v6
                                              = coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                (coe v6)))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)))
                                       v5)))
                              (coe v1 (coe v1 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v6
                                                 = coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                   (coe v6)))))))
                                 (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v6
                                              = coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                (coe v6))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                   v0 v3 v4)))
                                          v5)))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)))
                                    v5)
                                 (coe v1 (coe v1 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v6
                                                    = coe
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                      (coe v6)))))))
                                    (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v6
                                                 = coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                   (coe v6))))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)))
                                       v5)
                                    (coe v1 (coe v1 v3 v4) v5) (coe v1 (coe v1 v3 v4) v5)
                                    (let v6
                                           = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                  (let v6
                                                         = coe
                                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                                             (coe v0) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                                        (coe
                                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                                           (coe v6))))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                             (coe v6))
                                          (coe v1 (coe v1 v3 v4) v5)))
                                    (coe
                                       du_'8853''45'cong_3362 (coe v0) (coe v1) (coe v2)
                                       (coe v1 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)))
                                       (coe v5) (coe v5) (coe v2 v3 v4)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                                      (coe v0)))))
                                          v5)))
                                 (coe
                                    v2
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                                 (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                             v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708
                                                v0 v3 v4)))
                                       v5))
                                 (coe du_lem'8321'_3494 (coe v0) (coe v3) (coe v4) (coe v5))
                                 (coe du_lem'8322'_3498 (coe v0) (coe v3) (coe v4) (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                   (coe v0) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                      (coe v6) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                                    (coe v7))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v3)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v4))
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v3)
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v4))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             v3
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v4))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                                v3)
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                             v5))))
                                 (coe du_lem'8325'_3506 (coe v0) (coe v3) (coe v4) (coe v5))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4
                                    v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v5)))
                     (coe du_lem'8323'_3500 (coe v0) (coe v3) (coe v4) (coe v5))
                     (coe du_lem'8324'_3504 (coe v0) (coe v3) (coe v4) (coe v5))))
               (coe
                  v2 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5)))))
            (coe
               du_'8853''45'cong_3362 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3)
               (coe v1 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0)))))
                  v3)
               (coe v2 v4 v5))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_3494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3494 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_3494 v2 v5 v6 v7
du_lem'8321'_3494 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3494 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
         v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
            v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
               v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                   (coe v4))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                     v3)))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v4))
                  (coe v3)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
                     (\ v5 v6 -> v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v5 v6 -> v6)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                             (coe v0) in
                   coe
                     (let v6
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v6))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           (coe du_deMorgan'8321'_3310 (coe v0) (coe v1) (coe v2))))))))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe v4))
               v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂′
d_lem'8322''8242'_3496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322''8242'_3496 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 ~v7
  = du_lem'8322''8242'_3496 v2 v5 v6
du_lem'8322''8242'_3496 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322''8242'_3496 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v3)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                            (coe v3))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
                                       v2))))))
                     (coe
                        du_deMorgan'8321'_3310 (coe v0)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)
                     (coe du_deMorgan'8322'_3330 (coe v0) (coe v1) (coe v2))
                     (coe
                        du_'172''45'involutive_3302 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
               (coe
                  du_lemma'8322'_3472 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                  (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                  (\ v3 v4 -> v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v3 v4 -> v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3058
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                        (coe v0))
                     v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3058
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))
                        v2)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
            (coe
               du_'8743''45'identity'737'_3234 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
            (coe
               du_'8743''45'identity'691'_3230 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_3498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3498 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_3498 v2 v5 v6 v7
du_lem'8322'_3498 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3498 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
            v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
               v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                  v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                     v3))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                           v3))))
               (coe
                  du_deMorgan'8321'_3310 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                  (coe v3)))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_2892
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
                     (coe du_lem'8322''8242'_3496 (coe v0) (coe v1) (coe v2))))))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_2960
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe v4))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_3500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3500 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_3500 v2 v5 v6 v7
du_lem'8323'_3500 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3500 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v1 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_2958
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                     (coe v4))
                  v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v4))
               (coe v1)
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                  (\ v5 v6 -> v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v5 v6 -> v6)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe du_deMorgan'8321'_3310 (coe v0) (coe v2) (coe v3)))))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₄′
d_lem'8324''8242'_3502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324''8242'_3502 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7
  = du_lem'8324''8242'_3502 v2 v6 v7
du_lem'8324''8242'_3502 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324''8242'_3502 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                            (coe v3))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                                 v2))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe
                           du_'8743''45'identity'737'_3234 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                        (coe
                           du_'8743''45'identity'691'_3230 (coe v0)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              v2))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3058
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))
                           v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_2850
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                    (coe v0))))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v3 v4 -> v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))))
                     (let v3
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_2880
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3058
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))
                              v2)))))
               (coe
                  du_lemma'8322'_3472 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                  (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (coe du_deMorgan'8322'_3330 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_2854
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
               (coe
                  du_'172''45'involutive_3302 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
         (coe
            du_deMorgan'8321'_3310 (coe v0)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₄
d_lem'8324'_3504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324'_3504 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8324'_3504 v2 v5 v6 v7
du_lem'8324'_3504 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324'_3504 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                    (coe v4)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v4
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                       (coe v4)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v4
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                            (coe v4))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                                    v2)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           v3)))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_2852
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_2958
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2)
                        v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                       (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_2888
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2) v3))
                     (coe du_lem'8324''8242'_3502 (coe v0) (coe v2) (coe v3))))))
         (coe
            du_deMorgan'8321'_3310 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v2 v3)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₅
d_lem'8325'_3506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8325'_3506 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8325'_3506 v2 v5 v6 v7
du_lem'8325'_3506 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8325'_3506 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_788
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_572
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_662
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_2884
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v4))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
                        v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0 v3))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-isMagma
d_'8853''45'isMagma_3508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8853''45'isMagma_3508 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isMagma_3508 v2 v3 v4
du_'8853''45'isMagma_3508 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8853''45'isMagma_3508 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe du_'8853''45'cong_3362 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_3510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8853''45'isSemigroup_3510 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isSemigroup_3510 v2 v3 v4
du_'8853''45'isSemigroup_3510 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8853''45'isSemigroup_3510 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe du_'8853''45'isMagma_3508 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'assoc_3482 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_3512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8853''45''8869''45'isMonoid_3512 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isMonoid_3512 v2 v3 v4
du_'8853''45''8869''45'isMonoid_3512 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8853''45''8869''45'isMonoid_3512 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe du_'8853''45'isSemigroup_3510 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity_3432 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_3514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_'8853''45''8869''45'isGroup_3514 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isGroup_3514 v2 v3 v4
du_'8853''45''8869''45'isGroup_3514 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_'8853''45''8869''45'isGroup_3514 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_22921
      (coe
         du_'8853''45''8869''45'isMonoid_3512 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse_3440 (coe v0) (coe v1) (coe v2))
      (coe (\ v3 v4 v5 -> v5))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_3516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'8853''45''8869''45'isAbelianGroup_3516 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isAbelianGroup_3516 v2 v3 v4
du_'8853''45''8869''45'isAbelianGroup_3516 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
du_'8853''45''8869''45'isAbelianGroup_3516 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_27921
      (coe
         du_'8853''45''8869''45'isGroup_3514 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'comm_3376 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_3518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_'8853''45''8743''45'isRing_3518 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isRing_3518 v2 v3 v4
du_'8853''45''8743''45'isRing_3518 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
du_'8853''45''8743''45'isRing_3518 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_87335
      (coe
         du_'8853''45''8869''45'isAbelianGroup_3516 (coe v0) (coe v1)
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_2860
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_2858
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
      (coe du_'8743''45'identity_3236 (coe v0))
      (coe
         du_'8743''45'distrib'45''8853'_3462 (coe v0) (coe v1) (coe v2))
      (coe du_'8743''45'zero_3252 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_3520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_'8853''45''8743''45'isCommutativeRing_3520 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isCommutativeRing_3520 v2 v3 v4
du_'8853''45''8743''45'isCommutativeRing_3520 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
du_'8853''45''8743''45'isCommutativeRing_3520 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_94301
      (coe du_'8853''45''8743''45'isRing_3518 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_2856
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_3522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
d_'8853''45''8743''45'commutativeRing_3522 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'commutativeRing_3522 v2 v3 v4
du_'8853''45''8743''45'commutativeRing_3522 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
du_'8853''45''8743''45'commutativeRing_3522 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_65699
      v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 (coe v0))
      (\ v3 -> v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_714 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_712 (coe v0))
      (coe
         du_'8853''45''8743''45'isCommutativeRing_3520 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._⊕_
d__'8853'__3524 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__3524 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_3536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_3536 ~v0 ~v1 v2
  = du_'172''45'distrib'691''45''8853'_3536 v2
du_'172''45'distrib'691''45''8853'_3536 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_3536 v0
  = coe
      du_'172''45'distrib'691''45''8853'_3410 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_3538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_3538 ~v0 ~v1 v2
  = du_'172''45'distrib'737''45''8853'_3538 v2
du_'172''45'distrib'737''45''8853'_3538 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_3538 v0
  = coe
      du_'172''45'distrib'737''45''8853'_3386 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_3540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_3540 ~v0 ~v1 v2
  = du_'8743''45'distrib'45''8853'_3540 v2
du_'8743''45'distrib'45''8853'_3540 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_3540 v0
  = coe
      du_'8743''45'distrib'45''8853'_3462 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_3542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_3542 ~v0 ~v1 v2
  = du_'8743''45'distrib'691''45''8853'_3542 v2
du_'8743''45'distrib'691''45''8853'_3542 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_3542 v0
  = coe
      du_'8743''45'distrib'691''45''8853'_3460 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_3544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_3544 ~v0 ~v1 v2
  = du_'8743''45'distrib'737''45''8853'_3544 v2
du_'8743''45'distrib'737''45''8853'_3544 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_3544 v0
  = coe
      du_'8743''45'distrib'737''45''8853'_3442 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_3546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_3546 ~v0 ~v1 v2
  = du_'8853''45'annihilates'45''172'_3546 v2
du_'8853''45'annihilates'45''172'_3546 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_3546 v0
  = coe
      du_'8853''45'annihilates'45''172'_3420 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc
d_'8853''45'assoc_3548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_3548 ~v0 ~v1 v2 = du_'8853''45'assoc_3548 v2
du_'8853''45'assoc_3548 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_3548 v0
  = coe
      du_'8853''45'assoc_3482 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm
d_'8853''45'comm_3550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_3550 ~v0 ~v1 v2 = du_'8853''45'comm_3550 v2
du_'8853''45'comm_3550 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_3550 v0
  = coe
      du_'8853''45'comm_3376 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong
d_'8853''45'cong_3552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_3552 ~v0 ~v1 v2 = du_'8853''45'cong_3552 v2
du_'8853''45'cong_3552 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_3552 v0
  = coe
      du_'8853''45'cong_3362 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity
d_'8853''45'identity_3554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_3554 ~v0 ~v1 v2
  = du_'8853''45'identity_3554 v2
du_'8853''45'identity_3554 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_3554 v0
  = coe
      du_'8853''45'identity_3432 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ
d_'8853''45'identity'691'_3556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'691'_3556 ~v0 ~v1 v2
  = du_'8853''45'identity'691'_3556 v2
du_'8853''45'identity'691'_3556 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'691'_3556 v0
  = coe
      du_'8853''45'identity'691'_3430 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ
d_'8853''45'identity'737'_3558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'737'_3558 ~v0 ~v1 v2
  = du_'8853''45'identity'737'_3558 v2
du_'8853''45'identity'737'_3558 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'737'_3558 v0
  = coe
      du_'8853''45'identity'737'_3426 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse
d_'8853''45'inverse_3560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_3560 ~v0 ~v1 v2 = du_'8853''45'inverse_3560 v2
du_'8853''45'inverse_3560 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_3560 v0
  = coe
      du_'8853''45'inverse_3440 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_3562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_3562 ~v0 ~v1 v2
  = du_'8853''45'inverse'691'_3562 v2
du_'8853''45'inverse'691'_3562 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_3562 v0
  = coe
      du_'8853''45'inverse'691'_3438 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_3564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_3564 ~v0 ~v1 v2
  = du_'8853''45'inverse'737'_3564 v2
du_'8853''45'inverse'737'_3564 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_3564 v0
  = coe
      du_'8853''45'inverse'737'_3434 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma
d_'8853''45'isMagma_3566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8853''45'isMagma_3566 ~v0 ~v1 v2 = du_'8853''45'isMagma_3566 v2
du_'8853''45'isMagma_3566 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_'8853''45'isMagma_3566 v0
  = coe
      du_'8853''45'isMagma_3508 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_3568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8853''45'isSemigroup_3568 ~v0 ~v1 v2
  = du_'8853''45'isSemigroup_3568 v2
du_'8853''45'isSemigroup_3568 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_'8853''45'isSemigroup_3568 v0
  = coe
      du_'8853''45'isSemigroup_3510 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_3570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
d_'8853''45''8743''45'commutativeRing_3570 ~v0 ~v1 v2
  = du_'8853''45''8743''45'commutativeRing_3570 v2
du_'8853''45''8743''45'commutativeRing_3570 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
du_'8853''45''8743''45'commutativeRing_3570 v0
  = coe
      du_'8853''45''8743''45'commutativeRing_3522 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_3572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_'8853''45''8743''45'isCommutativeRing_3572 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isCommutativeRing_3572 v2
du_'8853''45''8743''45'isCommutativeRing_3572 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
du_'8853''45''8743''45'isCommutativeRing_3572 v0
  = coe
      du_'8853''45''8743''45'isCommutativeRing_3520 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_3574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_'8853''45''8743''45'isRing_3574 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isRing_3574 v2
du_'8853''45''8743''45'isRing_3574 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
du_'8853''45''8743''45'isRing_3574 v0
  = coe
      du_'8853''45''8743''45'isRing_3518 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_3576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'8853''45''8869''45'isAbelianGroup_3576 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isAbelianGroup_3576 v2
du_'8853''45''8869''45'isAbelianGroup_3576 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
du_'8853''45''8869''45'isAbelianGroup_3576 v0
  = coe
      du_'8853''45''8869''45'isAbelianGroup_3516 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_3578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_'8853''45''8869''45'isGroup_3578 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isGroup_3578 v2
du_'8853''45''8869''45'isGroup_3578 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_'8853''45''8869''45'isGroup_3578 v0
  = coe
      du_'8853''45''8869''45'isGroup_3514 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_3580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8853''45''8869''45'isMonoid_3580 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isMonoid_3580 v2
du_'8853''45''8869''45'isMonoid_3580 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_'8853''45''8869''45'isMonoid_3580 v0
  = coe
      du_'8853''45''8869''45'isMonoid_3512 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_716
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__706 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__710 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__708 v0 v1 v2)))))
