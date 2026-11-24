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
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanRing
d_IsBooleanRing_128 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeMonoid
d_IsCommutativeMonoid_148 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing
d_IsCommutativeRing_152 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring
d_IsCommutativeSemiring_160 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup
d_IsGroup_172 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma
d_IsMagma_212 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid
d_IsMonoid_224 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing
d_IsRing_256 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup
d_IsSemigroup_268 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring
d_IsSemiring_276 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsAbelianGroup.comm
d_comm_302 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_302 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_1188 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsAbelianGroup.isGroup
d_isGroup_324 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_isGroup_324 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1186 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanRing.*-idem
d_'42''45'idem_436 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny
d_'42''45'idem_436 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'idem_3188 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanRing.isCommutativeRing
d_isCommutativeRing_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_isCommutativeRing_508 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeRing_3186 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeMonoid.comm
d_comm_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_818 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_778 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeMonoid.isMonoid
d_isMonoid_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_834 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_776 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing.*-comm
d_'42''45'comm_864 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_864 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_3034 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing.isRing
d_isRing_952 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_isRing_952 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_3032 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring.*-comm
d_'42''45'comm_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1018 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1768 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring.isSemiring
d_isSemiring_1088 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_isSemiring_1088 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1766 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup.inverse
d_inverse_1226 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1226 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1092 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup.isMonoid
d_isMonoid_1240 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_isMonoid_1240 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1090 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_1262 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1094 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma.isEquivalence
d_isEquivalence_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1790 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_188 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma.∙-cong
d_'8729''45'cong_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1804 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_190 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid.identity
d_identity_1900 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1900 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_726 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid.isSemigroup
d_isSemigroup_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_isSemigroup_1912 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_724 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.*-assoc
d_'42''45'assoc_2418 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2418 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2894 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.*-cong
d_'42''45'cong_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2420 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2892 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.*-identity
d_'42''45'identity_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2896 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2890
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.distrib
d_distrib_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2898 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup.assoc
d_assoc_2646 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2646 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_500 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup.isMagma
d_isMagma_2650 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_isMagma_2650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_498 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2764 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1656
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring.zero
d_zero_2778 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2778 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1658 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOver_
d__DistributesOver__2974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__2974 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOverʳ_
d__DistributesOver'691'__2976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__2976 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOverˡ_
d__DistributesOver'737'__2978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__2978 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Associative
d_Associative_2994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_2994 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Commutative
d_Commutative_3000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_3000 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Congruent₂
d_Congruent'8322'_3004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_3004 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Identity
d_Identity_3016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_3016 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Inverse
d_Inverse_3020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_3020 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Involutive
d_Involutive_3024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_3024 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftIdentity
d_LeftIdentity_3042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_3042 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftInverse
d_LeftInverse_3044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_3044 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftZero
d_LeftZero_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_3050 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightIdentity
d_RightIdentity_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_3072 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightInverse
d_RightInverse_3074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_3074 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightZero
d_RightZero_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_3080 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Zero
d_Zero_3100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_3100 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra
d_IsBooleanAlgebra_3246 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_3274 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_isDistributiveLattice_3274 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.¬-cong
d_'172''45'cong_3290 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_3290 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_3298 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_3298 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3484
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_3322 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_3322 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3482
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.poset
d_poset_3716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
d_poset_3716 ~v0 ~v1 v2 = du_poset_3716 v2
du_poset_3716 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_492
du_poset_3716 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-idem
d_'8743''45'idem_3718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_3718 ~v0 ~v1 v2 = du_'8743''45'idem_3718 v2
du_'8743''45'idem_3718 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_3718 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_294
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isBand
d_'8743''45'isBand_3720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8743''45'isBand_3720 ~v0 ~v1 v2 = du_'8743''45'isBand_3720 v2
du_'8743''45'isBand_3720 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8743''45'isBand_3720 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isBand_302
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isMagma
d_'8743''45'isMagma_3722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8743''45'isMagma_3722 ~v0 ~v1 v2 = du_'8743''45'isMagma_3722 v2
du_'8743''45'isMagma_3722 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8743''45'isMagma_3722 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isMagma_298
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3724 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3724 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3724 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3724 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
d_'8743''45'isOrderTheoreticMeetSemilattice_3726 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3726 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3726 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
du_'8743''45'isOrderTheoreticMeetSemilattice_3726 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isSemigroup
d_'8743''45'isSemigroup_3728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8743''45'isSemigroup_3728 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_3728 v2
du_'8743''45'isSemigroup_3728 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8743''45'isSemigroup_3728 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_300
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isSemilattice
d_'8743''45'isSemilattice_3730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8743''45'isSemilattice_3730 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_3730 v2
du_'8743''45'isSemilattice_3730 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_'8743''45'isSemilattice_3730 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemilattice_304
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3732 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3732 v2
du_'8743''45'orderTheoreticJoinSemilattice_3732 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3732 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
d_'8743''45'orderTheoreticMeetSemilattice_3734 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3734 v2
du_'8743''45'orderTheoreticMeetSemilattice_3734 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
du_'8743''45'orderTheoreticMeetSemilattice_3734 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-semilattice
d_'8743''45'semilattice_3736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3736 ~v0 ~v1 v2
  = du_'8743''45'semilattice_3736 v2
