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
d_IsCommutativeMonoid_128 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing
d_IsCommutativeRing_130 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring
d_IsCommutativeSemiring_134 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup
d_IsGroup_140 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma
d_IsMagma_160 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid
d_IsMonoid_166 a0 a1 a2 a3 a4 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing
d_IsRing_182 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup
d_IsSemigroup_188 a0 a1 a2 a3 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring
d_IsSemiring_192 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsAbelianGroup.comm
d_comm_208 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_208 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_1146 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsAbelianGroup.isGroup
d_isGroup_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_230 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeMonoid.comm
d_comm_498 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_498 v0
  = coe MAlonzo.Code.Algebra.Structures.d_comm_748 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeMonoid.isMonoid
d_isMonoid_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_514 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing.*-comm
d_'42''45'comm_544 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_544 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_2836 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeRing.isRing
d_isRing_632 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_isRing_632 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2834 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring.*-comm
d_'42''45'comm_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_698 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1714 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsCommutativeSemiring.isSemiring
d_isSemiring_768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_isSemiring_768 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1712 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup.inverse
d_inverse_906 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_906 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1052 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup.isMonoid
d_isMonoid_920 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_920 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_1054 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma.isEquivalence
d_isEquivalence_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1470 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMagma.∙-cong
d_'8729''45'cong_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_186 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid.identity
d_identity_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1580 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsMonoid.isSemigroup
d_isSemigroup_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1592 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.*-assoc
d_'42''45'assoc_2098 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2098 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'assoc_2698 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.*-cong
d_'42''45'cong_2100 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2100 v0
  = coe MAlonzo.Code.Algebra.Structures.d_'42''45'cong_2696 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.*-identity
d_'42''45'identity_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2700 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2134 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2694
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsRing.distrib
d_distrib_2164 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2164 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2702 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup.assoc
d_assoc_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_assoc_482 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemigroup.isMagma
d_isMagma_2330 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2330 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2444 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1488
d_isSemiringWithoutAnnihilatingZero_2444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1604
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsSemiring.zero
d_zero_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2458 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1606 (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOver_
d__DistributesOver__2654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__2654 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOverʳ_
d__DistributesOver'691'__2656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__2656 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._._DistributesOverˡ_
d__DistributesOver'737'__2658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__2658 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Associative
d_Associative_2674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_2674 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Commutative
d_Commutative_2678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_2678 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Congruent₂
d_Congruent'8322'_2682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_2682 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Identity
d_Identity_2694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_2694 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Inverse
d_Inverse_2698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_2698 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Involutive
d_Involutive_2702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_2702 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftIdentity
d_LeftIdentity_2720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_2720 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftInverse
d_LeftInverse_2722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_2722 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.LeftZero
d_LeftZero_2728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_2728 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightIdentity
d_RightIdentity_2750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_2750 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightInverse
d_RightInverse_2752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_2752 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.RightZero
d_RightZero_2758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_2758 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.Zero
d_Zero_2778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_2778 = erased
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra
d_IsBooleanAlgebra_2914 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_2936 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_isDistributiveLattice_2936 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.¬-cong
d_'172''45'cong_2952 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_2952 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_2960 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_2960 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3158
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_2984 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_2984 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3156
      (coe v0)
-- Algebra.Lattice.Properties.BooleanAlgebra._.poset
d_poset_3378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
d_poset_3378 ~v0 ~v1 v2 = du_poset_3378 v2
du_poset_3378 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_480
du_poset_3378 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_poset_162
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3216
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-idem
d_'8743''45'idem_3380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_3380 ~v0 ~v1 v2 = du_'8743''45'idem_3380 v2
du_'8743''45'idem_3380 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_3380 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3204
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isBand
d_'8743''45'isBand_3382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8743''45'isBand_3382 ~v0 ~v1 v2 = du_'8743''45'isBand_3382 v2
du_'8743''45'isBand_3382 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_'8743''45'isBand_3382 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isBand_3212
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isMagma
d_'8743''45'isMagma_3384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8743''45'isMagma_3384 ~v0 ~v1 v2 = du_'8743''45'isMagma_3384 v2
du_'8743''45'isMagma_3384 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8743''45'isMagma_3384 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isMagma_3208
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3386 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3386 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3386 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3386 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3216
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_3388 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3388 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3388 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_3388 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3216
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isSemigroup
d_'8743''45'isSemigroup_3390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8743''45'isSemigroup_3390 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_3390 v2
du_'8743''45'isSemigroup_3390 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8743''45'isSemigroup_3390 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_3210
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isSemilattice
d_'8743''45'isSemilattice_3392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8743''45'isSemilattice_3392 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_3392 v2
du_'8743''45'isSemilattice_3392 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_'8743''45'isSemilattice_3392 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemilattice_3214
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3394 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3394 v2
du_'8743''45'orderTheoreticJoinSemilattice_3394 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3394 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3216
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_3396 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3396 v2
du_'8743''45'orderTheoreticMeetSemilattice_3396 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_3396 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3216
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-semilattice
d_'8743''45'semilattice_3398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3398 ~v0 ~v1 v2
  = du_'8743''45'semilattice_3398 v2
du_'8743''45'semilattice_3398 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8743''45'semilattice_3398 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'semilattice_3216
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_3400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8743''45''8744''45'distributiveLattice_3400 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_3400 v2
du_'8743''45''8744''45'distributiveLattice_3400 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
du_'8743''45''8744''45'distributiveLattice_3400 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'distributiveLattice_738
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
         (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_3402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
d_'8743''45''8744''45'isDistributiveLattice_3402 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_3402 v2
du_'8743''45''8744''45'isDistributiveLattice_3402 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3058
du_'8743''45''8744''45'isDistributiveLattice_3402 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_736
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
         (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_3404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
d_'8743''45''8744''45'isLattice_3404 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_3404 v2
du_'8743''45''8744''45'isLattice_3404 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2984
du_'8743''45''8744''45'isLattice_3404 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'isLattice_3252
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-∨-lattice
d_'8743''45''8744''45'lattice_3406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8743''45''8744''45'lattice_3406 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_3406 v2
du_'8743''45''8744''45'lattice_3406 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
du_'8743''45''8744''45'lattice_3406 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45''8744''45'lattice_3254
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-idem
d_'8744''45'idem_3408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_3408 ~v0 ~v1 v2 = du_'8744''45'idem_3408 v2
du_'8744''45'idem_3408 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_3408 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3228
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isBand
d_'8744''45'isBand_3410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8744''45'isBand_3410 ~v0 ~v1 v2 = du_'8744''45'isBand_3410 v2
du_'8744''45'isBand_3410 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
du_'8744''45'isBand_3410 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isBand_3236
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isMagma
d_'8744''45'isMagma_3412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8744''45'isMagma_3412 ~v0 ~v1 v2 = du_'8744''45'isMagma_3412 v2
du_'8744''45'isMagma_3412 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8744''45'isMagma_3412 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isMagma_3232
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_3414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_'8743''45'isOrderTheoreticJoinSemilattice_3414 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_3414 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_3414 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_'8743''45'isOrderTheoreticJoinSemilattice_3414 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3240
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_3416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
d_'8743''45'isOrderTheoreticMeetSemilattice_3416 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_3416 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_3416 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsMeetSemilattice_180
du_'8743''45'isOrderTheoreticMeetSemilattice_3416 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3240
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isSemigroup
d_'8744''45'isSemigroup_3418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8744''45'isSemigroup_3418 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_3418 v2
du_'8744''45'isSemigroup_3418 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8744''45'isSemigroup_3418 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_3234
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-isSemilattice
d_'8744''45'isSemilattice_3420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8744''45'isSemilattice_3420 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_3420 v2
du_'8744''45'isSemilattice_3420 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
du_'8744''45'isSemilattice_3420 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemilattice_3238
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_3422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
d_'8743''45'orderTheoreticJoinSemilattice_3422 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_3422 v2
du_'8743''45'orderTheoreticJoinSemilattice_3422 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_JoinSemilattice_14
du_'8743''45'orderTheoreticJoinSemilattice_3422 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3240
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_3424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
d_'8743''45'orderTheoreticMeetSemilattice_3424 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_3424 v2
du_'8743''45'orderTheoreticMeetSemilattice_3424 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_MeetSemilattice_200
du_'8743''45'orderTheoreticMeetSemilattice_3424 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
            (coe
               MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3240
               (coe v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-semilattice
d_'8744''45'semilattice_3426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3426 ~v0 ~v1 v2
  = du_'8744''45'semilattice_3426 v2
du_'8744''45'semilattice_3426 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
du_'8744''45'semilattice_3426 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'semilattice_3240
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_3428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_'8744''45''8743''45'isOrderTheoreticLattice_3428 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_3428 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_3428 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_'8744''45''8743''45'isOrderTheoreticLattice_3428 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_3266
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_3430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
d_'8744''45''8743''45'orderTheoreticLattice_3430 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_3430 v2
du_'8744''45''8743''45'orderTheoreticLattice_3430 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_Lattice_386
du_'8744''45''8743''45'orderTheoreticLattice_3430 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_3322
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra
d_'8743''45''8744''45'isBooleanAlgebra_3432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134
d_'8743''45''8744''45'isBooleanAlgebra_3432 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isBooleanAlgebra_3432 v2
du_'8743''45''8744''45'isBooleanAlgebra_3432 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_3134
du_'8743''45''8744''45'isBooleanAlgebra_3432 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsBooleanAlgebra'46'constructor_44131
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_736
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3158
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_3156
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
            (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-booleanAlgebra
d_'8743''45''8744''45'booleanAlgebra_3434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682
d_'8743''45''8744''45'booleanAlgebra_3434 ~v0 ~v1 v2
  = du_'8743''45''8744''45'booleanAlgebra_3434 v2
du_'8743''45''8744''45'booleanAlgebra_3434 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682
du_'8743''45''8744''45'booleanAlgebra_3434 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_BooleanAlgebra'46'constructor_11509
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe du_'8743''45''8744''45'isBooleanAlgebra_3432 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identityʳ
d_'8743''45'identity'691'_3436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'691'_3436 ~v0 ~v1 v2 v3
  = du_'8743''45'identity'691'_3436 v2 v3
du_'8743''45'identity'691'_3436 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'691'_3436 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                   (coe v2))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (let v2
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v2) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'absorbs'45''8744'_3036
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                  (coe v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3218
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))
                        v1))))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identityˡ