du_'8743''45'semilattice_3736 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8743''45'semilattice_3736 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_306
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_3738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
d_'8743''45''8744''45'distributiveLattice_3738 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_3738 v2
du_'8743''45''8744''45'distributiveLattice_3738 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_598
du_'8743''45''8744''45'distributiveLattice_3738 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'distributiveLattice_746
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
         (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_3740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
d_'8743''45''8744''45'isDistributiveLattice_3740 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_3740 v2
du_'8743''45''8744''45'isDistributiveLattice_3740 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3382
du_'8743''45''8744''45'isDistributiveLattice_3740 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_744
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
         (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_3742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
d_'8743''45''8744''45'isLattice_3742 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_3742 v2
du_'8743''45''8744''45'isLattice_3742 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_3306
du_'8743''45''8744''45'isLattice_3742 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_342
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-lattice
d_'8743''45''8744''45'lattice_3744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
d_'8743''45''8744''45'lattice_3744 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_3744 v2
du_'8743''45''8744''45'lattice_3744 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_512
du_'8743''45''8744''45'lattice_3744 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'lattice_344
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-idem
d_'8744''45'idem_3746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_3746 ~v0 ~v1 v2 = du_'8744''45'idem_3746 v2
du_'8744''45'idem_3746 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_3746 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_318
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isBand
d_'8744''45'isBand_3748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
d_'8744''45'isBand_3748 ~v0 ~v1 v2 = du_'8744''45'isBand_3748 v2
du_'8744''45'isBand_3748 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_528
du_'8744''45'isBand_3748 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isBand_326
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isMagma
d_'8744''45'isMagma_3750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8744''45'isMagma_3750 ~v0 ~v1 v2 = du_'8744''45'isMagma_3750 v2
du_'8744''45'isMagma_3750 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8744''45'isMagma_3750 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isMagma_322
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3752 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3752 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3752 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3752 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
d_'8743''45'isOrderTheoreticMeetSemilattice_3754 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3754 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3754 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_184
du_'8743''45'isOrderTheoreticMeetSemilattice_3754 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isSemigroup
d_'8744''45'isSemigroup_3756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8744''45'isSemigroup_3756 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_3756 v2
du_'8744''45'isSemigroup_3756 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8744''45'isSemigroup_3756 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_324
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isSemilattice
d_'8744''45'isSemilattice_3758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
d_'8744''45'isSemilattice_3758 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_3758 v2
du_'8744''45'isSemilattice_3758 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_614
du_'8744''45'isSemilattice_3758 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemilattice_328
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3760 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3760 v2
du_'8743''45'orderTheoreticJoinSemilattice_3760 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3760 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
d_'8743''45'orderTheoreticMeetSemilattice_3762 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3762 v2
du_'8743''45'orderTheoreticMeetSemilattice_3762 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_204
du_'8743''45'orderTheoreticMeetSemilattice_3762 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-semilattice
d_'8744''45'semilattice_3764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3764 ~v0 ~v1 v2
  = du_'8744''45'semilattice_3764 v2
du_'8744''45'semilattice_3764 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8744''45'semilattice_3764 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_330
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_3766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_'8744''45''8743''45'isOrderTheoreticLattice_3766 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_3766 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_3766 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
du_'8744''45''8743''45'isOrderTheoreticLattice_3766 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_356
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_3768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_394
d_'8744''45''8743''45'orderTheoreticLattice_3768 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_3768 v2
du_'8744''45''8743''45'orderTheoreticLattice_3768 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_394
du_'8744''45''8743''45'orderTheoreticLattice_3768 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_412
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra
d_'8743''45''8744''45'isBooleanAlgebra_3770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460
d_'8743''45''8744''45'isBooleanAlgebra_3770 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isBooleanAlgebra_3770 v2
du_'8743''45''8744''45'isBooleanAlgebra_3770 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3460
du_'8743''45''8744''45'isBooleanAlgebra_3770 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_constructor_3550
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_744
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3484
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3482
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
            (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-booleanAlgebra
d_'8743''45''8744''45'booleanAlgebra_3772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698
d_'8743''45''8744''45'booleanAlgebra_3772 ~v0 ~v1 v2
  = du_'8743''45''8744''45'booleanAlgebra_3772 v2
du_'8743''45''8744''45'booleanAlgebra_3772 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698
du_'8743''45''8744''45'booleanAlgebra_3772 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_constructor_822
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe du_'8743''45''8744''45'isBooleanAlgebra_3770 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identityʳ
d_'8743''45'identity'691'_3774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'691'_3774 ~v0 ~v1 v2 v3
  = du_'8743''45'identity'691'_3774 v2 v3
du_'8743''45'identity'691'_3774 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'691'_3774 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3358
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3544
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))
                  v1))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identityˡ
d_'8743''45'identity'737'_3778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'737'_3778 ~v0 ~v1 v2
  = du_'8743''45'identity'737'_3778 v2
du_'8743''45'identity'737'_3778 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'737'_3778 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'691''8658'id'737'_376
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_586
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe du_'8743''45'identity'691'_3774 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identity
d_'8743''45'identity_3780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_3780 ~v0 ~v1 v2
  = du_'8743''45'identity_3780 v2
du_'8743''45'identity_3780 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'identity_3780 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'identity'737'_3778 (coe v0))
      (coe du_'8743''45'identity'691'_3774 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identityʳ
d_'8744''45'identity'691'_3782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'691'_3782 ~v0 ~v1 v2 v3
  = du_'8744''45'identity'691'_3782 v2 v3
du_'8744''45'identity'691'_3782 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'691'_3782 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3356
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))
                  v1))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identityˡ
d_'8744''45'identity'737'_3786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'737'_3786 ~v0 ~v1 v2
  = du_'8744''45'identity'737'_3786 v2
du_'8744''45'identity'737'_3786 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'737'_3786 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'691''8658'id'737'_376
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_586
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe du_'8744''45'identity'691'_3782 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identity
d_'8744''45'identity_3788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_3788 ~v0 ~v1 v2
  = du_'8744''45'identity_3788 v2
du_'8744''45'identity_3788 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'identity_3788 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'identity'737'_3786 (coe v0))
      (coe du_'8744''45'identity'691'_3782 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zeroʳ
d_'8743''45'zero'691'_3790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'691'_3790 ~v0 ~v1 v2 v3
  = du_'8743''45'zero'691'_3790 v2 v3
du_'8743''45'zero'691'_3790 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'691'_3790 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))
                     v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v1)
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_294
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
                           (coe v0)))
                     (coe v1))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               v1 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0))
               v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zeroˡ
d_'8743''45'zero'737'_3794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'737'_3794 ~v0 ~v1 v2
  = du_'8743''45'zero'737'_3794 v2