d_'8743''45'identity'737'_3440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'737'_3440 ~v0 ~v1 v2
  = du_'8743''45'identity'737'_3440 v2
du_'8743''45'identity'737'_3440 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'737'_3440 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'691''8658'id'737'_348
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe du_'8743''45'identity'691'_3436 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-identity
d_'8743''45'identity_3442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_3442 ~v0 ~v1 v2
  = du_'8743''45'identity_3442 v2
du_'8743''45'identity_3442 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'identity_3442 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'identity'737'_3440 (coe v0))
      (coe du_'8743''45'identity'691'_3436 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identityʳ
d_'8744''45'identity'691'_3444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'691'_3444 ~v0 ~v1 v2 v3
  = du_'8744''45'identity'691'_3444 v2 v3
du_'8744''45'identity'691'_3444 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'691'_3444 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            v1 v1
            (let v2
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v2
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                   (coe v2))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v2))
                  (coe v1)))
            (let v2
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v2) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'absorbs'45''8743'_3034
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v2))
               (coe v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identityˡ
d_'8744''45'identity'737'_3448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'737'_3448 ~v0 ~v1 v2
  = du_'8744''45'identity'737'_3448 v2
du_'8744''45'identity'737'_3448 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'737'_3448 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'id'691''8658'id'737'_348
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (coe du_'8744''45'identity'691'_3444 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-identity
d_'8744''45'identity_3450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_3450 ~v0 ~v1 v2
  = du_'8744''45'identity_3450 v2
du_'8744''45'identity_3450 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'identity_3450 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'identity'737'_3448 (coe v0))
      (coe du_'8744''45'identity'691'_3444 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zeroʳ
d_'8743''45'zero'691'_3452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'691'_3452 ~v0 ~v1 v2 v3
  = du_'8743''45'zero'691'_3452 v2 v3
du_'8743''45'zero'691'_3452 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'691'_3452 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v2)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                  (let v2
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v2
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v2))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1))
               (let v2
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v1)
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3204
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                 (coe v0)))
                           (coe v1))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))))
               v1 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zeroˡ
d_'8743''45'zero'737'_3456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'737'_3456 ~v0 ~v1 v2
  = du_'8743''45'zero'737'_3456 v2
du_'8743''45'zero'737'_3456 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'737'_3456 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'691''8658'ze'737'_368
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (coe du_'8743''45'zero'691'_3452 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-zero
d_'8743''45'zero_3458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_3458 ~v0 ~v1 v2 = du_'8743''45'zero_3458 v2
du_'8743''45'zero_3458 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'zero_3458 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'zero'737'_3456 (coe v0))
      (coe du_'8743''45'zero'691'_3452 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zeroʳ
d_'8744''45'zero'691'_3462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'691'_3462 ~v0 ~v1 v2 v3
  = du_'8744''45'zero'691'_3462 v2 v3
du_'8744''45'zero'691'_3462 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'691'_3462 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v4)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v2
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v2)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (let v2
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v2
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v2))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3218
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1))
               (let v2
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (let v3
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v1)
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3228
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                 (coe v0)))
                           (coe v1))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))))
               v1 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3218
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zeroˡ
d_'8744''45'zero'737'_3466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'737'_3466 ~v0 ~v1 v2
  = du_'8744''45'zero'737'_3466 v2
du_'8744''45'zero'737'_3466 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'737'_3466 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'ze'691''8658'ze'737'_368
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v1))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe du_'8744''45'zero'691'_3462 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-zero
d_'8744''45'zero_3468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_3468 ~v0 ~v1 v2 = du_'8744''45'zero_3468 v2
du_'8744''45'zero_3468 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'zero_3468 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'zero'737'_3466 (coe v0))
      (coe du_'8744''45'zero'691'_3462 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-⊥-isMonoid
d_'8744''45''8869''45'isMonoid_3470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8744''45''8869''45'isMonoid_3470 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isMonoid_3470 v2
du_'8744''45''8869''45'isMonoid_3470 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8744''45''8869''45'isMonoid_3470 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'isSemigroup_3234
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
               (coe v0))))
      (coe du_'8744''45'identity_3450 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-⊤-isMonoid
d_'8743''45''8868''45'isMonoid_3472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8743''45''8868''45'isMonoid_3472 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isMonoid_3472 v2
du_'8743''45''8868''45'isMonoid_3472 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8743''45''8868''45'isMonoid_3472 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe
         MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'isSemigroup_3210
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
               (coe v0))))
      (coe du_'8743''45'identity_3442 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid
d_'8744''45''8869''45'isCommutativeMonoid_3474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'8744''45''8869''45'isCommutativeMonoid_3474 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isCommutativeMonoid_3474 v2
du_'8744''45''8869''45'isCommutativeMonoid_3474 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'8744''45''8869''45'isCommutativeMonoid_3474 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe du_'8744''45''8869''45'isMonoid_3470 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid
d_'8743''45''8868''45'isCommutativeMonoid_3476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'8743''45''8868''45'isCommutativeMonoid_3476 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isCommutativeMonoid_3476 v2
du_'8743''45''8868''45'isCommutativeMonoid_3476 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
du_'8743''45''8868''45'isCommutativeMonoid_3476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_17695
      (coe du_'8743''45''8868''45'isMonoid_3472 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_3478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'8744''45''8743''45'isSemiring_3478 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isSemiring_3478 v2
du_'8744''45''8743''45'isSemiring_3478 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_'8744''45''8743''45'isSemiring_3478 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe du_'8744''45''8869''45'isCommutativeMonoid_3474 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0)))))
         (coe du_'8743''45'identity_3442 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_3074
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe du_'8743''45'zero_3458 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_3480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
d_'8743''45''8744''45'isSemiring_3480 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isSemiring_3480 v2
du_'8743''45''8744''45'isSemiring_3480 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1590
du_'8743''45''8744''45'isSemiring_3480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_49671
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_45411
         (coe du_'8743''45''8868''45'isCommutativeMonoid_3476 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0)))))
         (coe du_'8744''45'identity_3450 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_3072
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe du_'8744''45'zero_3468 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_3482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'8744''45''8743''45'isCommutativeSemiring_3482 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isCommutativeSemiring_3482 v2
du_'8744''45''8743''45'isCommutativeSemiring_3482 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_'8744''45''8743''45'isCommutativeSemiring_3482 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe du_'8744''45''8743''45'isSemiring_3478 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_3484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
d_'8743''45''8744''45'isCommutativeSemiring_3484 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isCommutativeSemiring_3484 v2
du_'8743''45''8744''45'isCommutativeSemiring_3484 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1698
du_'8743''45''8744''45'isCommutativeSemiring_3484 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_53495
      (coe du_'8743''45''8744''45'isSemiring_3480 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_3486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'8744''45''8743''45'commutativeSemiring_3486 ~v0 ~v1 v2
  = du_'8744''45''8743''45'commutativeSemiring_3486 v2
du_'8744''45''8743''45'commutativeSemiring_3486 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_'8744''45''8743''45'commutativeSemiring_3486 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe du_'8744''45''8743''45'isCommutativeSemiring_3482 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_3488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
d_'8743''45''8744''45'commutativeSemiring_3488 ~v0 ~v1 v2
  = du_'8743''45''8744''45'commutativeSemiring_3488 v2
du_'8743''45''8744''45'commutativeSemiring_3488 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2470
du_'8743''45''8744''45'commutativeSemiring_3488 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_45179
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (coe du_'8743''45''8744''45'isCommutativeSemiring_3484 (coe v0))
-- Algebra.Lattice.Properties.BooleanAlgebra.lemma
d_lemma_3494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma_3494 ~v0 ~v1 v2 v3 v4 v5 v6 = du_lemma_3494 v2 v3 v4 v5 v6
du_lemma_3494 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma_3494 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5))))))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v5)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v5)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v5))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v5)))))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v5
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v5))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
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
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                             (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)) v2)
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
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                (coe v5)))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)) v2)
                              v2 v2
                              (let v5
                                     = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (let v5
                                                   = coe
                                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                       (coe v0) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                  (coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                     (coe v5))))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                       (coe v5))
                                    (coe v2)))
                              (coe du_'8743''45'identity'737'_3440 v0 v2))
                           (let v5
                                  = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                    (coe v5))
                                 (coe v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3218
                                    (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                       (coe v0))
                                    v1))))
                        (let v5
                               = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_3122
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe v5))
                              v2 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))))
                     (let v5
                            = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                (coe v0) in
                      coe
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                   (coe v5) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                              (coe v3)))))
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'737'_3220
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))
                           v1))))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3120
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1
                     v2)))
            (let v5
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v6
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v5) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v6))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                     (coe v4)))))
         (coe
            du_'8743''45'identity'691'_3436 (coe v0)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
-- Algebra.Lattice.Properties.BooleanAlgebra.⊥≉⊤
d_'8869''8777''8868'_3504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny
d_'8869''8777''8868'_3504 ~v0 ~v1 v2
  = du_'8869''8777''8868'_3504 v2
du_'8869''8777''8868'_3504 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny
du_'8869''8777''8868'_3504 v0
  = coe
      du_lemma_3494 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe
         du_'8743''45'identity'691'_3436 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
      (coe
         du_'8744''45'zero'691'_3462 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.⊤≉⊥
d_'8868''8777''8869'_3506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny
d_'8868''8777''8869'_3506 ~v0 ~v1 v2
  = du_'8868''8777''8869'_3506 v2
du_'8868''8777''8869'_3506 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny
du_'8868''8777''8869'_3506 v0
  = coe
      du_lemma_3494 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (coe
         du_'8743''45'zero'691'_3452 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
      (coe
         du_'8744''45'identity'691'_3444 (coe v0)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
-- Algebra.Lattice.Properties.BooleanAlgebra.¬-involutive
d_'172''45'involutive_3508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'172''45'involutive_3508 ~v0 ~v1 v2 v3
  = du_'172''45'involutive_3508 v2 v3
du_'172''45'involutive_3508 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'172''45'involutive_3508 v0 v1
  = coe
      du_lemma_3494 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'737'_3220
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
            (coe v0))
         v1)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3216
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
            (coe v0))
         v1)