du_'8743''45'zero'737'_3794 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'737'_3794 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'691''8658'ze'737'_396
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_586
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe du_'8743''45'zero'691'_3790 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zero
d_'8743''45'zero_3796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_3796 ~v0 ~v1 v2 = du_'8743''45'zero_3796 v2
du_'8743''45'zero_3796 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'zero_3796 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'zero'737'_3794 (coe v0))
      (coe du_'8743''45'zero'691'_3790 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zeroʳ
d_'8744''45'zero'691'_3800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'691'_3800 ~v0 ~v1 v2 v3
  = du_'8744''45'zero'691'_3800 v2 v3
du_'8744''45'zero'691'_3800 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'691'_3800 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3544
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))
                     v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v1)
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_318
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
                           (coe v0)))
                     (coe v1))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               v1 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3544
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0))
               v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zeroˡ
d_'8744''45'zero'737'_3804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'737'_3804 ~v0 ~v1 v2
  = du_'8744''45'zero'737'_3804 v2
du_'8744''45'zero'737'_3804 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'737'_3804 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'691''8658'ze'737'_396
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_586
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe du_'8744''45'zero'691'_3800 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zero
d_'8744''45'zero_3806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_3806 ~v0 ~v1 v2 = du_'8744''45'zero_3806 v2
du_'8744''45'zero_3806 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'zero_3806 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'zero'737'_3804 (coe v0))
      (coe du_'8744''45'zero'691'_3800 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-⊥-isMonoid
d_'8744''45''8869''45'isMonoid_3808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8744''45''8869''45'isMonoid_3808 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isMonoid_3808 v2
du_'8744''45''8869''45'isMonoid_3808 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8744''45''8869''45'isMonoid_3808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_324
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe du_'8744''45'identity_3788 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-⊤-isMonoid
d_'8743''45''8868''45'isMonoid_3810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8743''45''8868''45'isMonoid_3810 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isMonoid_3810 v2
du_'8743''45''8868''45'isMonoid_3810 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8743''45''8868''45'isMonoid_3810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_300
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe du_'8743''45'identity_3780 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid
d_'8744''45''8869''45'isCommutativeMonoid_3812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8744''45''8869''45'isCommutativeMonoid_3812 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isCommutativeMonoid_3812 v2
du_'8744''45''8869''45'isCommutativeMonoid_3812 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'8744''45''8869''45'isCommutativeMonoid_3812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe du_'8744''45''8869''45'isMonoid_3808 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid
d_'8743''45''8868''45'isCommutativeMonoid_3814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
d_'8743''45''8868''45'isCommutativeMonoid_3814 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isCommutativeMonoid_3814 v2
du_'8743''45''8868''45'isCommutativeMonoid_3814 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_766
du_'8743''45''8868''45'isCommutativeMonoid_3814 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_822
      (coe du_'8743''45''8868''45'isMonoid_3810 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_3816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'8744''45''8743''45'isSemiring_3816 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isSemiring_3816 v2
du_'8744''45''8743''45'isSemiring_3816 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_'8744''45''8743''45'isSemiring_3816 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1742
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe du_'8744''45''8869''45'isCommutativeMonoid_3812 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))))
         (coe du_'8743''45'identity_3780 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3398
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe du_'8743''45'zero_3796 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_3818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
d_'8743''45''8744''45'isSemiring_3818 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isSemiring_3818 v2
du_'8743''45''8744''45'isSemiring_3818 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1642
du_'8743''45''8744''45'isSemiring_3818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1742
      (coe
         MAlonzo.Code.Algebra.Structures.C_constructor_1632
         (coe du_'8743''45''8868''45'isCommutativeMonoid_3814 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))))
         (coe du_'8744''45'identity_3788 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3396
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe du_'8744''45'zero_3806 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_3820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'8744''45''8743''45'isCommutativeSemiring_3820 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isCommutativeSemiring_3820 v2
du_'8744''45''8743''45'isCommutativeSemiring_3820 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_'8744''45''8743''45'isCommutativeSemiring_3820 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe du_'8744''45''8743''45'isSemiring_3816 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_3822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
d_'8743''45''8744''45'isCommutativeSemiring_3822 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isCommutativeSemiring_3822 v2
du_'8743''45''8744''45'isCommutativeSemiring_3822 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1752
du_'8743''45''8744''45'isCommutativeSemiring_3822 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1864
      (coe du_'8743''45''8744''45'isSemiring_3818 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_3824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'8744''45''8743''45'commutativeSemiring_3824 ~v0 ~v1 v2
  = du_'8744''45''8743''45'commutativeSemiring_3824 v2
du_'8744''45''8743''45'commutativeSemiring_3824 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_'8744''45''8743''45'commutativeSemiring_3824 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe du_'8744''45''8743''45'isCommutativeSemiring_3820 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_3826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
d_'8743''45''8744''45'commutativeSemiring_3826 ~v0 ~v1 v2
  = du_'8743''45''8744''45'commutativeSemiring_3826 v2
du_'8743''45''8744''45'commutativeSemiring_3826 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2524
du_'8743''45''8744''45'commutativeSemiring_3826 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_2706
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe du_'8743''45''8744''45'isCommutativeSemiring_3822 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.lemma
d_lemma_3832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma_3832 ~v0 ~v1 v2 v3 v4 v5 v6 = du_lemma_3832 v2 v3 v4 v5 v6
du_lemma_3832 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma_3832 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
         v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                  v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                     v2
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                           v2)
                        v2
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0)))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)) v2)
                           v2
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0)))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)) v2)
                              v2 v2
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                   (coe v0)))))))
                                 (coe v2))
                              (coe du_'8743''45'identity'737'_3778 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0))))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3544
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))
                                 v1)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_3446
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))
                           v2 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'737'_3546
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))
                        v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3444
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0)))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1
                  v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe v4)))
         (coe
            du_'8743''45'identity'691'_3774 (coe v0)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.¬⊥≈⊤
d_'172''8869''8776''8868'_3842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
d_'172''8869''8776''8868'_3842 ~v0 ~v1 v2
  = du_'172''8869''8776''8868'_3842 v2
du_'172''8869''8776''8868'_3842 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
du_'172''8869''8776''8868'_3842 v0
  = coe
      du_lemma_3832 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe
         du_'8743''45'identity'691'_3774 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
      (coe
         du_'8744''45'zero'691'_3800 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.¬⊤≈⊥
d_'172''8868''8776''8869'_3844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
d_'172''8868''8776''8869'_3844 ~v0 ~v1 v2
  = du_'172''8868''8776''8869'_3844 v2
du_'172''8868''8776''8869'_3844 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
du_'172''8868''8776''8869'_3844 v0
  = coe
      du_lemma_3832 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe
         du_'8743''45'zero'691'_3790 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
      (coe
         du_'8744''45'identity'691'_3782 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.¬-involutive
d_'172''45'involutive_3846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'172''45'involutive_3846 ~v0 ~v1 v2 v3
  = du_'172''45'involutive_3846 v2 v3
du_'172''45'involutive_3846 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'172''45'involutive_3846 v0 v1
  = coe
      du_lemma_3832 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'737'_3546
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
            (coe v0))
         v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3542
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
            (coe v0))
         v1)