-- Algebra.Lattice.Properties.BooleanAlgebra.deMorgan₁
d_deMorgan'8321'_3516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8321'_3516 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8321'_3516 v2 v3 v4
du_deMorgan'8321'_3516 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8321'_3516 v0 v1 v2
  = coe
      du_lemma_3494 (coe v0)
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
      (coe du_lem'8321'_3526 (coe v0) (coe v1) (coe v2))
      (coe du_lem'8322'_3530 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₁
d_lem'8321'_3526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3526 ~v0 ~v1 v2 v3 v4 = du_lem'8321'_3526 v2 v3 v4
du_lem'8321'_3526 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3526 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v3)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                        (let v3
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                      (let v3
                                             = coe
                                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                 (coe v0) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                            (coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                               (coe v3))))) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v3))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
                        (coe
                           du_'8744''45'identity'691'_3444 (coe v0)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe du_'8743''45'zero'691'_3452 (coe v0) (coe v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (coe du_'8743''45'zero'691'_3452 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                     (let v3
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))
                              v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
                     (let v3
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                           (coe v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))
                              v2)))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v2 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v1 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                          (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (\ v4 v5 -> v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v4 v5 -> v5)
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                          (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1))
                  (let v4
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v4))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))))
                           v1 v2))))))
         (let v3
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3120
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₃
d_lem'8323'_3528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3528 ~v0 ~v1 v2 v3 v4 = du_lem'8323'_3528 v2 v3 v4
du_lem'8323'_3528 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3528 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v3
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v3))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v2 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
               (coe
                  du_'8743''45'identity'737'_3440 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3218
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1))))
         (let v3
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3118
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1
               v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra._.lem₂
d_lem'8322'_3530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3530 ~v0 ~v1 v2 v3 v4 = du_lem'8322'_3530 v2 v3 v4
du_lem'8322'_3530 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3530 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                            (coe v3))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
                     (coe
                        du_'8744''45'zero'691'_3462 (coe v0)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
                  (let v3
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'691'_3218
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))
                           v2))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v4))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe du_lem'8323'_3528 (coe v0) (coe v1) (coe v2))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0))))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
-- Algebra.Lattice.Properties.BooleanAlgebra.deMorgan₂
d_deMorgan'8322'_3536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8322'_3536 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8322'_3536 v2 v3 v4
du_deMorgan'8322'_3536 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8322'_3536 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v3
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v3))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
               (coe
                  du_'172''45'involutive_3508 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  du_deMorgan'8321'_3516 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (coe du_'172''45'involutive_3508 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  v2)
               (coe du_'172''45'involutive_3508 (coe v0) (coe v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._⊕_
d__'8853'__3552 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__3552 ~v0 v1 ~v2 = du__'8853'__3552 v1
du__'8853'__3552 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8853'__3552 v0 = coe v0
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.helper
d_helper_3562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_helper_3562 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_helper_3562 v2 v5 v6 v7 v8 v9 v10
du_helper_3562 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_helper_3562 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240 (coe v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0))))
         v1 v2
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
            (\ v7 v8 -> v7) v3 v4)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v7 v8 -> v8)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0)) v3
            v4))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
            (coe v0))
         v3 v4 v6)
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-cong
d_'8853''45'cong_3568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_3568 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8853''45'cong_3568 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_'8853''45'cong_3568 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_3568 v0 v1 v2 v3 v4 v5 v6 v7 v8
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v9)))))))
         (coe v1 v3 v5)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v5)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v9)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v6)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v6)))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v9)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v9
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v9))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v6)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v6)))
               (coe v1 v4 v6) (coe v1 v4 v6)
               (let v9
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v9
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
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
               du_helper_3562 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v6)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v6)
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))))
         (coe v2 v3 v5))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-comm
d_'8853''45'comm_3582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_3582 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'comm_3582 v2 v3 v4 v5 v6
du_'8853''45'comm_3582 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_3582 v0 v1 v2 v3 v4
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
               (coe v1 v4 v3) (coe v1 v4 v3)
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
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
               du_helper_3562 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  v3 v4)))
         (coe v2 v3 v4))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_3592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_3592 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'737''45''8853'_3592 v2 v3 v4 v5 v6
du_'172''45'distrib'737''45''8853'_3592 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_3592 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe v1 v3 v4))
      (coe
         v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v5)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v5)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                        (coe
                           v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                             (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    v4)))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
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
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                (coe v5)))))))
                              (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v5
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                             (coe v5))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       v4)))
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 v4)
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 v4)
                              (let v5
                                     = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                            (let v5
                                                   = coe
                                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                       (coe v0) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                  (coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                     (coe v5))))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                       (coe v5))
                                    (coe
                                       v1
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       v4)))
                              (coe
                                 v2 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 v4))
                           (coe
                              du_helper_3562 (coe v0)
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                                 (\ v5 v6 -> v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v5 v6 -> v6)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3) v4)
                              (let v5
                                     = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                       (coe v5))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    (coe v4) (coe du_'172''45'involutive_3508 (coe v0) (coe v4))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                                 (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                          (coe v0))))
                                 v4 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                        (let v5
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))
                              (coe
                                 du_deMorgan'8321'_3516 (coe v0) (coe v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)))))
                     (coe
                        du_deMorgan'8322'_3536 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe du_lem_3606 (coe v0) (coe v3) (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                        (coe du_lem_3606 (coe v0) (coe v4) (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))))
                     (\ v5 v6 -> v5)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v5 v6 -> v6)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))))
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                (coe v0)) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4)
                           (\ v6 v7 -> v6)
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                              (\ v6 v7 -> v6)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v6 v7 -> v7)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v6 v7 -> v7)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4)
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                              (\ v6 v7 -> v6)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v6 v7 -> v7)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)))
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v6))
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                                 (\ v7 v8 -> v7)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v7 v8 -> v8)
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 (coe v0))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
                                 (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                                    (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                             (coe v0))))
                                    v3 v4))))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'691''45''8744'_3122
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))
                     v3 v4))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
               (coe v0))
            (coe v1 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)))
            (coe v2 v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem
d_lem_3606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem_3606 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_lem_3606 v2 v7 v8
du_lem_3606 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem_3606 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (let v3
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v3
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v3))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
                  (coe
                     du_'8744''45'identity'737'_3448 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))
                        v1))))
            (let v3
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3120
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe v3))
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))))
         (let v3
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
               (coe v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe du_deMorgan'8321'_3516 (coe v0) (coe v1) (coe v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_3616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_3616 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'691''45''8853'_3616 v2 v3 v4 v5 v6
du_'172''45'distrib'691''45''8853'_3616 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_3616 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe v1 v3 v4))
      (coe
         v1 v3
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe v1 v4 v3))
         (coe
            v1 v3
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe v1 v4 v3))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
               v3)
            (coe
               v1 v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                  v3)
               (coe
                  v1 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
               (coe
                  v1 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v5))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe
                        v1 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))))
               (coe
                  du_'8853''45'comm_3582 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                  (coe v3)))
            (coe
               du_'172''45'distrib'737''45''8853'_3592 (coe v0) (coe v1) (coe v2)
               (coe v4) (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
               (coe v0))
            (coe v1 v3 v4) (coe v1 v4 v3)
            (coe
               du_'8853''45'comm_3582 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v4))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_3626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_3626 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'annihilates'45''172'_3626 v2 v3 v4 v5 v6