-- Algebra.Lattice.Properties.BooleanAlgebra.deMorgan₁
d_deMorgan'8321'_3854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8321'_3854 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8321'_3854 v2 v3 v4
du_deMorgan'8321'_3854 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8321'_3854 v0 v1 v2
  = coe
      du_lemma_3832 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
      (coe du_lem'8321'_3864 (coe v0) (coe v1) (coe v2))
      (coe du_lem'8322'_3868 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₁
d_lem'8321'_3864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3864 ~v0 ~v1 v2 v3 v4 = du_lem'8321'_3864 v2 v3 v4
du_lem'8321'_3864 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3864 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0)))))))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (coe
                           du_'8744''45'identity'691'_3782 (coe v0)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                        (coe du_'8743''45'zero'691'_3790 (coe v0) (coe v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (coe du_'8743''45'zero'691'_3790 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))
                           v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))
                           v2))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v2 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v1 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (\ v3 v4 -> v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                  (\ v3 v4 -> v4)
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3444
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₃
d_lem'8323'_3866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3866 ~v0 ~v1 v2 v3 v4 = du_lem'8323'_3866 v2 v3 v4
du_lem'8323'_3866 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3866 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v2 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
               (coe
                  du_'8743''45'identity'737'_3778 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3544
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))
                  v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3442
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1
            v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₂
d_lem'8322'_3868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3868 ~v0 ~v1 v2 v3 v4 = du_lem'8322'_3868 v2 v3 v4
du_lem'8322'_3868 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3868 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                     (coe
                        du_'8744''45'zero'691'_3800 (coe v0)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3544
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))
                        v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe du_lem'8323'_3866 (coe v0) (coe v1) (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra.deMorgan₂
d_deMorgan'8322'_3874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8322'_3874 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8322'_3874 v2 v3 v4
du_deMorgan'8322'_3874 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8322'_3874 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  du_'172''45'involutive_3846 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  du_deMorgan'8321'_3854 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
               (coe du_'172''45'involutive_3846 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  v2)
               (coe du_'172''45'involutive_3846 (coe v0) (coe v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._⊕_
d__'8853'__3890 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__3890 ~v0 v1 ~v2 = du__'8853'__3890 v1
du__'8853'__3890 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8853'__3890 v0 = coe v0
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.helper
d_helper_3900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_helper_3900 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_helper_3900 v2 v5 v6 v7 v8 v9 v10
du_helper_3900 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_helper_3900 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__254 (coe v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0))))
         v1 v2
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
            (\ v7 v8 -> v7) v3 v4)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
            (\ v7 v8 -> v8)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0)) v3
            v4))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
            (coe v0))
         v3 v4 v6)
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-cong
d_'8853''45'cong_3906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_3906 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8853''45'cong_3906 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_'8853''45'cong_3906 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_3906 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v9 v10 v11 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v11)
      (coe v1 v3 v5) (coe v1 v4 v6)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe v1 v3 v5)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v5)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5)))
         (coe v1 v4 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v6)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v6)))
            (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v6)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v6)))
               (coe v1 v4 v6) (coe v1 v4 v6)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe v1 v4 v6))
               (coe v2 v4 v6))
            (coe
               du_helper_3900 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v6)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v6)
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__254 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__254 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))))
         (coe v2 v3 v5))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-comm
d_'8853''45'comm_3920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_3920 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'comm_3920 v2 v3 v4 v5 v6
du_'8853''45'comm_3920 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_3920 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe v1 v3 v4) (coe v1 v4 v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
         (coe v1 v4 v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
            (coe v1 v4 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
               (coe v1 v4 v3) (coe v1 v4 v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe v1 v4 v3))
               (coe v2 v4 v3))
            (coe
               du_helper_3900 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  v3 v4)))
         (coe v2 v3 v4))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_3930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_3930 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'737''45''8853'_3930 v2 v3 v4 v5 v6