du_'8853''45'annihilates'45''172'_3626 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_3626 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe v1 v3 v4)
      (coe
         v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5))))))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe v1 v3 v4)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe v1 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                  v4))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                     v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v5
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v5))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))))
               (coe
                  du_'172''45'distrib'691''45''8853'_3616 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                  (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'172''45'cong_3160
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe v1 v3 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                  v4)
               (coe
                  du_'172''45'distrib'737''45''8853'_3592 (coe v0) (coe v1) (coe v2)
                  (coe v3) (coe v4))))
         (coe du_'172''45'involutive_3508 (coe v0) (coe v1 v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identityˡ
d_'8853''45'identity'737'_3632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'737'_3632 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'737'_3632 v2 v3 v4 v5
du_'8853''45'identity'737'_3632 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'737'_3632 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (coe
            v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v4)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
                  v3 v3
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v4))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe v3)))
                  (coe du_'8743''45'identity'691'_3436 (coe v0) (coe v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                        (coe v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                        (coe du_'8869''8777''8868'_3504 (coe v0))))))
            (coe
               du_helper_3562 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
               (coe du_'8744''45'identity'737'_3448 v0 v3)
               (coe du_'8743''45'zero'737'_3456 v0 v3)))
         (coe
            v2 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
            v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identityʳ
d_'8853''45'identity'691'_3636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'691'_3636 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'691'_3636 v2 v3 v4 v5
du_'8853''45'identity'691'_3636 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'691'_3636 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         du_'8853''45'comm_3582 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0)))))
         (coe
            v1 v3 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
         (coe
            v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)) v3)
         v3)
      (coe
         du_'8853''45'identity'737'_3632 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-identity
d_'8853''45'identity_3638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_3638 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'identity_3638 v2 v3 v4
du_'8853''45'identity_3638 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_3638 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'identity'737'_3632 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity'691'_3636 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_3640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_3640 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'737'_3640 v2 v3 v4 v5
du_'8853''45'inverse'737'_3640 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_3640 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe v1 v3 v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (coe v1 v3 v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v3)))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0))
                  v3))
            (coe
               du_helper_3562 (coe v0)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v3)
               (coe v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8744''45'idem_3228
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                        (coe v0)))
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3204
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                        (coe v0)))
                  (coe v3))))
         (coe v2 v3 v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_3644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_3644 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'691'_3644 v2 v3 v4 v5
du_'8853''45'inverse'691'_3644 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_3644 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
      (coe
         du_'8853''45'comm_3582 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0)))))
         (coe v1 v3 v3) (coe v1 v3 v3)
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
      (coe
         du_'8853''45'inverse'737'_3640 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-inverse
d_'8853''45'inverse_3646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_3646 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'inverse_3646 v2 v3 v4
du_'8853''45'inverse_3646 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_3646 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'inverse'737'_3640 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse'691'_3644 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_3648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_3648 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8743''45'distrib'737''45''8853'_3648 v2 v3 v4 v5 v6 v7
du_'8743''45'distrib'737''45''8853'_3648 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_3648 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v8)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
         (coe v1 v4 v5))
      (coe
         v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
            (coe v1 v4 v5))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
         (coe
            v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5)))
            (coe
               v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
               (coe
                  v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v6)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                  (coe
                     v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v6)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                     (coe
                        v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v6)))))))
                        (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v6
                                     = coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v6))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                        (coe
                           v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                             (coe v6)))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                       v5))))
                           (coe
                              v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                (coe v6)))))))
                              (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                             (coe v6))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                          v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                          v5))))
                              (coe
                                 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v5))
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
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                   (coe v6)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v4 v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v5))))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
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
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                      (coe v6)))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v5))))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v5))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
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
                                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                           (coe v0) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                      (coe
                                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                         (coe v6)))))))
                                       (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v6
                                                    = coe
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                      (coe v6))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v5))))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v5))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v5))
                                       (let v6
                                              = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                     (let v6
                                                            = coe
                                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                                (coe v0) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                           (coe
                                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
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
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v5))))
                                       (coe
                                          v2
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v5)))
                                    (let v6
                                           = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                               (coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                             (coe v6))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v5)))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708
                                                v0 v4 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v5))
                                          (let v7
                                                 = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3120
                                                (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                                   (coe v7))
                                                v3 v4 v5)))))
                                 (coe
                                    du_helper_3562 (coe v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v4 v5)))
                                    (coe du_lem'8321'_3662 (coe v0) (coe v3) (coe v4) (coe v5))))
                              (let v6
                                     = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                         (coe v0) in
                               coe
                                 (let v7
                                        = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                            (coe v6) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                          (coe v7))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v4 v5)))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v4 v5)))
                                       (coe
                                          du_deMorgan'8321'_3516 (coe v0) (coe v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v4 v5))))))
                           (let v6
                                  = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                    (coe v6))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                                    (\ v7 v8 -> v7)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                    (\ v7 v8 -> v8)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                                 (let v7
                                        = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                            (coe v0) in
                                  coe
                                    (let v8
                                           = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                               (coe v7) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                             (coe v8))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v4 v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v5))
                                          (coe
                                             du_deMorgan'8321'_3516 (coe v0) (coe v4)
                                             (coe v5))))))))
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'distrib'737''45''8744'_3120
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
                     (let v6
                            = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                (coe v0) in
                      coe
                        (let v7
                               = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                   (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v7))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4
                                       v5))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                              (coe du_lem'8323'_3664 (coe v0) (coe v3) (coe v4) (coe v5))))))
                  (coe
                     du_'8744''45'identity'737'_3448 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
               (let v6
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v6))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                     (coe du_deMorgan'8321'_3516 (coe v0) (coe v4) (coe v5)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))))
               v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
         (let v6
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v6))
               (coe v3) (coe v1 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5)))
               (coe v2 v4 v5))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_3660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3660 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_3660 v2 v5 v6 v7
du_lem'8322'_3660 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3660 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  v2 v1 v3))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v4))
                  (coe v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0))))
            v1 v2 v3))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_3662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3662 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_3662 v2 v5 v6 v7
du_lem'8321'_3662 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3662 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v1)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v4)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v4))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v1 v2
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                             (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v3))
                        (coe du_lem'8322'_3660 (coe v0) (coe v1) (coe v2) (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))))
               v1 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (let v5
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe v4) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v1)
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Properties.Lattice.du_'8743''45'idem_3204
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                           (coe v0)))
                     (coe v1))))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_3664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3664 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_3664 v2 v5 v6 v7
du_lem'8323'_3664 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3664 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
         (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
            (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                     v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v4)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                        v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                  (let v4
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (let v4
                                       = coe
                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                           (coe v0) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                         (coe v4))))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))))
                  (let v4
                         = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                             (coe v0) in
                   coe
                     (let v5
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                (coe v4) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                              v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                       (coe v0))))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                              v1)))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                  v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'complement'691'_3222
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))
                        v1)))))
         (coe
            du_'8743''45'zero'691'_3452 (coe v0)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_3666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_3666 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'691''45''8853'_3666 v2 v3 v4
du_'8743''45'distrib'691''45''8853'_3666 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_3666 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'distr'737''8658'distr'691'_506
      (let v3
             = coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (coe v1) (coe du_'8853''45'cong_3568 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe
         du_'8743''45'distrib'737''45''8853'_3648 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_3668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_3668 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'45''8853'_3668 v2 v3 v4
du_'8743''45'distrib'45''8853'_3668 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_3668 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8743''45'distrib'737''45''8853'_3648 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8743''45'distrib'691''45''8853'_3666 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.lemma₂
d_lemma'8322'_3678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8322'_3678 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_lemma'8322'_3678 v2 v5 v6 v7 v8
du_lemma'8322'_3678 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8322'_3678 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v3)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v4)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v4)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               v4))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v4)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v4)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v5)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                  v4))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v4)))
            (let v5
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v5
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                   (coe v5))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v5))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v3)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v4)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v4)))))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3118
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe v5))
                     v3 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v4)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v4)))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3118
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe v5))
                     v4 v1 v2))))
         (let v5
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3116
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe v5))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
               v3 v4)))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-assoc
d_'8853''45'assoc_3688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_3688 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8853''45'assoc_3688 v2 v3 v4 v5 v6 v7
du_'8853''45'assoc_3688 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_3688 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6)))))))
            (coe v1 v3 (coe v1 v4 v5))
            (coe
               v1 v3
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v6)))))))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v6)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                    v5))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v6)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    v4)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
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
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v6)))))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
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
                                               MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                               (coe v0) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                             (coe v6)))))))
                           (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                            (coe v0) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                          (coe v6))))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       v4)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))))
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
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                (coe v6)))))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
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
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                   (coe v6)))))))
                                 (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v6
                                              = coe
                                                  MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                  (coe v0) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                (coe v6))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708
                                                v0 v3 v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                   v0 v3 v4)))
                                          v5)))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
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
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                        (coe v0) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                      (coe v6)))))))
                                    (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v6
                                                 = coe
                                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                     (coe v0) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                   (coe v6))))))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)))
                                       v5)
                                    (coe v1 (coe v1 v3 v4) v5) (coe v1 (coe v1 v3 v4) v5)
                                    (let v6
                                           = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                  (let v6
                                                         = coe
                                                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                                             (coe v0) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                                        (coe
                                                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                                           (coe v6))))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                             (coe v6))
                                          (coe v1 (coe v1 v3 v4) v5)))
                                    (coe
                                       du_'8853''45'cong_3568 (coe v0) (coe v1) (coe v2)
                                       (coe v1 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)))
                                       (coe v5) (coe v5) (coe v2 v3 v4)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                                (coe
                                                   MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                                   (coe
                                                      MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                                      (coe v0)))))
                                          v5)))
                                 (coe
                                    v2
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                                 (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                             v3 v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710
                                                v0 v3 v4)))
                                       v5))
                                 (coe du_lem'8321'_3700 (coe v0) (coe v3) (coe v4) (coe v5))
                                 (coe du_lem'8322'_3704 (coe v0) (coe v3) (coe v4) (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                              (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                       v4)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
                        (let v6
                               = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                   (coe v0) in
                         coe
                           (let v7
                                  = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                      (coe v6) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                                    (coe v7))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v3)
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v4))
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v3)
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v4))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             v3
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v4))
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                                v3)
                                             v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                             v5))))
                                 (coe du_lem'8325'_3712 (coe v0) (coe v3) (coe v4) (coe v5))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3 v4)
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v3
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4
                                    v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v5)))
                     (coe du_lem'8323'_3706 (coe v0) (coe v3) (coe v4) (coe v5))
                     (coe du_lem'8324'_3710 (coe v0) (coe v3) (coe v4) (coe v5))))
               (coe
                  v2 v3
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5)))))
            (coe
               du_'8853''45'cong_3568 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3)
               (coe v1 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0)))))
                  v3)
               (coe v2 v4 v5))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_3700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_3700 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_3700 v2 v5 v6 v7
du_lem'8321'_3700 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_3700 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            v3))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
               v3)
            (let v4
                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                          (let v4
                                 = coe
                                     MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                     (coe v0) in
                           coe
                             (coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                   (coe v4))))) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe v4))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                     v3)))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v4))
                  (coe v3)
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
                     (\ v5 v6 -> v5)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v5 v6 -> v6)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                  (let v5
                         = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                             (coe v0) in
                   coe
                     (let v6
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v6))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           (coe du_deMorgan'8321'_3516 (coe v0) (coe v1) (coe v2))))))))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3118
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe v4))
               v3
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂′
d_lem'8322''8242'_3702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322''8242'_3702 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 ~v7
  = du_lem'8322''8242'_3702 v2 v5 v6
du_lem'8322''8242'_3702 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322''8242'_3702 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v3)))))))
                     (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                            (coe v3))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
                                       v2))))))
                     (coe
                        du_deMorgan'8321'_3516 (coe v0)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)
                     (coe du_deMorgan'8322'_3536 (coe v0) (coe v1) (coe v2))
                     (coe
                        du_'172''45'involutive_3508 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
               (coe
                  du_lemma'8322'_3678 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                  (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                  (\ v3 v4 -> v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v3 v4 -> v4)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                  (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3216
                     (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                        (coe v0))
                     v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
               (let v3
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3216
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))
                        v2)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
            (coe
               du_'8743''45'identity'737'_3440 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
            (coe
               du_'8743''45'identity'691'_3436 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_3704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_3704 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_3704 v2 v5 v6 v7
du_lem'8322'_3704 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_3704 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                     v3))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                           v3))))
               (coe
                  du_deMorgan'8321'_3516 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                  (coe v3)))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'691'_3050
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
                     (coe du_lem'8322''8242'_3702 (coe v0) (coe v1) (coe v2))))))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'691''45''8743'_3118
               (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe v4))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_3706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_3706 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_3706 v2 v5 v6 v7