du_'172''45'distrib'737''45''8853'_3930 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_3930 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe v1 v3 v4))
      (coe
         v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
         v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
            v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
               v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                  v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                     v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                        v4)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                        (coe
                           v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                           v4)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0)))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    v4)))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                              v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0)))))))
                              (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)))
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 v4)
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 v4)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                   (coe v0)))))))
                                 (coe
                                    v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    v4))
                              (coe
                                 v2 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 v4))
                           (coe
                              du_helper_3900 (coe v0)
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                                 (\ v5 v6 -> v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                 (\ v5 v6 -> v6)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 (coe v4) (coe du_'172''45'involutive_3846 (coe v0) (coe v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                                 (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))
                                 v4 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
                           (coe
                              du_deMorgan'8321'_3854 (coe v0) (coe v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))))
                     (coe
                        du_deMorgan'8322'_3874 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                        (coe du_lem_3944 (coe v0) (coe v3) (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                        (coe du_lem_3944 (coe v0) (coe v4) (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))))
                     (\ v5 v6 -> v5)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                     (\ v5 v6 -> v6)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0))))
                              v3 v4))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_3446
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))
                  v3 v4)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
               (coe v0))
            (coe v1 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)))
            (coe v2 v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem
d_lem_3944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem_3944 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_lem_3944 v2 v7 v8
du_lem_3944 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem_3944 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                  (coe
                     du_'8744''45'identity'737'_3786 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3444
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe du_deMorgan'8321'_3854 (coe v0) (coe v1) (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_3954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_3954 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'691''45''8853'_3954 v2 v3 v4 v5 v6
du_'172''45'distrib'691''45''8853'_3954 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_3954 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe v1 v3 v4))
      (coe
         v1 v3
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe v1 v4 v3))
         (coe
            v1 v3
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe v1 v4 v3))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
               v3)
            (coe
               v1 v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                  v3)
               (coe
                  v1 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
               (coe
                  v1 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     v1 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
               (coe
                  du_'8853''45'comm_3920 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                  (coe v3)))
            (coe
               du_'172''45'distrib'737''45''8853'_3930 (coe v0) (coe v1) (coe v2)
               (coe v4) (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
               (coe v0))
            (coe v1 v3 v4) (coe v1 v4 v3)
            (coe
               du_'8853''45'comm_3920 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v4))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_3964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_3964 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'annihilates'45''172'_3964 v2 v3 v4 v5 v6
du_'8853''45'annihilates'45''172'_3964 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_3964 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe v1 v3 v4)
      (coe
         v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe v1 v3 v4)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe v1 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                  v4))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                     v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)))
               (coe
                  du_'172''45'distrib'691''45''8853'_3954 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                  (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3486
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe v1 v3 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                  v4)
               (coe
                  du_'172''45'distrib'737''45''8853'_3930 (coe v0) (coe v1) (coe v2)
                  (coe v3) (coe v4))))
         (coe du_'172''45'involutive_3846 (coe v0) (coe v1 v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identityˡ
d_'8853''45'identity'737'_3970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'737'_3970 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'737'_3970 v2 v3 v4 v5
du_'8853''45'identity'737'_3970 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'737'_3970 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
      v3
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
               v3
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                  v3 v3
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe v3))
                  (coe du_'8743''45'identity'691'_3774 (coe v0) (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe du_'172''8869''8776''8868'_3842 (coe v0))))
            (coe
               du_helper_3900 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (coe du_'8744''45'identity'737'_3786 v0 v3)
               (coe du_'8743''45'zero'737'_3794 v0 v3)))
         (coe
            v2 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
            v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identityʳ
d_'8853''45'identity'691'_3974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'691'_3974 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'691'_3974 v2 v3 v4 v5
du_'8853''45'identity'691'_3974 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'691'_3974 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
      (coe
         du_'8853''45'comm_3920 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))))
         (coe
            v1 v3 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
         (coe
            v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)) v3)
         v3)
      (coe
         du_'8853''45'identity'737'_3970 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identity
d_'8853''45'identity_3976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_3976 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'identity_3976 v2 v3 v4
du_'8853''45'identity_3976 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_3976 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'identity'737'_3970 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity'691'_3974 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_3978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_3978 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'737'_3978 v2 v3 v4 v5
du_'8853''45'inverse'737'_3978 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_3978 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v1 v3 v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe v1 v3 v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v3)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))
                  v3))
            (coe
               du_helper_3900 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v3)
               (coe v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_318
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
                        (coe v0)))
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_294
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
                        (coe v0)))
                  (coe v3))))
         (coe v2 v3 v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_3982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_3982 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'691'_3982 v2 v3 v4 v5
du_'8853''45'inverse'691'_3982 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_3982 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
      (coe
         du_'8853''45'comm_3920 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))))
         (coe v1 v3 v3) (coe v1 v3 v3)
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
      (coe
         du_'8853''45'inverse'737'_3978 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverse
d_'8853''45'inverse_3984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_3984 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'inverse_3984 v2 v3 v4
du_'8853''45'inverse_3984 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_3984 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'inverse'737'_3978 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse'691'_3982 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_3986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_3986 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8743''45'distrib'737''45''8853'_3986 v2 v3 v4 v5 v6 v7
du_'8743''45'distrib'737''45''8853'_3986 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_3986 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
         (coe v1 v4 v5))
      (coe
         v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
            (coe v1 v4 v5))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
         (coe
            v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5)))
            (coe
               v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
               (coe
                  v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                  (coe
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                     (coe
                        v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                        (coe
                           v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0)))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                       v5))))
                           (coe
                              v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0)))))))
                              (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                          v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                          v5))))
                              (coe
                                 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v5))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                   (coe v0)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v4 v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v5))))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       v5))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                      (coe v0)))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v5))))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v5))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                      (coe
                                                         MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                         (coe v0)))))))
                                       (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                      (coe v0))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                   v0 v3 v5))))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v5))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v5))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                      (coe
                                                         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                         (coe
                                                            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                            (coe v0)))))))
                                          (coe
                                             v1
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v5)))
                                       (coe
                                          v2
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v5)))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v5)))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3444
                                          (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0)))
                                          v3 v4 v5)))
                                 (coe
                                    du_helper_3900 (coe v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v4 v5)))
                                    (coe du_lem'8321'_4000 (coe v0) (coe v3) (coe v4) (coe v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                          v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                          v5)))
                                 (coe
                                    du_deMorgan'8321'_3854 (coe v0) (coe v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                       v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                                 (\ v6 v7 -> v6)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                                 (\ v6 v7 -> v7)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                 (coe du_deMorgan'8321'_3854 (coe v0) (coe v4) (coe v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3444
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                        (coe du_lem'8323'_4002 (coe v0) (coe v3) (coe v4) (coe v5))))
                  (coe
                     du_'8744''45'identity'737'_3786 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                  (coe du_deMorgan'8321'_3854 (coe v0) (coe v4) (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v3) (coe v1 v4 v5)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5)))
            (coe v2 v4 v5)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_3998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3998 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_3998 v2 v5 v6 v7
du_lem'8322'_3998 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3998 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  v2 v1 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            v1 v2 v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_4000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_4000 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_4000 v2 v5 v6 v7
du_lem'8321'_4000 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_4000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v1 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v3))
                  (coe du_lem'8322'_3998 (coe v0) (coe v1) (coe v2) (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               v1 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v1)
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_294
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
                     (coe v0)))
               (coe v1))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_4002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_4002 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_4002 v2 v5 v6 v7