du_lem'8323'_3706 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_3706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v1 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     v1 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3116
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                     (coe v4))
                  v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))))
         (let v4
                = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0)) in
          coe
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v4))
               (coe v1)
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                  (\ v5 v6 -> v5)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v5 v6 -> v6)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe
                             MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe du_deMorgan'8321'_3516 (coe v0) (coe v2) (coe v3)))))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₄′
d_lem'8324''8242'_3708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324''8242'_3708 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7
  = du_lem'8324''8242'_3708 v2 v6 v7
du_lem'8324''8242'_3708 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324''8242'_3708 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v5)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v3)))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v3
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                            (coe v3))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                                 v2))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe
                           du_'8743''45'identity'737'_3440 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                        (coe
                           du_'8743''45'identity'691'_3436 (coe v0)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              v2))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3216
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))
                           v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'comm_3008
                           (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                    (coe v0))))
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v3 v4 -> v4)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))))
                     (let v3
                            = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                   (coe v0)) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'737'_3038
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'complement'737'_3216
                              (MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))
                              v2)))))
               (coe
                  du_lemma'8322'_3678 (coe v0)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                  (coe v1) (coe v2)))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
               (coe du_deMorgan'8322'_3536 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'cong_3012
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
               (coe
                  du_'172''45'involutive_3508 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
         (coe
            du_deMorgan'8321'_3516 (coe v0)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₄
d_lem'8324'_3710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324'_3710 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8324'_3710 v2 v5 v6 v7
du_lem'8324'_3710 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324'_3710 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                      (coe v0) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                    (coe v4)))))))
                  (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
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
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                         (coe v0) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                    (coe
                                       MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                       (coe v4)))))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                (coe
                                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                   (let v4
                                          = coe
                                              MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                              (coe v0) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                         (coe
                                            MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                            (coe v4))))) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                              (coe v4))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                    (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                                    v2)
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           v3)))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__240
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3)))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'assoc_3010
                        (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                                 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'distrib'737''45''8743'_3116
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe v4))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2)
                        v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                       (coe v0) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                          (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.du_'8744''45'cong'737'_3046
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v5))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2) v3))
                     (coe du_lem'8324''8242'_3708 (coe v0) (coe v2) (coe v3))))))
         (coe
            du_deMorgan'8321'_3516 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v2 v3)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing._.lem₅