du_lem'8323'_4002 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_4002 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                     v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                        v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                        v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                        v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3548
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))
                  v1)))
         (coe
            du_'8743''45'zero'691'_3790 (coe v0)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_4004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_4004 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'691''45''8853'_4004 v2 v3 v4
du_'8743''45'distrib'691''45''8853'_4004 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_4004 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr'691'_570
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_586
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (coe v1) (coe du_'8853''45'cong_3906 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe
         du_'8743''45'distrib'737''45''8853'_3986 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_4006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_4006 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'45''8853'_4006 v2 v3 v4
du_'8743''45'distrib'45''8853'_4006 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_4006 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8743''45'distrib'737''45''8853'_3986 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8743''45'distrib'691''45''8853'_4004 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.lemma₂
d_lemma'8322'_4016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8322'_4016 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_lemma'8322'_4016 v2 v5 v6 v7 v8
du_lemma'8322'_4016 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8322'_4016 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v4)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
               v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v4)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                  v4))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v4)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v4)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v4))))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3442
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0)))
                  v3 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                     v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v4)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v4)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3442
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0)))
                  v4 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3440
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
            v3 v4))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-assoc
d_'8853''45'assoc_4026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_4026 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8853''45'assoc_4026 v2 v3 v4 v5 v6 v7
du_'8853''45'assoc_4026 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_4026 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v6 v7 v8 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
         (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe v1 v3 (coe v1 v4 v5))
            (coe
               v1 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
            (coe v1 (coe v1 v3 v4) v5)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))))
               (coe v1 (coe v1 v3 v4) v5)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                    v5))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                  (coe v1 (coe v1 v3 v4) v5)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))))
                     (coe v1 (coe v1 v3 v4) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))))
                        (coe v1 (coe v1 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                             (coe v0)))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                           (coe v1 (coe v1 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0)))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)))
                                       v5)))
                              (coe v1 (coe v1 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                   (coe v0)))))))
                                 (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                (coe v0))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                   v0 v3 v4)))
                                          v5)))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)))
                                    v5)
                                 (coe v1 (coe v1 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                      (coe v0)))))))
                                    (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                   (coe v0))))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)))
                                       v5)
                                    (coe v1 (coe v1 v3 v4) v5) (coe v1 (coe v1 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                      (coe
                                                         MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                         (coe v0)))))))
                                       (coe v1 (coe v1 v3 v4) v5))
                                    (coe
                                       du_'8853''45'cong_3906 (coe v0) (coe v1) (coe v2)
                                       (coe v1 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)))
                                       (coe v5) (coe v5) (coe v2 v3 v4)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                          (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                                      (coe v0)))))
                                          v5)))
                                 (coe
                                    v2
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                                 (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                             v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726
                                                v0 v3 v4)))
                                       v5))
                                 (coe du_lem'8321'_4038 (coe v0) (coe v3) (coe v4) (coe v5))
                                 (coe du_lem'8322'_4042 (coe v0) (coe v3) (coe v4) (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                       v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))))
                           (coe du_lem'8325'_4050 (coe v0) (coe v3) (coe v4) (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4
                                    v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v5)))
                     (coe du_lem'8323'_4044 (coe v0) (coe v3) (coe v4) (coe v5))
                     (coe du_lem'8324'_4048 (coe v0) (coe v3) (coe v4) (coe v5))))
               (coe
                  v2 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5)))))
            (coe
               du_'8853''45'cong_3906 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3)
               (coe v1 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))
                  v3)
               (coe v2 v4 v5))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_4038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_4038 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_4038 v2 v5 v6 v7
du_lem'8321'_4038 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_4038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
         v3)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
            v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                  v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe v3)
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
                  (\ v4 v5 -> v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                  (\ v4 v5 -> v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe du_deMorgan'8321'_3854 (coe v0) (coe v1) (coe v2)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3442
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))
            v3
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂′
d_lem'8322''8242'_4040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322''8242'_4040 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 ~v7
  = du_lem'8322''8242'_4040 v2 v5 v6
du_lem'8322''8242'_4040 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322''8242'_4040 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
                                    v2)))))
                     (coe
                        du_deMorgan'8321'_3854 (coe v0)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)
                     (coe du_deMorgan'8322'_3874 (coe v0) (coe v1) (coe v2))
                     (coe
                        du_'172''45'involutive_3846 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
               (coe
                  du_lemma'8322'_4016 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                  (\ v3 v4 -> v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                  (\ v3 v4 -> v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3542
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))
                     v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3542
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))
                     v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
            (coe
               du_'8743''45'identity'737'_3778 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
            (coe
               du_'8743''45'identity'691'_3774 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_4042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_4042 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_4042 v2 v5 v6 v7
du_lem'8322'_4042 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_4042 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
            v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
               v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                  v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                        v3)))
               (coe
                  du_deMorgan'8321'_3854 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                  (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3372
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
               (coe du_lem'8322''8242'_4040 (coe v0) (coe v1) (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3442
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_4044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_4044 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_4044 v2 v5 v6 v7
du_lem'8323'_4044 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_4044 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v1 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))))
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3440
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0)))
               v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe v1)
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
               (\ v4 v5 -> v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
               (\ v4 v5 -> v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
               (coe du_deMorgan'8321'_3854 (coe v0) (coe v2) (coe v3)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₄′
d_lem'8324''8242'_4046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324''8242'_4046 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7
  = du_lem'8324''8242'_4046 v2 v6 v7
du_lem'8324''8242'_4046 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324''8242'_4046 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                        (coe
                           du_'8743''45'identity'737'_3778 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                        (coe
                           du_'8743''45'identity'691'_3774 (coe v0)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                              v2))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3542
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))
                           v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3330
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0))))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_306
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__312
                           (\ v3 v4 -> v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3360
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3542
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0))
                           v2))))
               (coe
                  du_lemma'8322'_4016 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2)
                  (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
               (coe du_deMorgan'8322'_3874 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3334
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
               (coe
                  du_'172''45'involutive_3846 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
         (coe
            du_deMorgan'8321'_3854 (coe v0)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₄
d_lem'8324'_4048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324'_4048 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8324'_4048 v2 v5 v6 v7
du_lem'8324'_4048 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324'_4048 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                       (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                          (coe v0)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                              v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           v3)))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__254
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3332
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3440
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0)))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3368
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2) v3))
               (coe du_lem'8324''8242'_4046 (coe v0) (coe v2) (coe v3))))
         (coe
            du_deMorgan'8321'_3854 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v2 v3)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₅
d_lem'8325'_4050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8325'_4050 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8325'_4050 v2 v5 v6 v7
du_lem'8325'_4050 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8325'_4050 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                              (coe v0)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_40
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                 (coe v0)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3364
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
                     v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0 v3))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-isMagma
d_'8853''45'isMagma_4052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8853''45'isMagma_4052 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isMagma_4052 v2 v3 v4
du_'8853''45'isMagma_4052 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8853''45'isMagma_4052 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_212
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe du_'8853''45'cong_3906 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_4054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8853''45'isSemigroup_4054 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isSemigroup_4054 v2 v3 v4
du_'8853''45'isSemigroup_4054 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8853''45'isSemigroup_4054 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_524
      (coe du_'8853''45'isMagma_4052 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'assoc_4026 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_4056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8853''45''8869''45'isMonoid_4056 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isMonoid_4056 v2 v3 v4
du_'8853''45''8869''45'isMonoid_4056 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8853''45''8869''45'isMonoid_4056 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_760
      (coe du_'8853''45'isSemigroup_4054 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity_3976 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_4058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_'8853''45''8869''45'isGroup_4058 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isGroup_4058 v2 v3 v4
du_'8853''45''8869''45'isGroup_4058 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_'8853''45''8869''45'isGroup_4058 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1166
      (coe
         du_'8853''45''8869''45'isMonoid_4056 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse_3984 (coe v0) (coe v1) (coe v2))
      (coe (\ v3 v4 v5 -> v5))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_4060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'8853''45''8869''45'isAbelianGroup_4060 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isAbelianGroup_4060 v2 v3 v4
du_'8853''45''8869''45'isAbelianGroup_4060 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
du_'8853''45''8869''45'isAbelianGroup_4060 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_1254
      (coe
         du_'8853''45''8869''45'isGroup_4058 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'comm_3920 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_4062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_'8853''45''8743''45'isRing_4062 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isRing_4062 v2 v3 v4
du_'8853''45''8743''45'isRing_4062 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
du_'8853''45''8743''45'isRing_4062 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3004
      (coe
         du_'8853''45''8869''45'isAbelianGroup_4060 (coe v0) (coe v1)
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3340
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3338
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
      (coe du_'8743''45'identity_3780 (coe v0))
      (coe
         du_'8743''45'distrib'45''8853'_4006 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_4064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_'8853''45''8743''45'isCommutativeRing_4064 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isCommutativeRing_4064 v2 v3 v4
du_'8853''45''8743''45'isCommutativeRing_4064 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
du_'8853''45''8743''45'isCommutativeRing_4064 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3158
      (coe du_'8853''45''8743''45'isRing_4062 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3336
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_4066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
d_'8853''45''8743''45'commutativeRing_4066 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'commutativeRing_4066 v2 v3 v4
du_'8853''45''8743''45'commutativeRing_4066 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
du_'8853''45''8743''45'commutativeRing_4066 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4540 v1
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (\ v3 -> v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe
         du_'8853''45''8743''45'isCommutativeRing_4064 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isBooleanRing
d_'8853''45''8743''45'isBooleanRing_4068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170
d_'8853''45''8743''45'isBooleanRing_4068 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isBooleanRing_4068 v2 v3 v4
du_'8853''45''8743''45'isBooleanRing_4068 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170
du_'8853''45''8743''45'isBooleanRing_4068 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_constructor_3314
      (coe
         du_'8853''45''8743''45'isCommutativeRing_4064 (coe v0) (coe v1)
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_294
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_678
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_806
               (coe v0))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-booleanRing
d_'8853''45''8743''45'booleanRing_4070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanRing_4546
d_'8853''45''8743''45'booleanRing_4070 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'booleanRing_4070 v2 v3 v4
du_'8853''45''8743''45'booleanRing_4070 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanRing_4546
du_'8853''45''8743''45'booleanRing_4070 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_constructor_4778 v1
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 (coe v0))
      (\ v3 -> v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_732 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_730 (coe v0))
      (coe
         du_'8853''45''8743''45'isBooleanRing_4068 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._⊕_
d__'8853'__4072 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__4072 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_4084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_4084 ~v0 ~v1 v2
  = du_'172''45'distrib'691''45''8853'_4084 v2
du_'172''45'distrib'691''45''8853'_4084 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_4084 v0
  = coe
      du_'172''45'distrib'691''45''8853'_3954 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_4086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_4086 ~v0 ~v1 v2
  = du_'172''45'distrib'737''45''8853'_4086 v2
du_'172''45'distrib'737''45''8853'_4086 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_4086 v0
  = coe
      du_'172''45'distrib'737''45''8853'_3930 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_4088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_4088 ~v0 ~v1 v2
  = du_'8743''45'distrib'45''8853'_4088 v2
du_'8743''45'distrib'45''8853'_4088 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_4088 v0
  = coe
      du_'8743''45'distrib'45''8853'_4006 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_4090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_4090 ~v0 ~v1 v2
  = du_'8743''45'distrib'691''45''8853'_4090 v2
du_'8743''45'distrib'691''45''8853'_4090 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_4090 v0
  = coe
      du_'8743''45'distrib'691''45''8853'_4004 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_4092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_4092 ~v0 ~v1 v2
  = du_'8743''45'distrib'737''45''8853'_4092 v2
du_'8743''45'distrib'737''45''8853'_4092 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_4092 v0
  = coe
      du_'8743''45'distrib'737''45''8853'_3986 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_4094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_4094 ~v0 ~v1 v2
  = du_'8853''45'annihilates'45''172'_4094 v2
du_'8853''45'annihilates'45''172'_4094 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_4094 v0
  = coe
      du_'8853''45'annihilates'45''172'_3964 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc
d_'8853''45'assoc_4096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_4096 ~v0 ~v1 v2 = du_'8853''45'assoc_4096 v2
du_'8853''45'assoc_4096 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_4096 v0
  = coe
      du_'8853''45'assoc_4026 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm
d_'8853''45'comm_4098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_4098 ~v0 ~v1 v2 = du_'8853''45'comm_4098 v2
du_'8853''45'comm_4098 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_4098 v0
  = coe
      du_'8853''45'comm_3920 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong
d_'8853''45'cong_4100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_4100 ~v0 ~v1 v2 = du_'8853''45'cong_4100 v2
du_'8853''45'cong_4100 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_4100 v0
  = coe
      du_'8853''45'cong_3906 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity
d_'8853''45'identity_4102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_4102 ~v0 ~v1 v2
  = du_'8853''45'identity_4102 v2
du_'8853''45'identity_4102 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_4102 v0
  = coe
      du_'8853''45'identity_3976 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ
d_'8853''45'identity'691'_4104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'691'_4104 ~v0 ~v1 v2
  = du_'8853''45'identity'691'_4104 v2
du_'8853''45'identity'691'_4104 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'691'_4104 v0
  = coe
      du_'8853''45'identity'691'_3974 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ
d_'8853''45'identity'737'_4106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'737'_4106 ~v0 ~v1 v2
  = du_'8853''45'identity'737'_4106 v2
du_'8853''45'identity'737'_4106 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'737'_4106 v0
  = coe
      du_'8853''45'identity'737'_3970 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse
d_'8853''45'inverse_4108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_4108 ~v0 ~v1 v2 = du_'8853''45'inverse_4108 v2
du_'8853''45'inverse_4108 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_4108 v0
  = coe
      du_'8853''45'inverse_3984 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_4110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_4110 ~v0 ~v1 v2
  = du_'8853''45'inverse'691'_4110 v2
du_'8853''45'inverse'691'_4110 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_4110 v0
  = coe
      du_'8853''45'inverse'691'_3982 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_4112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_4112 ~v0 ~v1 v2
  = du_'8853''45'inverse'737'_4112 v2
du_'8853''45'inverse'737'_4112 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_4112 v0
  = coe
      du_'8853''45'inverse'737'_3978 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma
d_'8853''45'isMagma_4114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
d_'8853''45'isMagma_4114 ~v0 ~v1 v2 = du_'8853''45'isMagma_4114 v2
du_'8853''45'isMagma_4114 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_180
du_'8853''45'isMagma_4114 v0
  = coe
      du_'8853''45'isMagma_4052 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_4116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
d_'8853''45'isSemigroup_4116 ~v0 ~v1 v2
  = du_'8853''45'isSemigroup_4116 v2
du_'8853''45'isSemigroup_4116 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_490
du_'8853''45'isSemigroup_4116 v0
  = coe
      du_'8853''45'isSemigroup_4054 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-booleanRing
d_'8853''45''8743''45'booleanRing_4118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanRing_4546
d_'8853''45''8743''45'booleanRing_4118 ~v0 ~v1 v2
  = du_'8853''45''8743''45'booleanRing_4118 v2
du_'8853''45''8743''45'booleanRing_4118 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanRing_4546
du_'8853''45''8743''45'booleanRing_4118 v0
  = coe
      du_'8853''45''8743''45'booleanRing_4070 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_4120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
d_'8853''45''8743''45'commutativeRing_4120 ~v0 ~v1 v2
  = du_'8853''45''8743''45'commutativeRing_4120 v2
du_'8853''45''8743''45'commutativeRing_4120 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4314
du_'8853''45''8743''45'commutativeRing_4120 v0
  = coe
      du_'8853''45''8743''45'commutativeRing_4066 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isBooleanRing
d_'8853''45''8743''45'isBooleanRing_4122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170
d_'8853''45''8743''45'isBooleanRing_4122 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isBooleanRing_4122 v2
du_'8853''45''8743''45'isBooleanRing_4122 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanRing_3170
du_'8853''45''8743''45'isBooleanRing_4122 v0
  = coe
      du_'8853''45''8743''45'isBooleanRing_4068 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_4124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
d_'8853''45''8743''45'isCommutativeRing_4124 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isCommutativeRing_4124 v2
du_'8853''45''8743''45'isCommutativeRing_4124 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_3016
du_'8853''45''8743''45'isCommutativeRing_4124 v0
  = coe
      du_'8853''45''8743''45'isCommutativeRing_4064 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_4126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
d_'8853''45''8743''45'isRing_4126 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isRing_4126 v2
du_'8853''45''8743''45'isRing_4126 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2868
du_'8853''45''8743''45'isRing_4126 v0
  = coe
      du_'8853''45''8743''45'isRing_4062 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_4128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
d_'8853''45''8869''45'isAbelianGroup_4128 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isAbelianGroup_4128 v2
du_'8853''45''8869''45'isAbelianGroup_4128 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1174
du_'8853''45''8869''45'isAbelianGroup_4128 v0
  = coe
      du_'8853''45''8869''45'isAbelianGroup_4060 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_4130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
d_'8853''45''8869''45'isGroup_4130 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isGroup_4130 v2
du_'8853''45''8869''45'isGroup_4130 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1076
du_'8853''45''8869''45'isGroup_4130 v0
  = coe
      du_'8853''45''8869''45'isGroup_4058 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_4132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
d_'8853''45''8869''45'isMonoid_4132 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isMonoid_4132 v2
du_'8853''45''8869''45'isMonoid_4132 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_714
du_'8853''45''8869''45'isMonoid_4132 v0
  = coe
      du_'8853''45''8869''45'isMonoid_4056 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3328
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3394
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3480
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_734
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__724 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__728 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__726 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.⊥≉⊤
d_'8869''8777''8868'_4134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
d_'8869''8777''8868'_4134 ~v0 ~v1 v2
  = du_'8869''8777''8868'_4134 v2
du_'8869''8777''8868'_4134 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
du_'8869''8777''8868'_4134 v0
  = coe du_'172''8869''8776''8868'_3842 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra.⊤≉⊥
d_'8868''8777''8869'_4136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
d_'8868''8777''8869'_4136 ~v0 ~v1 v2
  = du_'8868''8777''8869'_4136 v2
du_'8868''8777''8869'_4136 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_698 ->
  AgdaAny
du_'8868''8777''8869'_4136 v0
  = coe du_'172''8868''8776''8869'_3844 (coe v0)