d_lem'8325'_3712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8325'_3712 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8325'_3712 v2 v5 v6 v7
du_lem'8325'_3712 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8325'_3712 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
            v3)
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
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
                             MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
         (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4))))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
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
                                MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
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
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                             (let v4
                                    = coe
                                        MAlonzo.Code.Algebra.Lattice.Bundles.du_distributiveLattice_790
                                        (coe v0) in
                              coe
                                (coe
                                   MAlonzo.Code.Algebra.Lattice.Bundles.du_setoid_574
                                   (coe
                                      MAlonzo.Code.Algebra.Lattice.Bundles.du_lattice_664
                                      (coe v4))))) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                              (coe
                                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))))
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
                  (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.du_'8743''45'cong'691'_3042
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070 (coe v4))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
                     (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                           (coe
                              MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                        (coe
                           MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                           (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
                        v3)))))
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
            (MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
               (coe
                  MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                  (coe
                     MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                     (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1)
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0
                  (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0 v3))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-isMagma
d_'8853''45'isMagma_3714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8853''45'isMagma_3714 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isMagma_3714 v2 v3 v4
du_'8853''45'isMagma_3714 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8853''45'isMagma_3714 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_1867
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe du_'8853''45'cong_3568 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_3716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8853''45'isSemigroup_3716 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isSemigroup_3716 v2 v3 v4
du_'8853''45'isSemigroup_3716 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8853''45'isSemigroup_3716 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_10417
      (coe du_'8853''45'isMagma_3714 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'assoc_3688 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_3718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8853''45''8869''45'isMonoid_3718 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isMonoid_3718 v2 v3 v4
du_'8853''45''8869''45'isMonoid_3718 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8853''45''8869''45'isMonoid_3718 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_15873
      (coe du_'8853''45'isSemigroup_3716 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity_3638 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_3720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_'8853''45''8869''45'isGroup_3720 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isGroup_3720 v2 v3 v4
du_'8853''45''8869''45'isGroup_3720 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_'8853''45''8869''45'isGroup_3720 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_26963
      (coe
         du_'8853''45''8869''45'isMonoid_3718 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse_3646 (coe v0) (coe v1) (coe v2))
      (coe (\ v3 v4 v5 -> v5))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_3722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'8853''45''8869''45'isAbelianGroup_3722 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isAbelianGroup_3722 v2 v3 v4
du_'8853''45''8869''45'isAbelianGroup_3722 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
du_'8853''45''8869''45'isAbelianGroup_3722 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_32441
      (coe
         du_'8853''45''8869''45'isGroup_3720 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'comm_3582 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_3724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_'8853''45''8743''45'isRing_3724 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isRing_3724 v2 v3 v4
du_'8853''45''8743''45'isRing_3724 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
du_'8853''45''8743''45'isRing_3724 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_96683
      (coe
         du_'8853''45''8869''45'isAbelianGroup_3722 (coe v0) (coe v1)
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'cong_3018
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'assoc_3016
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
      (coe du_'8743''45'identity_3442 (coe v0))
      (coe
         du_'8743''45'distrib'45''8853'_3668 (coe v0) (coe v1) (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_3726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818
d_'8853''45''8743''45'isCommutativeRing_3726 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isCommutativeRing_3726 v2 v3 v4
du_'8853''45''8743''45'isCommutativeRing_3726 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818
du_'8853''45''8743''45'isCommutativeRing_3726 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_102595
      (coe du_'8853''45''8743''45'isRing_3724 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'comm_3014
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
               (coe
                  MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                  (coe v0)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_3728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
d_'8853''45''8743''45'commutativeRing_3728 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'commutativeRing_3728 v2 v3 v4
du_'8853''45''8743''45'commutativeRing_3728 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
du_'8853''45''8743''45'commutativeRing_3728 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_73489
      v1 (MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 (coe v0))
      (\ v3 -> v3)
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8869'_716 (coe v0))
      (MAlonzo.Code.Algebra.Lattice.Bundles.d_'8868'_714 (coe v0))
      (coe
         du_'8853''45''8743''45'isCommutativeRing_3726 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Lattice.Properties.BooleanAlgebra._⊕_
d__'8853'__3730 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__3730 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
      (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
         (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_3742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_3742 ~v0 ~v1 v2
  = du_'172''45'distrib'691''45''8853'_3742 v2
du_'172''45'distrib'691''45''8853'_3742 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_3742 v0
  = coe
      du_'172''45'distrib'691''45''8853'_3616 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_3744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_3744 ~v0 ~v1 v2
  = du_'172''45'distrib'737''45''8853'_3744 v2
du_'172''45'distrib'737''45''8853'_3744 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_3744 v0
  = coe
      du_'172''45'distrib'737''45''8853'_3592 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_3746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_3746 ~v0 ~v1 v2
  = du_'8743''45'distrib'45''8853'_3746 v2
du_'8743''45'distrib'45''8853'_3746 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_3746 v0
  = coe
      du_'8743''45'distrib'45''8853'_3668 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_3748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_3748 ~v0 ~v1 v2
  = du_'8743''45'distrib'691''45''8853'_3748 v2
du_'8743''45'distrib'691''45''8853'_3748 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_3748 v0
  = coe
      du_'8743''45'distrib'691''45''8853'_3666 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_3750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_3750 ~v0 ~v1 v2
  = du_'8743''45'distrib'737''45''8853'_3750 v2
du_'8743''45'distrib'737''45''8853'_3750 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_3750 v0
  = coe
      du_'8743''45'distrib'737''45''8853'_3648 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_3752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_3752 ~v0 ~v1 v2
  = du_'8853''45'annihilates'45''172'_3752 v2
du_'8853''45'annihilates'45''172'_3752 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_3752 v0
  = coe
      du_'8853''45'annihilates'45''172'_3626 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc
d_'8853''45'assoc_3754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_3754 ~v0 ~v1 v2 = du_'8853''45'assoc_3754 v2
du_'8853''45'assoc_3754 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_3754 v0
  = coe
      du_'8853''45'assoc_3688 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm
d_'8853''45'comm_3756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_3756 ~v0 ~v1 v2 = du_'8853''45'comm_3756 v2
du_'8853''45'comm_3756 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_3756 v0
  = coe
      du_'8853''45'comm_3582 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong
d_'8853''45'cong_3758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_3758 ~v0 ~v1 v2 = du_'8853''45'cong_3758 v2
du_'8853''45'cong_3758 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_3758 v0
  = coe
      du_'8853''45'cong_3568 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity
d_'8853''45'identity_3760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_3760 ~v0 ~v1 v2
  = du_'8853''45'identity_3760 v2
du_'8853''45'identity_3760 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_3760 v0
  = coe
      du_'8853''45'identity_3638 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ
d_'8853''45'identity'691'_3762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'691'_3762 ~v0 ~v1 v2
  = du_'8853''45'identity'691'_3762 v2
du_'8853''45'identity'691'_3762 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'691'_3762 v0
  = coe
      du_'8853''45'identity'691'_3636 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ
d_'8853''45'identity'737'_3764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'737'_3764 ~v0 ~v1 v2
  = du_'8853''45'identity'737'_3764 v2
du_'8853''45'identity'737'_3764 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'737'_3764 v0
  = coe
      du_'8853''45'identity'737'_3632 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse
d_'8853''45'inverse_3766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_3766 ~v0 ~v1 v2 = du_'8853''45'inverse_3766 v2
du_'8853''45'inverse_3766 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_3766 v0
  = coe
      du_'8853''45'inverse_3646 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_3768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_3768 ~v0 ~v1 v2
  = du_'8853''45'inverse'691'_3768 v2
du_'8853''45'inverse'691'_3768 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_3768 v0
  = coe
      du_'8853''45'inverse'691'_3644 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_3770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_3770 ~v0 ~v1 v2
  = du_'8853''45'inverse'737'_3770 v2
du_'8853''45'inverse'737'_3770 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_3770 v0
  = coe
      du_'8853''45'inverse'737'_3640 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma
d_'8853''45'isMagma_3772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8853''45'isMagma_3772 ~v0 ~v1 v2 = du_'8853''45'isMagma_3772 v2
du_'8853''45'isMagma_3772 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
du_'8853''45'isMagma_3772 v0
  = coe
      du_'8853''45'isMagma_3714 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_3774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8853''45'isSemigroup_3774 ~v0 ~v1 v2
  = du_'8853''45'isSemigroup_3774 v2
du_'8853''45'isSemigroup_3774 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
du_'8853''45'isSemigroup_3774 v0
  = coe
      du_'8853''45'isSemigroup_3716 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_3776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
d_'8853''45''8743''45'commutativeRing_3776 ~v0 ~v1 v2
  = du_'8853''45''8743''45'commutativeRing_3776 v2
du_'8853''45''8743''45'commutativeRing_3776 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4054
du_'8853''45''8743''45'commutativeRing_3776 v0
  = coe
      du_'8853''45''8743''45'commutativeRing_3728 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_3778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818
d_'8853''45''8743''45'isCommutativeRing_3778 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isCommutativeRing_3778 v2
du_'8853''45''8743''45'isCommutativeRing_3778 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2818
du_'8853''45''8743''45'isCommutativeRing_3778 v0
  = coe
      du_'8853''45''8743''45'isCommutativeRing_3726 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_3780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
d_'8853''45''8743''45'isRing_3780 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isRing_3780 v2
du_'8853''45''8743''45'isRing_3780 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2672
du_'8853''45''8743''45'isRing_3780 v0
  = coe
      du_'8853''45''8743''45'isRing_3724 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_3782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'8853''45''8869''45'isAbelianGroup_3782 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isAbelianGroup_3782 v2
du_'8853''45''8869''45'isAbelianGroup_3782 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
du_'8853''45''8869''45'isAbelianGroup_3782 v0
  = coe
      du_'8853''45''8869''45'isAbelianGroup_3722 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_3784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_'8853''45''8869''45'isGroup_3784 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isGroup_3784 v2
du_'8853''45''8869''45'isGroup_3784 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
du_'8853''45''8869''45'isGroup_3784 v0
  = coe
      du_'8853''45''8869''45'isGroup_3720 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
-- Algebra.Lattice.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_3786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'8853''45''8869''45'isMonoid_3786 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isMonoid_3786 v2
du_'8853''45''8869''45'isMonoid_3786 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_682 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
du_'8853''45''8869''45'isMonoid_3786 v0
  = coe
      du_'8853''45''8869''45'isMonoid_3718 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
              (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_3006
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_3070
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_3154
                       (coe
                          MAlonzo.Code.Algebra.Lattice.Bundles.d_isBooleanAlgebra_718
                          (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0
                 (coe MAlonzo.Code.Algebra.Lattice.Bundles.d__'8744'__708 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Lattice.Bundles.d_'172'__712 v0
                    (coe
                       MAlonzo.Code.Algebra.Lattice.Bundles.d__'8743'__710 v0 v1 v2)))))
