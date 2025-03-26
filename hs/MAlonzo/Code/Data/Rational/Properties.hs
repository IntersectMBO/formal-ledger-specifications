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

module MAlonzo.Code.Data.Rational.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Apartness.Bundles
import qualified MAlonzo.Code.Algebra.Apartness.Structures
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Morphism.GroupMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.RingMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Coprimality
import qualified MAlonzo.Code.Data.Integer.GCD
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Divisibility
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.GCD
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Base
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Properties
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Properties.DecSetoid
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Rational.Properties._._DistributesOver_
d__DistributesOver__10 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d__DistributesOver__10 = erased
-- Data.Rational.Properties._._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d__DistributesOver'691'__12 = erased
-- Data.Rational.Properties._._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d__DistributesOver'737'__14 = erased
-- Data.Rational.Properties._.Associative
d_Associative_30 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_Associative_30 = erased
-- Data.Rational.Properties._.Commutative
d_Commutative_34 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_Commutative_34 = erased
-- Data.Rational.Properties._.Congruent₁
d_Congruent'8321'_36 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_Congruent'8321'_36 = erased
-- Data.Rational.Properties._.Identity
d_Identity_50 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_Identity_50 = erased
-- Data.Rational.Properties._.Inverse
d_Inverse_54 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_Inverse_54 = erased
-- Data.Rational.Properties._.Invertible
d_Invertible_56 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> ()
d_Invertible_56 = erased
-- Data.Rational.Properties._.LeftIdentity
d_LeftIdentity_76 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_LeftIdentity_76 = erased
-- Data.Rational.Properties._.LeftInverse
d_LeftInverse_78 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_LeftInverse_78 = erased
-- Data.Rational.Properties._.LeftZero
d_LeftZero_84 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_LeftZero_84 = erased
-- Data.Rational.Properties._.RightIdentity
d_RightIdentity_106 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_RightIdentity_106 = erased
-- Data.Rational.Properties._.RightInverse
d_RightInverse_108 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_RightInverse_108 = erased
-- Data.Rational.Properties._.RightZero
d_RightZero_114 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_RightZero_114 = erased
-- Data.Rational.Properties._.Zero
d_Zero_134 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  ()
d_Zero_134 = erased
-- Data.Rational.Properties._.IsAbelianGroup
d_IsAbelianGroup_138 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_150 a0 a1 = ()
-- Data.Rational.Properties._.IsCommutativeRing
d_IsCommutativeRing_152 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsGroup
d_IsGroup_162 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsMagma
d_IsMagma_182 a0 = ()
-- Data.Rational.Properties._.IsMonoid
d_IsMonoid_188 a0 a1 = ()
-- Data.Rational.Properties._.IsRing
d_IsRing_204 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsSemigroup
d_IsSemigroup_210 a0 = ()
-- Data.Rational.Properties._.IsAbelianGroup.comm
d_comm_230 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_230 = erased
-- Data.Rational.Properties._.IsAbelianGroup.isGroup
d_isGroup_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_isGroup_252 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_1144 (coe v0)
-- Data.Rational.Properties._.IsCommutativeMonoid.comm
d_comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_520 = erased
-- Data.Rational.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_536 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_536 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Data.Rational.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_566 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2796 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_566 = erased
-- Data.Rational.Properties._.IsCommutativeRing.isRing
d_isRing_654 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2796 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650
d_isRing_654 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2812 (coe v0)
-- Data.Rational.Properties._.IsGroup.inverse
d_inverse_918 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_918 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_1052 (coe v0)
-- Data.Rational.Properties._.IsGroup.isMonoid
d_isMonoid_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_932 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_1050 (coe v0)
-- Data.Rational.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_954 = erased
-- Data.Rational.Properties._.IsMagma.isEquivalence
d_isEquivalence_1482 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1482 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Data.Rational.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1496 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1496 = erased
-- Data.Rational.Properties._.IsMonoid.identity
d_identity_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1592 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Data.Rational.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1604 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Data.Rational.Properties._.IsRing.*-assoc
d_'42''45'assoc_2110 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2110 = erased
-- Data.Rational.Properties._.IsRing.*-cong
d_'42''45'cong_2112 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2112 = erased
-- Data.Rational.Properties._.IsRing.*-identity
d_'42''45'identity_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2678 (coe v0)
-- Data.Rational.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2146 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'isAbelianGroup_2146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2672
      (coe v0)
-- Data.Rational.Properties._.IsRing.distrib
d_distrib_2176 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2176 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2680 (coe v0)
-- Data.Rational.Properties._.IsSemigroup.assoc
d_assoc_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2336 = erased
-- Data.Rational.Properties._.IsSemigroup.isMagma
d_isMagma_2340 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2340 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Data.Rational.Properties.mkℚ-cong
d_mkℚ'45'cong_2668 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mkℚ'45'cong_2668 = erased
-- Data.Rational.Properties.mkℚ-injective
d_mkℚ'45'injective_2682 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkℚ'45'injective_2682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_mkℚ'45'injective_2682
du_mkℚ'45'injective_2682 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkℚ'45'injective_2682
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties._≟_
d__'8799'__2684 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2684 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe MAlonzo.Code.Data.Product.Base.du_uncurry_244 erased)
                    (\ v8 -> coe du_mkℚ'45'injective_2682)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                       (coe
                          MAlonzo.Code.Data.Integer.Properties.d__'8799'__2692 (coe v2)
                          (coe v5))
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v3)
                          (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≡-setoid
d_'8801''45'setoid_2694 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2694
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Rational.Properties.≡-decSetoid
d_'8801''45'decSetoid_2696 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2696
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2684)
-- Data.Rational.Properties.1≢0
d_1'8802'0_2698 ::
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'8802'0_2698 = erased
-- Data.Rational.Properties.mkℚ+-cong
d_mkℚ'43''45'cong_2716 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mkℚ'43''45'cong_2716 = erased
-- Data.Rational.Properties.mkℚ+-injective
d_mkℚ'43''45'injective_2734 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkℚ'43''45'injective_2734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_mkℚ'43''45'injective_2734
du_mkℚ'43''45'injective_2734 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkℚ'43''45'injective_2734
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.↥-mkℚ+
d_'8613''45'mkℚ'43'_2744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'mkℚ'43'_2744 = erased
-- Data.Rational.Properties.↧-mkℚ+
d_'8615''45'mkℚ'43'_2758 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'mkℚ'43'_2758 = erased
-- Data.Rational.Properties.mkℚ+-nonNeg
d_mkℚ'43''45'nonNeg_2772 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_mkℚ'43''45'nonNeg_2772 ~v0 ~v1 ~v2 ~v3
  = du_mkℚ'43''45'nonNeg_2772
du_mkℚ'43''45'nonNeg_2772 ::
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_mkℚ'43''45'nonNeg_2772
  = coe
      MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1457
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Rational.Properties.mkℚ+-pos
d_mkℚ'43''45'pos_2788 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_mkℚ'43''45'pos_2788 ~v0 ~v1 ~v2 ~v3 ~v4 = du_mkℚ'43''45'pos_2788
du_mkℚ'43''45'pos_2788 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_mkℚ'43''45'pos_2788
  = coe
      MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1399
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Rational.Properties.drop-*≡*
d_drop'45''42''8801''42'_2794 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''42''8801''42'_2794 = erased
-- Data.Rational.Properties.≡⇒≃
d_'8801''8658''8771'_2798 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
d_'8801''8658''8771'_2798 ~v0 ~v1 ~v2 = du_'8801''8658''8771'_2798
du_'8801''8658''8771'_2798 ::
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
du_'8801''8658''8771'_2798
  = coe MAlonzo.Code.Data.Rational.Base.C_'42''8801''42'_46
-- Data.Rational.Properties.≃⇒≡
d_'8771''8658''8801'_2800 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8771''8658''8801'_2800 = erased
-- Data.Rational.Properties._.1+d₂∣1+d₁
d_1'43'd'8322''8739'1'43'd'8321'_2822 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_1'43'd'8322''8739'1'43'd'8321'_2822 v0 v1 ~v2 v3 v4 ~v5 ~v6
  = du_1'43'd'8322''8739'1'43'd'8321'_2822 v0 v1 v3 v4
du_1'43'd'8322''8739'1'43'd'8321'_2822 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_1'43'd'8322''8739'1'43'd'8321'_2822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Coprimality.du_coprime'45'divisor_22
      (coe addInt (coe (1 :: Integer)) (coe v3)) (coe v2)
      (coe addInt (coe (1 :: Integer)) (coe v1))
      (coe
         MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_34
         (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
-- Data.Rational.Properties._.helper
d_helper_2824 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_2824 = erased
-- Data.Rational.Properties.≃-sym
d_'8771''45'sym_2834 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
d_'8771''45'sym_2834 ~v0 ~v1 = du_'8771''45'sym_2834
du_'8771''45'sym_2834 ::
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
du_'8771''45'sym_2834
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (\ v0 -> coe du_'8801''8658''8771'_2798)
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216 erased erased)
-- Data.Rational.Properties.↥p≡0⇒p≡0
d_'8613'p'8801'0'8658'p'8801'0_2838 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'8801'0'8658'p'8801'0_2838 = erased
-- Data.Rational.Properties._.d-1≡0
d_d'45'1'8801'0_2850 ::
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_d'45'1'8801'0_2850 = erased
-- Data.Rational.Properties.p≡0⇒↥p≡0
d_p'8801'0'8658''8613'p'8801'0_2854 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8801'0'8658''8613'p'8801'0_2854 = erased
-- Data.Rational.Properties.↥p≡↥q≡0⇒p≡q
d_'8613'p'8801''8613'q'8801'0'8658'p'8801'q_2862 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'8801''8613'q'8801'0'8658'p'8801'q_2862 = erased
-- Data.Rational.Properties.nonNeg≢neg
d_nonNeg'8802'neg_2876 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonNeg'8802'neg_2876 = erased
-- Data.Rational.Properties.pos⇒nonNeg
d_pos'8658'nonNeg_2880 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_pos'8658'nonNeg_2880 v0 ~v1 = du_pos'8658'nonNeg_2880 v0
du_pos'8658'nonNeg_2880 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_pos'8658'nonNeg_2880 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_pos'8658'nonNeg_914
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
-- Data.Rational.Properties.neg⇒nonPos
d_neg'8658'nonPos_2886 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
d_neg'8658'nonPos_2886 v0 ~v1 = du_neg'8658'nonPos_2886 v0
du_neg'8658'nonPos_2886 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
du_neg'8658'nonPos_2886 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_neg'8658'nonPos_920
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
-- Data.Rational.Properties.nonNeg∧nonZero⇒pos
d_nonNeg'8743'nonZero'8658'pos_2892 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_nonNeg'8743'nonZero'8658'pos_2892 v0 ~v1 ~v2
  = du_nonNeg'8743'nonZero'8658'pos_2892 v0
du_nonNeg'8743'nonZero'8658'pos_2892 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_nonNeg'8743'nonZero'8658'pos_2892 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1399
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.pos⇒nonZero
d_pos'8658'nonZero_2896 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_pos'8658'nonZero_2896 v0 ~v1 = du_pos'8658'nonZero_2896 v0
du_pos'8658'nonZero_2896 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_pos'8658'nonZero_2896 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.neg⇒nonZero
d_neg'8658'nonZero_2900 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_neg'8658'nonZero_2900 v0 ~v1 = du_neg'8658'nonZero_2900 v0
du_neg'8658'nonZero_2900 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_neg'8658'nonZero_2900 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.↥-neg
d_'8613''45'neg_2904 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'neg_2904 = erased
-- Data.Rational.Properties.↧-neg
d_'8615''45'neg_2908 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'neg_2908 = erased
-- Data.Rational.Properties.neg-injective
d_neg'45'injective_2910 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'injective_2910 = erased
-- Data.Rational.Properties.neg-pos
d_neg'45'pos_2932 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_neg'45'pos_2932 v0 ~v1 = du_neg'45'pos_2932 v0
du_neg'45'pos_2932 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_neg'45'pos_2932 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1573
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.normalize-coprime
d_normalize'45'coprime_2940 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'coprime_2940 = erased
-- Data.Rational.Properties._.d
d_d_2952 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer
d_d_2952 ~v0 v1 ~v2 = du_d_2952 v1
du_d_2952 :: Integer -> Integer
du_d_2952 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Data.Rational.Properties._.g
d_g_2954 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer
d_g_2954 v0 v1 ~v2 = du_g_2954 v0 v1
du_g_2954 :: Integer -> Integer -> Integer
du_g_2954 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0)
      (coe du_d_2952 (coe v1))
-- Data.Rational.Properties._.c′
d_c'8242'_2956 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'8242'_2956 = erased
-- Data.Rational.Properties._.c₂
d_c'8322'_2958 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'8322'_2958 = erased
-- Data.Rational.Properties._.g≡1
d_g'8801'1_2960 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_g'8801'1_2960 = erased
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2962 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_2962 v0 v1 ~v2 = du_g'8802'0_2962 v0 v1
du_g'8802'0_2962 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_2962 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe
         MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0)
         (coe du_d_2952 (coe v1)))
-- Data.Rational.Properties.↥-normalize
d_'8613''45'normalize_2976 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'normalize_2976 = erased
-- Data.Rational.Properties._.g
d_g_2986 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_2986 v0 v1 ~v2 = du_g_2986 v0 v1
du_g_2986 :: Integer -> Integer -> Integer
du_g_2986 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2988 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_2988 v0 v1 ~v2 = du_g'8802'0_2988 v0 v1
du_g'8802'0_2988 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_2988 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties._.i/g
d_i'47'g_2992 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_i'47'g_2992 v0 v1 ~v2 = du_i'47'g_2992 v0 v1
du_i'47'g_2992 :: Integer -> Integer -> Integer
du_i'47'g_2992 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v0)
      (coe du_g_2986 (coe v0) (coe v1))
-- Data.Rational.Properties.↧-normalize
d_'8615''45'normalize_3004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'normalize_3004 = erased
-- Data.Rational.Properties._.g
d_g_3014 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3014 v0 v1 ~v2 = du_g_3014 v0 v1
du_g_3014 :: Integer -> Integer -> Integer
du_g_3014 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-cong
d_normalize'45'cong_3036 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'cong_3036 = erased
-- Data.Rational.Properties._.g
d_g_3046 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3046 v0 v1 ~v2 ~v3 = du_g_3046 v0 v1
du_g_3046 :: Integer -> Integer -> Integer
du_g_3046 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-nonNeg
d_normalize'45'nonNeg_3058 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_normalize'45'nonNeg_3058 ~v0 ~v1 ~v2
  = du_normalize'45'nonNeg_3058
du_normalize'45'nonNeg_3058 ::
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_normalize'45'nonNeg_3058 = coe du_mkℚ'43''45'nonNeg_2772
-- Data.Rational.Properties._.g
d_g_3068 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3068 v0 v1 ~v2 = du_g_3068 v0 v1
du_g_3068 :: Integer -> Integer -> Integer
du_g_3068 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-pos
d_normalize'45'pos_3082 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_normalize'45'pos_3082 ~v0 ~v1 ~v2 ~v3 = du_normalize'45'pos_3082
du_normalize'45'pos_3082 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_normalize'45'pos_3082 = coe du_mkℚ'43''45'pos_2788
-- Data.Rational.Properties._.g≢0
d_g'8802'0_3094 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_3094 v0 v1 ~v2 ~v3 = du_g'8802'0_3094 v0 v1
du_g'8802'0_3094 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_3094 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties.normalize-injective-≃
d_normalize'45'injective'45''8771'_3112 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'injective'45''8771'_3112 = erased
-- Data.Rational.Properties._.gcd[m,c]
d_gcd'91'm'44'c'93'_3128 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_gcd'91'm'44'c'93'_3128 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93'_3128 v0 v2
du_gcd'91'm'44'c'93'_3128 :: Integer -> Integer -> Integer
du_gcd'91'm'44'c'93'_3128 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.gcd[n,d]
d_gcd'91'n'44'd'93'_3130 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_gcd'91'n'44'd'93'_3130 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93'_3130 v1 v3
du_gcd'91'n'44'd'93'_3130 :: Integer -> Integer -> Integer
du_gcd'91'n'44'd'93'_3130 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.gcd[m,c]∣m
d_gcd'91'm'44'c'93''8739'm_3132 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'c'93''8739'm_3132 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8739'm_3132 v0 v2
du_gcd'91'm'44'c'93''8739'm_3132 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'91'm'44'c'93''8739'm_3132 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[m,c]∣c
d_gcd'91'm'44'c'93''8739'c_3134 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'c'93''8739'c_3134 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8739'c_3134 v0 v2
du_gcd'91'm'44'c'93''8739'c_3134 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'91'm'44'c'93''8739'c_3134 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[n,d]∣n
d_gcd'91'n'44'd'93''8739'n_3136 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'n'44'd'93''8739'n_3136 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8739'n_3136 v1 v3
du_gcd'91'n'44'd'93''8739'n_3136 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'91'n'44'd'93''8739'n_3136 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[n,d]∣d
d_gcd'91'n'44'd'93''8739'd_3138 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'n'44'd'93''8739'd_3138 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8739'd_3138 v1 v3
du_gcd'91'n'44'd'93''8739'd_3138 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'91'n'44'd'93''8739'd_3138 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.md∣gcd[m,c]gcd[n,d]
d_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3140 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3140 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3140 v0 v1 v2 v3
du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3140 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3140 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'pres'45''8739'_410
      (coe du_gcd'91'm'44'c'93''8739'm_3132 (coe v0) (coe v2))
      (coe du_gcd'91'n'44'd'93''8739'd_3138 (coe v1) (coe v3))
-- Data.Rational.Properties._.nc∣gcd[n,d]gcd[m,c]
d_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3142 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3142 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3142 v0 v1 v2 v3
du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3142 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3142 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'pres'45''8739'_410
      (coe du_gcd'91'n'44'd'93''8739'n_3136 (coe v1) (coe v3))
      (coe du_gcd'91'm'44'c'93''8739'c_3134 (coe v0) (coe v2))
-- Data.Rational.Properties._.nc∣gcd[m,c]gcd[n,d]
d_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3144 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3144 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3144 v0 v1 v2 v3
du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3144 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3144 v0 v1 v2 v3
  = coe
      du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3142 (coe v0)
      (coe v1) (coe v2) (coe v3)
-- Data.Rational.Properties._.gcd[m,c]≢0′
d_gcd'91'm'44'c'93''8802'0'8242'_3148 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'm'44'c'93''8802'0'8242'_3148 = erased
-- Data.Rational.Properties._.gcd[n,d]≢0′
d_gcd'91'n'44'd'93''8802'0'8242'_3150 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'n'44'd'93''8802'0'8242'_3150 = erased
-- Data.Rational.Properties._.gcd[m,c]≢0
d_gcd'91'm'44'c'93''8802'0_3152 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_gcd'91'm'44'c'93''8802'0_3152 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8802'0_3152 v0 v2
du_gcd'91'm'44'c'93''8802'0_3152 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_gcd'91'm'44'c'93''8802'0_3152 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties._.gcd[n,d]≢0
d_gcd'91'n'44'd'93''8802'0_3154 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_gcd'91'n'44'd'93''8802'0_3154 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8802'0_3154 v1 v3
du_gcd'91'n'44'd'93''8802'0_3154 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_gcd'91'n'44'd'93''8802'0_3154 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties._.div
d_div_3164 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_div_3164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_div_3164
du_div_3164 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_div_3164 = coe du_mkℚ'43''45'injective_2734
-- Data.Rational.Properties._.m/gcd[m,c]≡n/gcd[n,d]
d_m'47'gcd'91'm'44'c'93''8801'n'47'gcd'91'n'44'd'93'_3166 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'gcd'91'm'44'c'93''8801'n'47'gcd'91'n'44'd'93'_3166 = erased
-- Data.Rational.Properties._.c/gcd[m,c]≡d/gcd[n,d]
d_c'47'gcd'91'm'44'c'93''8801'd'47'gcd'91'n'44'd'93'_3168 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'47'gcd'91'm'44'c'93''8801'd'47'gcd'91'n'44'd'93'_3168 = erased
-- Data.Rational.Properties.↥-/
d_'8613''45''47'_3176 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''47'_3176 = erased
-- Data.Rational.Properties._.g
d_g_3190 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3190 v0 v1 ~v2 = du_g_3190 v0 v1
du_g_3190 :: Integer -> Integer -> Integer
du_g_3190 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties._.norm
d_norm_3192 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_norm_3192 v0 v1 ~v2 = du_norm_3192 v0 v1
du_norm_3192 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_norm_3192 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Base.du_normalize_136
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties.↧-/
d_'8615''45''47'_3202 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''47'_3202 = erased
-- Data.Rational.Properties._.g
d_g_3216 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3216 v0 v1 ~v2 = du_g_3216 v0 v1
du_g_3216 :: Integer -> Integer -> Integer
du_g_3216 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties._.norm
d_norm_3218 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_norm_3218 v0 v1 ~v2 = du_norm_3218 v0 v1
du_norm_3218 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_norm_3218 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Base.du_normalize_136
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties.↥p/↧p≡p
d_'8613'p'47''8615'p'8801'p_3224 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'47''8615'p'8801'p_3224 = erased
-- Data.Rational.Properties.0/n≡0
d_0'47'n'8801'0_3242 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'47'n'8801'0_3242 = erased
-- Data.Rational.Properties._.0-cop-1
d_0'45'cop'45'1_3254 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'45'cop'45'1_3254 = erased
-- Data.Rational.Properties._.n/n≢0
d_n'47'n'8802'0_3256 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_n'47'n'8802'0_3256 ~v0 ~v1 = du_n'47'n'8802'0_3256
du_n'47'n'8802'0_3256 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_n'47'n'8802'0_3256
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero_136
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Rational.Properties./-cong
d_'47''45'cong_3272 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong_3272 = erased
-- Data.Rational.Properties./-injective-≃-helper
d_'47''45'injective'45''8771''45'helper_3290 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'47''45'injective'45''8771''45'helper_3290 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 ~v6
  = du_'47''45'injective'45''8771''45'helper_3290
du_'47''45'injective'45''8771''45'helper_3290 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'47''45'injective'45''8771''45'helper_3290
  = coe
      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
      erased
-- Data.Rational.Properties./-injective-≃
d_'47''45'injective'45''8771'_3314 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'47''45'injective'45''8771'_3314 v0 v1 ~v2
  = du_'47''45'injective'45''8771'_3314 v0 v1
du_'47''45'injective'45''8771'_3314 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'47''45'injective'45''8771'_3314 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v2 v3
        -> case coe v2 of
             _ | coe geqInt (coe v2) (coe (0 :: Integer)) ->
                 case coe v1 of
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
                     -> case coe v4 of
                          _ | coe geqInt (coe v4) (coe (0 :: Integer)) ->
                              coe
                                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
                          _ -> coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                                 (coe du_'47''45'injective'45''8771''45'helper_3290)
                   _ -> MAlonzo.RTE.mazUnreachableError
             _ -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
                      -> case coe v4 of
                           _ | coe geqInt (coe v4) (coe (0 :: Integer)) ->
                               coe du_'47''45'injective'45''8771''45'helper_3290
                           _ -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.↥ᵘ-toℚᵘ
d_'8613''7512''45'toℚ'7512'_3362 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''7512''45'toℚ'7512'_3362 = erased
-- Data.Rational.Properties.↧ᵘ-toℚᵘ
d_'8615''7512''45'toℚ'7512'_3368 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''7512''45'toℚ'7512'_3368 = erased
-- Data.Rational.Properties.toℚᵘ-injective
d_toℚ'7512''45'injective_3372 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℚ'7512''45'injective_3372 = erased
-- Data.Rational.Properties.fromℚᵘ-injective
d_fromℚ'7512''45'injective_3380 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_fromℚ'7512''45'injective_3380 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (\ v2 ->
            coe du_'47''45'injective'45''8771'_3314 (coe v0) (coe v1)))
-- Data.Rational.Properties.fromℚᵘ-toℚᵘ
d_fromℚ'7512''45'toℚ'7512'_3388 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℚ'7512''45'toℚ'7512'_3388 = erased
-- Data.Rational.Properties.toℚᵘ-fromℚᵘ
d_toℚ'7512''45'fromℚ'7512'_3404 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'fromℚ'7512'_3404 v0
  = coe
      d_fromℚ'7512''45'injective_3380
      (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
         (coe MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172 (coe v0)))
      v0 erased
-- Data.Rational.Properties.toℚᵘ-cong
d_toℚ'7512''45'cong_3408 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'cong_3408 ~v0 ~v1 ~v2 = du_toℚ'7512''45'cong_3408
du_toℚ'7512''45'cong_3408 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_toℚ'7512''45'cong_3408
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Properties.fromℚᵘ-cong
d_fromℚ'7512''45'cong_3410 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℚ'7512''45'cong_3410 = erased
-- Data.Rational.Properties.toℚᵘ-isRelHomomorphism
d_toℚ'7512''45'isRelHomomorphism_3422 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_toℚ'7512''45'isRelHomomorphism_3422
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3408)
-- Data.Rational.Properties.toℚᵘ-isRelMonomorphism
d_toℚ'7512''45'isRelMonomorphism_3424 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_toℚ'7512''45'isRelMonomorphism_3424
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1563
      (coe d_toℚ'7512''45'isRelHomomorphism_3422) erased
-- Data.Rational.Properties.drop-*≤*
d_drop'45''42''8804''42'_3426 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_drop'45''42''8804''42'_3426 ~v0 ~v1 v2
  = du_drop'45''42''8804''42'_3426 v2
du_drop'45''42''8804''42'_3426 ::
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_drop'45''42''8804''42'_3426 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-mono-≤
d_toℚ'7512''45'mono'45''8804'_3430 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_toℚ'7512''45'mono'45''8804'_3430 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v5
              -> coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-cancel-≤
d_toℚ'7512''45'cancel'45''8804'_3438 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_toℚ'7512''45'cancel'45''8804'_3438 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v5
              -> coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-isOrderHomomorphism-≤
d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3446 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3446
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5435
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3408)
      (coe d_toℚ'7512''45'mono'45''8804'_3430)
-- Data.Rational.Properties.toℚᵘ-isOrderMonomorphism-≤
d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3448 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3448
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9103
      (coe d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3446) erased
      (coe d_toℚ'7512''45'cancel'45''8804'_3438)
-- Data.Rational.Properties.≤-reflexive
d_'8804''45'reflexive_3512 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'reflexive_3512 v0 ~v1 ~v2
  = du_'8804''45'reflexive_3512 v0
du_'8804''45'reflexive_3512 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8804''45'reflexive_3512 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'refl_2728
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≤-refl
d_'8804''45'refl_3514 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'refl_3514 v0 = coe du_'8804''45'reflexive_3512 (coe v0)
-- Data.Rational.Properties.≤-trans
d_'8804''45'trans_3516 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'trans_3516 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3448))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'trans_404)
      (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.≤-antisym
d_'8804''45'antisym_3518 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3518 = erased
-- Data.Rational.Properties.≤-total
d_'8804''45'total_3524 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3524 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
           (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v2))
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
           (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v2))
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_2754
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._≤?_
d__'8804''63'__3530 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3530 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
      (coe du_drop'45''42''8804''42'_3426)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2772
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._≥?_
d__'8805''63'__3536 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__3536 v0 v1
  = coe d__'8804''63'__3530 (coe v1) (coe v0)
-- Data.Rational.Properties.≤-irrelevant
d_'8804''45'irrelevant_3538 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3538 = erased
-- Data.Rational.Properties.≤-isPreorder
d_'8804''45'isPreorder_3544 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_3544
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3512 v0)
      (coe d_'8804''45'trans_3516)
-- Data.Rational.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_3546 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_3546
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8325
      (coe d_'8804''45'isPreorder_3544) (coe d_'8804''45'total_3524)
-- Data.Rational.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3548 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_3548
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe d_'8804''45'isPreorder_3544) erased
-- Data.Rational.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3550 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_3550
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20555
      (coe d_'8804''45'isPartialOrder_3548) (coe d_'8804''45'total_3524)
-- Data.Rational.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3552 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_3552
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22695
      (coe d_'8804''45'isTotalOrder_3550) (coe d__'8799'__2684)
      (coe d__'8804''63'__3530)
-- Data.Rational.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_3554 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder_3554
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4573
      d_'8804''45'isTotalPreorder_3546
-- Data.Rational.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3556 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_3556
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17849
      d_'8804''45'isDecTotalOrder_3552
-- Data.Rational.Properties.drop-*<*
d_drop'45''42''60''42'_3558 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_drop'45''42''60''42'_3558 ~v0 ~v1 v2
  = du_drop'45''42''60''42'_3558 v2
du_drop'45''42''60''42'_3558 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_drop'45''42''60''42'_3558 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-mono-<
d_toℚ'7512''45'mono'45''60'_3562 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_toℚ'7512''45'mono'45''60'_3562 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v5
              -> coe
                   MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-cancel-<
d_toℚ'7512''45'cancel'45''60'_3570 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_toℚ'7512''45'cancel'45''60'_3570 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5
              -> coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-isOrderHomomorphism-<
d_toℚ'7512''45'isOrderHomomorphism'45''60'_3578 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℚ'7512''45'isOrderHomomorphism'45''60'_3578
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5435
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3408)
      (coe d_toℚ'7512''45'mono'45''60'_3562)
-- Data.Rational.Properties.toℚᵘ-isOrderMonomorphism-<
d_toℚ'7512''45'isOrderMonomorphism'45''60'_3580 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℚ'7512''45'isOrderMonomorphism'45''60'_3580
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9103
      (coe d_toℚ'7512''45'isOrderHomomorphism'45''60'_3578) erased
      (coe d_toℚ'7512''45'cancel'45''60'_3570)
-- Data.Rational.Properties.<⇒≤
d_'60''8658''8804'_3582 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'60''8658''8804'_3582 ~v0 ~v1 v2 = du_'60''8658''8804'_3582 v2
du_'60''8658''8804'_3582 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'60''8658''8804'_3582 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3
        -> coe
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
             (coe
                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2846
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≮⇒≥
d_'8814''8658''8805'_3586 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8814''8658''8805'_3586 v0 v1 ~v2
  = du_'8814''8658''8805'_3586 v0 v1
du_'8814''8658''8805'_3586 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8814''8658''8805'_3586 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8814''8658''8805'_2900
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≰⇒>
d_'8816''8658''62'_3594 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'8816''8658''62'_3594 v0 v1 ~v2 = du_'8816''8658''62'_3594 v0 v1
du_'8816''8658''62'_3594 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'8816''8658''62'_3594 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8816''8658''62'_2874
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.<⇒≢
d_'60''8658''8802'_3602 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_3602 = erased
-- Data.Rational.Properties.<-irrefl
d_'60''45'irrefl_3610 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3610 = erased
-- Data.Rational.Properties.<-asym
d_'60''45'asym_3614 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3614 = erased
-- Data.Rational.Properties.<-dense
d_'60''45'dense_3620 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'dense_3620 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
               (coe
                  d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            d_toℚ'7512''45'cancel'45''60'_3570 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe
                        d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2)))))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'691''45''8771'_698
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                  (coe
                     d_toℚ'7512''45'fromℚ'7512'_3404
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe
                           d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2)))))))
         (coe
            d_toℚ'7512''45'cancel'45''60'_3570
            (coe
               MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe
                        d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2)))))
            (coe v1)
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'737''45''8771'_734
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                  (coe
                     d_toℚ'7512''45'fromℚ'7512'_3404
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe
                           d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v2))))))))
-- Data.Rational.Properties.<-≤-trans
d_'60''45''8804''45'trans_3640 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45''8804''45'trans_3640 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6304
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                          (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2)))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                          (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                       (addInt
                          (coe (1 :: Integer))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_denominator'45'1_16 (coe v1)))
                       (let v11
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v11)
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2)))
                                (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                                (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v12 v13 v14 v15 v16 -> v16)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2)))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                         (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   (\ v12 v13 v14 v15 v16 -> v16)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v1))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                      (\ v12 v13 v14 v15 v16 -> v16)
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2))))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2986
                                                 v15 v16)
                                            (coe
                                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2972
                                                 v15 v16))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                            (\ v12 v13 v14 v15 v16 -> v16)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                               (\ v12 v13 v14 v15 v16 -> v16)
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v2)))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2958
                                                          v15 v16))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v2))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                     (\ v12 v13 v14 v15 v16 -> v16)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1))))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                              (coe v2)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                        (\ v12 v13 v14 v15 v16 -> v16)
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v0))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                 (coe v2)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800))
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                 (coe
                                                                    MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                    (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v1))))
                                                        erased)
                                                     erased)
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_6096
                                                     (MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v2)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1)))
                                                     v10))
                                               erased)
                                            erased)
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6246
                                            (MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v1)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v0)))
                                            v7))
                                      erased)
                                   erased)
                                erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≤-<-trans
d_'8804''45''60''45'trans_3674 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'8804''45''60''45'trans_3674 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6304
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                          (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2)))
                       (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                          (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                          (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                       (addInt
                          (coe (1 :: Integer))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_denominator'45'1_16 (coe v1)))
                       (let v11
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v11)
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2)))
                                (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                                (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v12 v13 v14 v15 v16 -> v16)
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2)))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                         (coe v1))))
                                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
                                   (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   (\ v12 v13 v14 v15 v16 -> v16)
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v1))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v1))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v2))))
                                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                      (coe
                                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v2))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                      (\ v12 v13 v14 v15 v16 -> v16)
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v1))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2))))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v2)))
                                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                            (coe v1)))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                            (coe
                                               MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2958
                                                 v15 v16))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2)))
                                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v1)))
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                            (\ v12 v13 v14 v15 v16 -> v16)
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                     (coe v1))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v2)))
                                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                     (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                               (\ v12 v13 v14 v15 v16 -> v16)
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v2)))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                        (coe v1))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v2))))
                                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                     (coe v1)))
                                               (coe
                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2986
                                                          v15 v16)
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2972
                                                          v15 v16))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v2))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1))))
                                                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v1)))
                                                  (coe
                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                     (\ v12 v13 v14 v15 v16 -> v16)
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1))))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v0))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                              (coe v2)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1)))
                                                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                        (\ v12 v13 v14 v15 v16 -> v16)
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v0))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                 (coe v2)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1)))
                                                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                 (coe v2))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                              (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                           (coe
                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800))
                                                           (coe
                                                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                                 (coe
                                                                    MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                                    (coe v2))
                                                                 (coe
                                                                    MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                                 (coe v1))))
                                                        erased)
                                                     erased)
                                                  (coe
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6214
                                                     (coe
                                                        MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v1))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v2)))
                                                     (coe
                                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                           (coe v2))
                                                        (coe
                                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                           (coe v1)))
                                                     (coe v10)))
                                               erased)
                                            erased)
                                         (coe
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_6054
                                            (coe
                                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v1)))
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                                  (coe v1))
                                               (coe
                                                  MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                                  (coe v0)))
                                            (coe v7)))
                                      erased)
                                   erased)
                                erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.<-trans
d_'60''45'trans_3708 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'trans_3708 v0 v1 v2 v3
  = coe
      d_'8804''45''60''45'trans_3674 (coe v0) (coe v1) (coe v2)
      (coe du_'60''8658''8804'_3582 (coe v3))
-- Data.Rational.Properties._<?_
d__'60''63'__3712 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3712 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68)
      (coe du_drop'45''42''60''42'_3558)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'60''63'__3082
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._>?_
d__'62''63'__3718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__3718 v0 v1 = coe d__'60''63'__3712 (coe v1) (coe v0)
-- Data.Rational.Properties.<-cmp
d_'60''45'cmp_3720 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3720 v0 v1
  = let v2
          = MAlonzo.Code.Data.Integer.Properties.d_'60''45'cmp_2992
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'9667'__230
                 (coe
                    MAlonzo.Code.Data.Sign.Base.d__'42'__14
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_sign_24
                       (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0)))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_sign_24
                       (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1))))
                 (coe
                    mulInt
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                       (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0)))
                    (coe
                       MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                       (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))))
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                 (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
                 (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                (coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                (coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Rational.Properties.<-irrelevant
d_'60''45'irrelevant_3760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3760 = erased
-- Data.Rational.Properties.<-respʳ-≡
d_'60''45'resp'691''45''8801'_3766 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'resp'691''45''8801'_3766 ~v0 ~v1 ~v2 ~v3 v4
  = du_'60''45'resp'691''45''8801'_3766 v4
du_'60''45'resp'691''45''8801'_3766 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'60''45'resp'691''45''8801'_3766 v0 = coe v0
-- Data.Rational.Properties.<-respˡ-≡
d_'60''45'resp'737''45''8801'_3770 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'resp'737''45''8801'_3770 ~v0 ~v1 ~v2 ~v3 v4
  = du_'60''45'resp'737''45''8801'_3770 v4
du_'60''45'resp'737''45''8801'_3770 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'60''45'resp'737''45''8801'_3770 v0 = coe v0
-- Data.Rational.Properties.<-resp-≡
d_'60''45'resp'45''8801'_3774 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8801'_3774
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3776 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_3776
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14045
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      d_'60''45'trans_3708 d_'60''45'resp'45''8801'_3774
-- Data.Rational.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3778 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_3778
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24953
      (coe d_'60''45'isStrictPartialOrder_3776) (coe d_'60''45'cmp_3720)
-- Data.Rational.Properties.<-isDenseLinearOrder
d_'60''45'isDenseLinearOrder_3780 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_594
d_'60''45'isDenseLinearOrder_3780
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDenseLinearOrder'46'constructor_28131
      (coe d_'60''45'isStrictTotalOrder_3778) (coe d_'60''45'dense_3620)
-- Data.Rational.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3782 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_3782
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11097
      d_'60''45'isStrictPartialOrder_3776
-- Data.Rational.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3784 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_3784
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_21059
      d_'60''45'isStrictTotalOrder_3778
-- Data.Rational.Properties.<-denseLinearOrder
d_'60''45'denseLinearOrder_3786 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DenseLinearOrder_1140
d_'60''45'denseLinearOrder_3786
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DenseLinearOrder'46'constructor_23325
      d_'60''45'isDenseLinearOrder_3780
-- Data.Rational.Properties.≤-Reasoning.Triple._IsRelatedTo_
d__IsRelatedTo__3792 a0 a1 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple._∎
d__'8718'_3794 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3794
  = let v0 = d_'8804''45'isPreorder_3544 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Rational.Properties.≤-Reasoning.Triple.<-go
d_'60''45'go_3796 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3796
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe d_'60''45'trans_3708)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
      (coe d_'60''45''8804''45'trans_3640)
-- Data.Rational.Properties.≤-Reasoning.Triple.IsEquality
d_IsEquality_3798 a0 a1 a2 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple.IsEquality?
d_IsEquality'63'_3800 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3800 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Rational.Properties.≤-Reasoning.Triple.IsStrict
d_IsStrict_3802 a0 a1 a2 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple.IsStrict?
d_IsStrict'63'_3804 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3804 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3806 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_begin__3806
  = let v0 = d_'8804''45'isPreorder_3544 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_3582 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Rational.Properties.≤-Reasoning.Triple.begin-contradiction_
d_begin'45'contradiction__3808 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3808 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3810 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3810 = erased
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3812 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_begin__3812
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Rational.Properties.≤-Reasoning.Triple.eqRelation
d_eqRelation_3814 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3814
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Rational.Properties.≤-Reasoning.Triple.extractEquality
d_extractEquality_3818 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3818 = erased
-- Data.Rational.Properties.≤-Reasoning.Triple.extractStrict
d_extractStrict_3820 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_extractStrict_3820 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Rational.Properties.≤-Reasoning.Triple.start
d_start_3828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_start_3828
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_3544)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_3582 v2)
-- Data.Rational.Properties.≤-Reasoning.Triple.step-<
d_step'45''60'_3830 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3830
  = let v0 = d_'60''45'trans_3708 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160 in
       coe
         (let v2 = d_'60''45''8804''45'trans_3640 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡
d_step'45''8801'_3840 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3840
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-∣
d_step'45''8801''45''8739'_3842 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3842 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3842 v2
du_step'45''8801''45''8739'_3842 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3842 v0 = coe v0
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-⟨
d_step'45''8801''45''10216'_3844 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3844
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-⟩
d_step'45''8801''45''10217'_3846 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3846
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡˘
d_step'45''8801''728'_3848 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3848
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≤
d_step'45''8804'_3850 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3850
  = let v0 = d_'8804''45'isPreorder_3544 in
    coe
      (let v1 = d_'8804''45''60''45'trans_3674 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Rational.Properties.≤-Reasoning.Triple.stop
d_stop_3852 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3852
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_3544)
-- Data.Rational.Properties.≤-Reasoning.Triple.strictRelation
d_strictRelation_3856 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3856
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Rational.Properties.≤-Reasoning.Triple.≈-go
d_'8776''45'go_3858 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3858
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_3544)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
-- Data.Rational.Properties.≤-Reasoning.Triple.≡-go
d_'8801''45'go_3860 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3860 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3860 v4
du_'8801''45'go_3860 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3860 v0 = coe v0
-- Data.Rational.Properties.≤-Reasoning.Triple.≤-go
d_'8804''45'go_3862 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3862
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_3544)
      (coe d_'8804''45''60''45'trans_3674)
-- Data.Rational.Properties.≤-Reasoning.≃-go
d_'8771''45'go_3880 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8771''45'go_3880 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_3544)
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
         (coe v0) (coe v1) (coe v2))
      erased
-- Data.Rational.Properties.≤-Reasoning._.step-≃-⟨
d_step'45''8771''45''10216'_3888 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10216'_3888
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
      (coe d_'8771''45'go_3880) (\ v0 v1 -> coe du_'8771''45'sym_2834)
-- Data.Rational.Properties.≤-Reasoning._.step-≃-⟩
d_step'45''8771''45''10217'_3890 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10217'_3890
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
      (coe d_'8771''45'go_3880)
-- Data.Rational.Properties.positive⁻¹
d_positive'8315''185'_3894 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_positive'8315''185'_3894 v0 ~v1 = du_positive'8315''185'_3894 v0
du_positive'8315''185'_3894 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_positive'8315''185'_3894 v0
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_positive'8315''185'_890
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_3900 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_nonNegative'8315''185'_3900 v0 ~v1
  = du_nonNegative'8315''185'_3900 v0
du_nonNegative'8315''185'_3900 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_nonNegative'8315''185'_3900 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_nonNegative'8315''185'_896
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.negative⁻¹
d_negative'8315''185'_3906 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_negative'8315''185'_3906 v0 ~v1 = du_negative'8315''185'_3906 v0
du_negative'8315''185'_3906 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_negative'8315''185'_3906 v0
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570 (coe v0)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_negative'8315''185'_902
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_3912 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_nonPositive'8315''185'_3912 v0 ~v1
  = du_nonPositive'8315''185'_3912 v0
du_nonPositive'8315''185'_3912 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_nonPositive'8315''185'_3912 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438 (coe v0)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_nonPositive'8315''185'_908
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.neg<pos
d_neg'60'pos_3920 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_neg'60'pos_3920 v0 v1 ~v2 ~v3 = du_neg'60'pos_3920 v0 v1
du_neg'60'pos_3920 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_neg'60'pos_3920 v0 v1
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_neg'60'pos_928
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
-- Data.Rational.Properties.neg-antimono-<
d_neg'45'antimono'45''60'_3926 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_neg'45'antimono'45''60'_3926 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v6 v7
                      -> case coe v2 of
                           MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v11
                             -> case coe v6 of
                                  0 -> case coe v11 of
                                         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v14
                                           -> coe
                                                MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                                                   v14)
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe
                                         seq (coe v11)
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                                            (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   seq (coe v1)
                   (case coe v2 of
                      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v8
                        -> case coe v8 of
                             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v11
                               -> case coe v11 of
                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v14
                                      -> coe
                                           MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v14)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError
                      _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v6 v7
                      -> case coe v6 of
                           0 -> case coe v2 of
                                  MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v11
                                    -> coe
                                         seq (coe v11)
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ | coe geqInt (coe v6) (coe (1 :: Integer)) ->
                               case coe v2 of
                                 MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v11
                                   -> coe
                                        seq (coe v11)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                                           (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> case coe v2 of
                                  MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v11
                                    -> case coe v11 of
                                         MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v14
                                           -> coe
                                                MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v14))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.neg-antimono-≤
d_neg'45'antimono'45''8804'_3936 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_neg'45'antimono'45''8804'_3936 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v6 v7
                      -> case coe v2 of
                           MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v11
                             -> case coe v6 of
                                  0 -> case coe v11 of
                                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v14
                                           -> coe
                                                MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                                   v14)
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe
                                         seq (coe v11)
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   seq (coe v1)
                   (case coe v2 of
                      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v8
                        -> case coe v8 of
                             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v11
                               -> case coe v11 of
                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v14
                                      -> coe
                                           MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
                                           (coe
                                              MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                                              v14)
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError
                      _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v6 v7
                      -> case coe v6 of
                           0 -> case coe v2 of
                                  MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v11
                                    -> coe
                                         seq (coe v11)
                                         (coe
                                            MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
                                            (coe
                                               MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ | coe geqInt (coe v6) (coe (1 :: Integer)) ->
                               case coe v2 of
                                 MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v11
                                   -> coe
                                        seq (coe v11)
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
                                           (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> case coe v2 of
                                  MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v11
                                    -> case coe v11 of
                                         MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v14
                                           -> coe
                                                MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v14))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_3946 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''7495''8658''8804'_3946 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Integer.Properties.du_'8804''7495''8658''8804'_2820
           (coe
              MAlonzo.Code.Data.Integer.Base.d__'42'__308
              (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
              (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
           (coe
              MAlonzo.Code.Data.Integer.Base.d__'42'__308
              (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
              (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_3948 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 -> AgdaAny
d_'8804''8658''8804''7495'_3948 ~v0 ~v1
  = du_'8804''8658''8804''7495'_3948
du_'8804''8658''8804''7495'_3948 ::
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 -> AgdaAny
du_'8804''8658''8804''7495'_3948
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''8658''8804''7495'_2828)
      (coe du_drop'45''42''8804''42'_3426)
-- Data.Rational.Properties.↥+ᵘ
d_'8613''43''7512'_3950 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'8613''43''7512'_3950 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
         (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0)))
-- Data.Rational.Properties.↧+ᵘ
d_'8615''43''7512'_3956 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'8615''43''7512'_3956 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))
      (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1))
-- Data.Rational.Properties.+-nf
d_'43''45'nf_3962 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'43''45'nf_3962 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.GCD.d_gcd_136
      (coe d_'8613''43''7512'_3950 (coe v0) (coe v1))
      (coe d_'8615''43''7512'_3956 (coe v0) (coe v1))
-- Data.Rational.Properties.↥-+
d_'8613''45''43'_3972 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''43'_3972 = erased
-- Data.Rational.Properties.↧-+
d_'8615''45''43'_3982 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''43'_3982 = erased
-- Data.Rational.Properties._.Homomorphic₁
d_Homomorphic'8321'_3992 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  ()
d_Homomorphic'8321'_3992 = erased
-- Data.Rational.Properties._.Homomorphic₂
d_Homomorphic'8322'_3994 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  ()
d_Homomorphic'8322'_3994 = erased
-- Data.Rational.Properties.toℚᵘ-homo-+
d_toℚ'7512''45'homo'45''43'_3998 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''43'_3998 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> let v8
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                            erased erased
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                               (coe
                                  MAlonzo.Code.Data.Nat.GCD.d_gcd_152
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        d_'8613''43''7512'_3950
                                        (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                                        (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        d_'8615''43''7512'_3956
                                        (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                                        (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                               (coe (0 :: Integer))) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> coe
                              seq (coe v9)
                              (coe
                                 seq (coe v10)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties._.eq2
d_eq2_4018 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eq2_4018 = erased
-- Data.Rational.Properties._.eq
d_eq_4020 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eq_4020 = erased
-- Data.Rational.Properties.toℚᵘ-isMagmaHomomorphism-+
d_toℚ'7512''45'isMagmaHomomorphism'45''43'_4116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_toℚ'7512''45'isMagmaHomomorphism'45''43'_4116
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_toℚ'7512''45'isRelHomomorphism_3422)
      (coe d_toℚ'7512''45'homo'45''43'_3998)
-- Data.Rational.Properties.toℚᵘ-isMonoidHomomorphism-+
d_toℚ'7512''45'isMonoidHomomorphism'45''43'_4118 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_toℚ'7512''45'isMonoidHomomorphism'45''43'_4118
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe d_toℚ'7512''45'isMagmaHomomorphism'45''43'_4116)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isMonoidMonomorphism-+
d_toℚ'7512''45'isMonoidMonomorphism'45''43'_4120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_toℚ'7512''45'isMonoidMonomorphism'45''43'_4120
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_10237
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_4118) erased
-- Data.Rational.Properties.toℚᵘ-homo‿-
d_toℚ'7512''45'homo'8255''45'_4122 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'8255''45'_4122 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-isGroupHomomorphism-+
d_toℚ'7512''45'isGroupHomomorphism'45''43'_4124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_622
d_toℚ'7512''45'isGroupHomomorphism'45''43'_4124
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupHomomorphism'46'constructor_14585
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_4118)
      (coe d_toℚ'7512''45'homo'8255''45'_4122)
-- Data.Rational.Properties.toℚᵘ-isGroupMonomorphism-+
d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_648
d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupMonomorphism'46'constructor_15537
      (coe d_toℚ'7512''45'isGroupHomomorphism'45''43'_4124) erased
-- Data.Rational.Properties.+-assoc
d_'43''45'assoc_4184 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4184 = erased
-- Data.Rational.Properties.+-comm
d_'43''45'comm_4186 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4186 = erased
-- Data.Rational.Properties.+-identityˡ
d_'43''45'identity'737'_4188 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4188 = erased
-- Data.Rational.Properties.+-identityʳ
d_'43''45'identity'691'_4190 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4190 = erased
-- Data.Rational.Properties.+-identity
d_'43''45'identity_4192 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4192
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.+-inverseˡ
d_'43''45'inverse'737'_4194 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_4194 = erased
-- Data.Rational.Properties.+-inverseʳ
d_'43''45'inverse'691'_4196 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_4196 = erased
-- Data.Rational.Properties.+-inverse
d_'43''45'inverse_4198 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_4198
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isMagma_1634)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'inverse_1178)
-- Data.Rational.Properties.-‿cong
d_'45''8255'cong_4200 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''8255'cong_4200 = erased
-- Data.Rational.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_4206 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_4206 = erased
-- Data.Rational.Properties.+-isMagma
d_'43''45'isMagma_4208 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'43''45'isMagma_4208
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_676
                       (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isMagma_1634)))))
-- Data.Rational.Properties.+-isSemigroup
d_'43''45'isSemigroup_4210 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'43''45'isSemigroup_4210
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_676
                       (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isSemigroup_1636)))))
-- Data.Rational.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_4212 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'0'45'isMonoid_4212
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
         (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_676
         (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isMonoid_1638)
-- Data.Rational.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4214 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'0'45'isCommutativeMonoid_4214
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
         (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_122
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_676
         (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isCommutativeMonoid_1640)
-- Data.Rational.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_4216 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_1036
d_'43''45'0'45'isGroup_4216
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isGroup_1642)
-- Data.Rational.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_4218 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_1132
d_'43''45'0'45'isAbelianGroup_4218
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_418
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_370)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_290)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_4126)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isAbelianGroup_1644)
-- Data.Rational.Properties.+-magma
d_'43''45'magma_4220 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'43''45'magma_4220
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1279
      MAlonzo.Code.Data.Rational.Base.d__'43'__270 d_'43''45'isMagma_4208
-- Data.Rational.Properties.+-semigroup
d_'43''45'semigroup_4222 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'43''45'semigroup_4222
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9793
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      d_'43''45'isSemigroup_4210
-- Data.Rational.Properties.+-0-monoid
d_'43''45'0'45'monoid_4224 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_'43''45'0'45'monoid_4224
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16157
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      d_'43''45'0'45'isMonoid_4212
-- Data.Rational.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4226 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_'43''45'0'45'commutativeMonoid_4226
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      d_'43''45'0'45'isCommutativeMonoid_4214
-- Data.Rational.Properties.+-0-group
d_'43''45'0'45'group_4228 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1520
d_'43''45'0'45'group_4228
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Group'46'constructor_27303
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      d_'43''45'0'45'isGroup_4216
-- Data.Rational.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_4230 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1636
d_'43''45'0'45'abelianGroup_4230
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_29855
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      d_'43''45'0'45'isAbelianGroup_4218
-- Data.Rational.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4232 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'45''8804'_4232 v0 v1 v2 v3 v4 v5
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
            (\ v6 v7 v8 ->
               coe
                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'60''8658''8804'_520
                 v8))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2)))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45''60''45'trans_574))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3))))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                     (coe d_toℚ'7512''45'homo'45''43'_3998 (coe v1) (coe v3))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'mono'45''8804'_1322
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3))
                  (coe d_toℚ'7512''45'mono'45''8804'_3430 (coe v0) (coe v1) (coe v4))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3430 (coe v2) (coe v3) (coe v5))))
            (d_toℚ'7512''45'homo'45''43'_3998 (coe v0) (coe v2))))
-- Data.Rational.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4254 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'737''45''8804'_4254 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4232 (coe v1) (coe v2) (coe v0) (coe v0)
      (coe v3) (coe d_'8804''45'refl_3514 (coe v0))
-- Data.Rational.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4262 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'691''45''8804'_4262 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4232 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe d_'8804''45'refl_3514 (coe v0)) (coe v3)
-- Data.Rational.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_4268 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''60''45''8804'_4268 v0 v1 v2 v3 v4 v5
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3))
      (let v6
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v6)
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'trans_642)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45''8804''45'trans_608))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3))))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                        (coe d_toℚ'7512''45'homo'45''43'_3998 (coe v1) (coe v3))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'mono'45''60''45''8804'_1452
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3))
                     (coe d_toℚ'7512''45'mono'45''60'_3562 (coe v0) (coe v1) (coe v4))
                     (coe
                        d_toℚ'7512''45'mono'45''8804'_3430 (coe v2) (coe v3) (coe v5))))
               (d_toℚ'7512''45'homo'45''43'_3998 (coe v0) (coe v2)))))
-- Data.Rational.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4286 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''8804''45''60'_4286 v0 v1 v2 v3 v4 v5
  = coe
      d_'43''45'mono'45''60''45''8804'_4268 (coe v2) (coe v3) (coe v0)
      (coe v1) (coe v5) (coe v4)
-- Data.Rational.Properties.+-mono-<
d_'43''45'mono'45''60'_4308 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''60'_4308 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45'trans_3708
      (MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v2))
      (MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3))
      (d_'43''45'mono'45''60''45''8804'_4268
         (coe v0) (coe v1) (coe v2) (coe v2) (coe v4)
         (coe d_'8804''45'refl_3514 (coe v2)))
      (d_'43''45'mono'45''8804''45''60'_4286
         (coe v1) (coe v1) (coe v2) (coe v3)
         (coe d_'8804''45'refl_3514 (coe v1)) (coe v5))
-- Data.Rational.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4326 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'737''45''60'_4326 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''60''45''8804'_4268 (coe v1) (coe v2) (coe v0)
      (coe v0) (coe v3) (coe d_'8804''45'refl_3514 (coe v0))
-- Data.Rational.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4334 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'691''45''60'_4334 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804''45''60'_4286 (coe v0) (coe v0) (coe v1)
      (coe v2) (coe d_'8804''45'refl_3514 (coe v0)) (coe v3)
-- Data.Rational.Properties.*-nf
d_'42''45'nf_4340 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'42''45'nf_4340 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.GCD.d_gcd_136
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1)))
      (coe
         MAlonzo.Code.Data.Integer.Base.d__'42'__308
         (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
-- Data.Rational.Properties.↥-*
d_'8613''45''42'_4350 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''42'_4350 = erased
-- Data.Rational.Properties.↧-*
d_'8615''45''42'_4360 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''42'_4360 = erased
-- Data.Rational.Properties.toℚᵘ-homo-*
d_toℚ'7512''45'homo'45''42'_4366 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''42'_4366 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> let v8
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                            erased erased
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688
                               (coe
                                  MAlonzo.Code.Data.Nat.GCD.d_gcd_152
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2)
                                        (coe v5)))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                           (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                                        (coe
                                           MAlonzo.Code.Data.Rational.Base.d_denominator_22
                                           (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))))
                               (coe (0 :: Integer))) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> coe
                              seq (coe v9)
                              (coe
                                 seq (coe v10)
                                 (coe
                                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties._.eq2
d_eq2_4386 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eq2_4386 = erased
-- Data.Rational.Properties._.eq
d_eq_4388 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eq_4388 = erased
-- Data.Rational.Properties.toℚᵘ-homo-1/
d_toℚ'7512''45'homo'45'1'47'_4488 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45'1'47'_4488 v0 ~v1
  = du_toℚ'7512''45'homo'45'1'47'_4488 v0
du_toℚ'7512''45'homo'45'1'47'_4488 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_toℚ'7512''45'homo'45'1'47'_4488 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-isMagmaHomomorphism-*
d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4490
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_toℚ'7512''45'isRelHomomorphism_3422)
      (coe d_toℚ'7512''45'homo'45''42'_4366)
-- Data.Rational.Properties.toℚᵘ-isMonoidHomomorphism-*
d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4492
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4490)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isMonoidMonomorphism-*
d_toℚ'7512''45'isMonoidMonomorphism'45''42'_4494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_toℚ'7512''45'isMonoidMonomorphism'45''42'_4494
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_10237
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4492) erased
-- Data.Rational.Properties.toℚᵘ-isNearSemiringHomomorphism-+-*
d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_916
d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4496
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringHomomorphism'46'constructor_19989
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_4118)
      (coe d_toℚ'7512''45'homo'45''42'_4366)
-- Data.Rational.Properties.toℚᵘ-isNearSemiringMonomorphism-+-*
d_toℚ'7512''45'isNearSemiringMonomorphism'45''43''45''42'_4498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_944
d_toℚ'7512''45'isNearSemiringMonomorphism'45''43''45''42'_4498
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringMonomorphism'46'constructor_21119
      (coe
         d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4496)
      erased
-- Data.Rational.Properties.toℚᵘ-isSemiringHomomorphism-+-*
d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1282
d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4500
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringHomomorphism'46'constructor_26561
      (coe
         d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4496)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isSemiringMonomorphism-+-*
d_toℚ'7512''45'isSemiringMonomorphism'45''43''45''42'_4502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1316
d_toℚ'7512''45'isSemiringMonomorphism'45''43''45''42'_4502
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringMonomorphism'46'constructor_27871
      (coe d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4500)
      erased
-- Data.Rational.Properties.toℚᵘ-isRingHomomorphism-+-*
d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2132
d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4504
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingHomomorphism'46'constructor_41447
      (coe d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4500)
      (coe d_toℚ'7512''45'homo'8255''45'_4122)
-- Data.Rational.Properties.toℚᵘ-isRingMonomorphism-+-*
d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2172
d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingMonomorphism'46'constructor_42933
      (coe d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4504) erased
-- Data.Rational.Properties.*-assoc
d_'42''45'assoc_4624 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_4624 = erased
-- Data.Rational.Properties.*-comm
d_'42''45'comm_4626 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_4626 = erased
-- Data.Rational.Properties.*-identityˡ
d_'42''45'identity'737'_4628 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_4628 = erased
-- Data.Rational.Properties.*-identityʳ
d_'42''45'identity'691'_4630 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_4630 = erased
-- Data.Rational.Properties.*-identity
d_'42''45'identity_4632 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_4632
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-zeroˡ
d_'42''45'zero'737'_4634 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_4634 = erased
-- Data.Rational.Properties.*-zeroʳ
d_'42''45'zero'691'_4636 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_4636 = erased
-- Data.Rational.Properties.*-zero
d_'42''45'zero_4638 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_4638
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_4640 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_4640 = erased
-- Data.Rational.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_4642 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_4642 = erased
-- Data.Rational.Properties.*-distrib-+
d_'42''45'distrib'45''43'_4644 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_4644
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-inverseˡ
d_'42''45'inverse'737'_4650 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'inverse'737'_4650 = erased
-- Data.Rational.Properties.*-inverseʳ
d_'42''45'inverse'691'_4662 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'inverse'691'_4662 = erased
-- Data.Rational.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_4670 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_4670 = erased
-- Data.Rational.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_4676 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_4676 = erased
-- Data.Rational.Properties.*-isMagma
d_'42''45'isMagma_4678 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_4678
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_376)) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_296)) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2226
                       (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'isMagma_2448)))))
-- Data.Rational.Properties.*-isSemigroup
d_'42''45'isSemigroup_4680 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_4680
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_376)) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_296)) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2226
                       (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'isSemigroup_2450)))))
-- Data.Rational.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_4682 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'1'45'isMonoid_4682
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_376)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_296)))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2226
         (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'1'45'isMonoid_2452)
-- Data.Rational.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_4684 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'1'45'isCommutativeMonoid_4684
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_376)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_216
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_302
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_296)))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2226
         (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'1'45'isCommutativeMonoid_2454)
-- Data.Rational.Properties.+-*-isRing
d_'43''45''42''45'isRing_4686 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2650
d_'43''45''42''45'isRing_4686
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isRing_422
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_376)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_296)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45''42''45'isRing_2456)
-- Data.Rational.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_4688 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2796
d_'43''45''42''45'isCommutativeRing_4688
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isCommutativeRing_540
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_376)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_296)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4506)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45''42''45'isCommutativeRing_2458)
-- Data.Rational.Properties.*-magma
d_'42''45'magma_4690 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'42''45'magma_4690
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1279
      MAlonzo.Code.Data.Rational.Base.d__'42'__276 d_'42''45'isMagma_4678
-- Data.Rational.Properties.*-semigroup
d_'42''45'semigroup_4692 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'42''45'semigroup_4692
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9793
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      d_'42''45'isSemigroup_4680
-- Data.Rational.Properties.*-1-monoid
d_'42''45'1'45'monoid_4694 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_'42''45'1'45'monoid_4694
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16157
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'42''45'1'45'isMonoid_4682
-- Data.Rational.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_4696 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_'42''45'1'45'commutativeMonoid_4696
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'42''45'1'45'isCommutativeMonoid_4684
-- Data.Rational.Properties.+-*-ring
d_'43''45''42''45'ring_4698 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3800
d_'43''45''42''45'ring_4698
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_68489
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'43''45''42''45'isRing_4686
-- Data.Rational.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_4700 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_4016
d_'43''45''42''45'commutativeRing_4700
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_72553
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'43''45''42''45'isCommutativeRing_4688
-- Data.Rational.Properties._.#⇒invertible
d_'35''8658'invertible_4794 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'35''8658'invertible_4794 v0 v1 ~v2
  = du_'35''8658'invertible_4794 v0 v1
du_'35''8658'invertible_4794 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'35''8658'invertible_4794 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.Rational.Base.du_1'47'__292
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'45'__282 (coe v0) (coe v1)))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
-- Data.Rational.Properties._.invertible⇒#
d_invertible'8658''35'_4810 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_invertible'8658''35'_4810 = erased
-- Data.Rational.Properties._._.1≡0
d_1'8801'0_4866 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'8801'0_4866 = erased
-- Data.Rational.Properties._.isHeytingCommutativeRing
d_isHeytingCommutativeRing_4868 ::
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingCommutativeRing_160
d_isHeytingCommutativeRing_4868
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.C_IsHeytingCommutativeRing'46'constructor_4849
      (coe d_'43''45''42''45'isCommutativeRing_4688)
      (coe
         MAlonzo.Code.Relation.Binary.Properties.DecSetoid.du_'8777''45'isApartnessRelation_106
         (coe d_'8801''45'decSetoid_2696))
      (\ v0 v1 v2 -> coe du_'35''8658'invertible_4794 v0 v1) erased
-- Data.Rational.Properties._.isHeytingField
d_isHeytingField_4870 ::
  MAlonzo.Code.Algebra.Apartness.Structures.T_IsHeytingField_464
d_isHeytingField_4870
  = coe
      MAlonzo.Code.Algebra.Apartness.Structures.C_IsHeytingField'46'constructor_16575
      (coe d_isHeytingCommutativeRing_4868)
      (coe
         MAlonzo.Code.Relation.Binary.Properties.DecSetoid.du_'8777''45'tight_110
         (coe d_'8801''45'decSetoid_2696))
-- Data.Rational.Properties._.heytingCommutativeRing
d_heytingCommutativeRing_4872 ::
  MAlonzo.Code.Algebra.Apartness.Bundles.T_HeytingCommutativeRing_12
d_heytingCommutativeRing_4872
  = coe
      MAlonzo.Code.Algebra.Apartness.Bundles.C_HeytingCommutativeRing'46'constructor_657
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_isHeytingCommutativeRing_4868
-- Data.Rational.Properties._.heytingField
d_heytingField_4874 ::
  MAlonzo.Code.Algebra.Apartness.Bundles.T_HeytingField_208
d_heytingField_4874
  = coe
      MAlonzo.Code.Algebra.Apartness.Bundles.C_HeytingField'46'constructor_4995
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180 d_isHeytingField_4870
-- Data.Rational.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_4880 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'691''45''8804''45'pos_4880 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_4880 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'pos_4880 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'691''45''8804''45'pos_4880 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'691''45''8804''45'pos_2028
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'60''8658''8804'_520
                    v6))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                    v6)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45''60''45'trans_574))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))))
                     (d_toℚ'7512''45'homo'45''42'_4366 (coe v1) (coe v2)))
                  (d_toℚ'7512''45'mono'45''8804'_3430
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2))
                     (coe v3)))
               (d_toℚ'7512''45'homo'45''42'_4366 (coe v0) (coe v2)))))
-- Data.Rational.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_4898 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'737''45''8804''45'pos_4898 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_4898 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'pos_4898 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'737''45''8804''45'pos_4898 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_4880 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_4920 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'nonNeg_4920 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonNeg_4920 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonNeg_4920 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'nonNeg_4920 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'60''8658''8804'_520
                 v6))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
               (\ v4 v5 -> v4) v1 v2))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v4 v5 -> v5)
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
               v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v4 v5 -> v5)
                  (\ v4 ->
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
                  v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45''60''45'trans_574))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v4 v5 -> v5)
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
                     v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                  (\ v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                       v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v4 v5 -> v5)
                        (\ v4 ->
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
                        v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0))))
                  (d_toℚ'7512''45'homo'45''42'_4366 (coe v2) (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_2106
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3430 (coe v1) (coe v2) (coe v3))))
            (d_toℚ'7512''45'homo'45''42'_4366 (coe v1) (coe v0))))
-- Data.Rational.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_4940 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'nonNeg_4940 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonNeg_4940 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonNeg_4940 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'nonNeg_4940 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_4920 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_4962 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'nonPos_4962 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonPos_4962 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonPos_4962 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'nonPos_4962 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'60''8658''8804'_520
                 v6))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v4 v5 -> v5)
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
               v1 v2))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
               (\ v4 v5 -> v4) v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (\ v4 ->
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
                  (\ v4 v5 -> v4) v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45''60''45'trans_574))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     (\ v4 ->
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
                     (\ v4 v5 -> v4) v1 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                  (\ v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                       v6)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (\ v4 ->
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
                        (\ v4 v5 -> v4) v1 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0))))
                  (d_toℚ'7512''45'homo'45''42'_4366 (coe v1) (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''8804''45'nonPos_2188
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3430 (coe v1) (coe v2) (coe v3))))
            (d_toℚ'7512''45'homo'45''42'_4366 (coe v2) (coe v0))))
-- Data.Rational.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_4982 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'nonPos_4982 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonPos_4982 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonPos_4982 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'nonPos_4982 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonPos_4962 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_5002 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'691''45''8804''45'neg_5002 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'neg_5002 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'neg_5002 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'691''45''8804''45'neg_5002 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438 (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'691''45''8804''45'neg_2066
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'60''8658''8804'_520
                    v6))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
               (\ v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                    v6)
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45''60''45'trans_574))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))))
                     (d_toℚ'7512''45'homo'45''42'_4366 (coe v1) (coe v2)))
                  (d_toℚ'7512''45'mono'45''8804'_3430
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2))
                     (coe v3)))
               (d_toℚ'7512''45'homo'45''42'_4366 (coe v0) (coe v2)))))
-- Data.Rational.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_5020 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'737''45''8804''45'neg_5020 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'neg_5020 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'neg_5020 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'737''45''8804''45'neg_5020 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'neg_5002 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_5042 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'737''45''60''45'pos_5042 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_5042 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_5042 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'737''45''60''45'pos_5042 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         v1 v2)
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'trans_642)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45''8804''45'trans_608))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                     (\ v5 v6 v7 ->
                        coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                          v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0))))
                     (d_toℚ'7512''45'homo'45''42'_4366 (coe v2) (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''60''45'pos_2232
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe d_toℚ'7512''45'mono'45''60'_3562 (coe v1) (coe v2) (coe v3))))
               (d_toℚ'7512''45'homo'45''42'_4366 (coe v1) (coe v0)))))
-- Data.Rational.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_5062 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'691''45''60''45'pos_5062 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_5062 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_5062 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'691''45''60''45'pos_5062 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_5042 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_5086 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'nonNeg_5086 v0 ~v1 v2 v3 v4
  = du_'42''45'cancel'737''45''60''45'nonNeg_5086 v0 v2 v3 v4
du_'42''45'cancel'737''45''60''45'nonNeg_5086 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'nonNeg_5086 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570 (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'737''45''60''45'nonNeg_2320
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
               (coe v4)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                  (\ v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                       v7)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'trans_642)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45''8804''45'trans_608))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                        (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2)))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                              (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                              (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))))
                        (d_toℚ'7512''45'homo'45''42'_4366 (coe v0) (coe v2)))
                     (d_toℚ'7512''45'mono'45''60'_3562
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2))
                        (coe v3)))
                  (d_toℚ'7512''45'homo'45''42'_4366 (coe v0) (coe v1))))))
-- Data.Rational.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_5108 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'nonNeg_5108 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'nonNeg_5108 v0 v2 v3
du_'42''45'cancel'691''45''60''45'nonNeg_5108 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'nonNeg_5108 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_5086 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_5130 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'737''45''60''45'neg_5130 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_5130 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_5130 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'737''45''60''45'neg_5130 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
            (coe v4)
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'trans_642)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45''8804''45'trans_608))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                     (\ v5 v6 v7 ->
                        coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                          v7)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v0))))
                     (d_toℚ'7512''45'homo'45''42'_4366 (coe v1) (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''60''45'neg_2342
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe d_toℚ'7512''45'mono'45''60'_3562 (coe v1) (coe v2) (coe v3))))
               (d_toℚ'7512''45'homo'45''42'_4366 (coe v2) (coe v0)))))
-- Data.Rational.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_5150 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'691''45''60''45'neg_5150 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_5150 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_5150 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'691''45''60''45'neg_5150 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_5130 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_5170 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'nonPos_5170 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_5170 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_5170 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'nonPos_5170 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3570 (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'737''45''60''45'nonPos_2384
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
               (coe v4)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                  (\ v5 v6 v7 ->
                     coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                       v7)
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'trans_642)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45''8804''45'trans_608))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v1)))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                        (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v1)))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                              (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                              (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
                        (d_toℚ'7512''45'homo'45''42'_4366 (coe v2) (coe v1)))
                     (d_toℚ'7512''45'mono'45''60'_3562
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v1))
                        (coe v3)))
                  (d_toℚ'7512''45'homo'45''42'_4366 (coe v2) (coe v0))))))
-- Data.Rational.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_5188 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'nonPos_5188 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_5188 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_5188 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'nonPos_5188 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_5170 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.p≤q⇒p⊔q≡q
d_p'8804'q'8658'p'8852'q'8801'q_5204 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8804'q'8658'p'8852'q'8801'q_5204 = erased
-- Data.Rational.Properties.p≥q⇒p⊔q≡p
d_p'8805'q'8658'p'8852'q'8801'p_5230 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8805'q'8658'p'8852'q'8801'p_5230 = erased
-- Data.Rational.Properties.p≤q⇒p⊓q≡p
d_p'8804'q'8658'p'8851'q'8801'p_5256 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8804'q'8658'p'8851'q'8801'p_5256 = erased
-- Data.Rational.Properties.p≥q⇒p⊓q≡q
d_p'8805'q'8658'p'8851'q'8801'q_5282 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8805'q'8658'p'8851'q'8801'q_5282 = erased
-- Data.Rational.Properties.⊓-operator
d_'8851''45'operator_5308 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98
d_'8851''45'operator_5308
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1121
      (coe MAlonzo.Code.Data.Rational.Base.d__'8851'__332) erased erased
-- Data.Rational.Properties.⊔-operator
d_'8852''45'operator_5310 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_'8852''45'operator_5310
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1665
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__322) erased erased
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_5322 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x_5322
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2808
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_5324 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'x'8851'z'8804'y_5324
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3160
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_5326 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'z'8851'x'8804'y_5326
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3172
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_5328 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'x'8851'z'8804'y_5328
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3160
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_5330 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'z'8851'x'8804'y_5330
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3172
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_5332 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'y_5332
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3184
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_5334 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'z_5334
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3198
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_5336 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'y_5336
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2834
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_5338 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'x'8658'x'8804'y_5338
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3068
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_5340 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'y'8658'y'8804'x_5340
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3100
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_5342 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x_5342
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2808
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_5344 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x'8852'y_5344
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3318
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_5346 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'y_5346
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2834
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_5348 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'x'8658'x'8804'y_5348
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_5350 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'y'8658'y'8804'x_5350
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3100
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_5352 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'y_5352
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3184
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_5354 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'z_5354
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3198
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_5356 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_5356 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5358 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5358 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5360 :: MAlonzo.Code.Algebra.Bundles.T_Band_596
d_'8851''45'band_5360
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3052
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5362 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5362 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5364 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_662
d_'8851''45'commutativeSemigroup_5364
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3054
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_5372 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_5372
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3138
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_5374 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_5374 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_5376 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_5376 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5378 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'glb_5378
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3278
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5380 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5380 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5388 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_5388
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3034
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5390 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_5390
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3036
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_5392
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3030
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5396 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_5396
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3038
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5398 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_5398
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3032
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5400 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'8851''45'magma_5400
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3048
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5402 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'45''8804'_5402
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3206
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5406 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'691''45''8804'_5406
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3266
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5408 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'737''45''8804'_5408
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3256
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5412 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5412
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2988
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5414 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_122
d_'8851''45'selectiveMagma_5414
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3056
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5416 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'8851''45'semigroup_5416
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3050
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5418 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5418 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_5426 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_5426
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3218
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_5428 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_5428 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5430 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5430 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5432 :: MAlonzo.Code.Algebra.Bundles.T_Band_596
d_'8851''45'band_5432
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_3052
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5434 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5434 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5436 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_662
d_'8851''45'commutativeSemigroup_5436
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_3054
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_5444 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_5444
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3170
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_5446 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_5446 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_5448 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_5448 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5450 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5450 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5458 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_508
d_'8851''45'isBand_5458
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_3034
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5460 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'8851''45'isCommutativeSemigroup_5460
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_3036
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5462 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'8851''45'isMagma_5462
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_3030
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5466 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_436
d_'8851''45'isSelectiveMagma_5466
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3038
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5468 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'8851''45'isSemigroup_5468
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_3032
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5470 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'glb_5470
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3278
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5472 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'8851''45'magma_5472
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_3048
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5474 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'45''8804'_5474
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3206
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5478 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'691''45''8804'_5478
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3266
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5480 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'737''45''8804'_5480
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3256
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5482 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5482
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2988
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5484 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_122
d_'8851''45'selectiveMagma_5484
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_3056
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5486 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'8851''45'semigroup_5486
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_3050
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5488 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5488 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_5496 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_5496
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3216
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5500 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_5500
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_602
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5502 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5502
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8851''45'operator_5308 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_604
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_5504 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8851''45''8852''45'distributiveLattice_5504
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_808
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_5506 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
d_'8851''45''8852''45'isDistributiveLattice_5506
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_798
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_5508 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
d_'8851''45''8852''45'isLattice_5508
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_796
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_5510 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8851''45''8852''45'lattice_5510
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_804
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5512 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeBand_590
d_'8851''45'isSemilattice_5512
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_602
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5514 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5514
  = let v0 = d_'8804''45'totalPreorder_3554 in
    coe
      (let v1 = d_'8852''45'operator_5310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_604
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_5516 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_584
d_'8852''45''8851''45'distributiveLattice_5516
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_806
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_5518 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_3036
d_'8852''45''8851''45'isDistributiveLattice_5518
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_800
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_5520 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2962
d_'8852''45''8851''45'isLattice_5520
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_794
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_5522 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_500
d_'8852''45''8851''45'lattice_5522
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_802
      (coe d_'8804''45'totalPreorder_3554)
      (coe d_'8851''45'operator_5308) (coe d_'8852''45'operator_5310)
-- Data.Rational.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_5530 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_5530 = erased
-- Data.Rational.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_5540 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_5540 = erased
-- Data.Rational.Properties.mono-<-distrib-⊓
d_mono'45''60''45'distrib'45''8851'_5550 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8851'_5550 = erased
-- Data.Rational.Properties.mono-<-distrib-⊔
d_mono'45''60''45'distrib'45''8852'_5622 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8852'_5622 = erased
-- Data.Rational.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_5694 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_5694 = erased
-- Data.Rational.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_5704 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_5704 = erased
-- Data.Rational.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_5716 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonNeg_5716 = erased
-- Data.Rational.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_5728 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonNeg_5728 = erased
-- Data.Rational.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_5740 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonNeg_5740 = erased
-- Data.Rational.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_5752 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonNeg_5752 = erased
-- Data.Rational.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_5764 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonPos_5764 = erased
-- Data.Rational.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_5776 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonPos_5776 = erased
-- Data.Rational.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_5788 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonPos_5788 = erased
-- Data.Rational.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_5800 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonPos_5800 = erased
-- Data.Rational.Properties.nonZero⇒1/nonZero
d_nonZero'8658'1'47'nonZero_5808 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'8658'1'47'nonZero_5808 v0 ~v1
  = du_nonZero'8658'1'47'nonZero_5808 v0
du_nonZero'8658'1'47'nonZero_5808 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'8658'1'47'nonZero_5808 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.1/-involutive
d_1'47''45'involutive_5814 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'47''45'involutive_5814 = erased
-- Data.Rational.Properties.1/pos⇒pos
d_1'47'pos'8658'pos_5828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_1'47'pos'8658'pos_5828 v0 ~v1 = du_1'47'pos'8658'pos_5828 v0
du_1'47'pos'8658'pos_5828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_1'47'pos'8658'pos_5828 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1399
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.1/neg⇒neg
d_1'47'neg'8658'neg_5834 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_1'47'neg'8658'neg_5834 v0 ~v1 = du_1'47'neg'8658'neg_5834 v0
du_1'47'neg'8658'neg_5834 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_1'47'neg'8658'neg_5834 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1573
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.pos⇒1/pos
d_pos'8658'1'47'pos_5842 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'8658'1'47'pos_5842 v0 ~v1 ~v2 = du_pos'8658'1'47'pos_5842 v0
du_pos'8658'1'47'pos_5842 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'8658'1'47'pos_5842 v0
  = coe
      du_1'47'pos'8658'pos_5828
      (coe MAlonzo.Code.Data.Rational.Base.du_1'47'__292 (coe v0))
-- Data.Rational.Properties.neg⇒1/neg
d_neg'8658'1'47'neg_5852 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_neg'8658'1'47'neg_5852 v0 ~v1 ~v2 = du_neg'8658'1'47'neg_5852 v0
du_neg'8658'1'47'neg_5852 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_neg'8658'1'47'neg_5852 v0
  = coe
      du_1'47'neg'8658'neg_5834
      (coe MAlonzo.Code.Data.Rational.Base.du_1'47'__292 (coe v0))
-- Data.Rational.Properties.toℚᵘ-homo-∣-∣
d_toℚ'7512''45'homo'45''8739''45''8739'_5856 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''8739''45''8739'_5856 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p∣≡0⇒p≡0
d_'8739'p'8739''8801'0'8658'p'8801'0_5860 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'8739''8801'0'8658'p'8801'0_5860 = erased
-- Data.Rational.Properties.0≤∣p∣
d_0'8804''8739'p'8739'_5866 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_0'8804''8739'p'8739'_5866 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe
                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800)
                   (\ v4 v5 v6 ->
                      coe
                        MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2846 v6))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_numerator_14
                      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178))
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_denominator_22
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                         (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2))))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_numerator_14
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                         (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_denominator_22
                      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v4 v5 v6 v7 v8 -> v8)
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_numerator_14
                         (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178))
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_denominator_22
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                            (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2))))
                   MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_numerator_14
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                            (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_denominator_22
                         (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe
                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800)
                         (\ v4 v5 v6 v7 v8 ->
                            coe
                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2958
                              v7 v8))
                      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                      (MAlonzo.Code.Data.Rational.Base.d_numerator_14
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                            (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_numerator_14
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                         (\ v4 v5 v6 v7 v8 -> v8)
                         (MAlonzo.Code.Data.Rational.Base.d_numerator_14
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                               (coe
                                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                  (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                            (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                               (coe
                                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                  (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                               (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe
                                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2800))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe
                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                  (coe
                                     MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                     (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                               (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
                         erased)
                      (coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.0≤p⇒∣p∣≡p
d_0'8804'p'8658''8739'p'8739''8801'p_5874 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'p'8658''8739'p'8739''8801'p_5874 = erased
-- Data.Rational.Properties.∣-p∣≡∣p∣
d_'8739''45'p'8739''8801''8739'p'8739'_5882 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'p'8739''8801''8739'p'8739'_5882 = erased
-- Data.Rational.Properties.∣p∣≡p⇒0≤p
d_'8739'p'8739''8801'p'8658'0'8804'p_5896 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'8739''8801'p'8658'0'8804'p_5896 v0 ~v1
  = du_'8739'p'8739''8801'p'8658'0'8804'p_5896 v0
du_'8739'p'8739''8801'p'8658'0'8804'p_5896 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8739'p'8739''8801'p'8658'0'8804'p_5896 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739'p'8739''8771'p'8658'0'8804'p_3306
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (let v1
                = coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
               (coe v1)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v2 v3 v4 v5 v6 -> v6)
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                     erased)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                     (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5856 (coe v0)))))))
-- Data.Rational.Properties.∣p∣≡p∨∣p∣≡-p
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_5908 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_5908 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
             _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p+q∣≤∣p∣+∣q∣
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5922 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5922 v0 v1
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3438
      (coe
         MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__270
         (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'60''8658''8804'_520
                 v4))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1))))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'43'__270
               (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1))))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270
                  (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__270
                     (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45''60''45'trans_574))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270
                        (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                     (\ v2 v3 v4 ->
                        coe
                          MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                          v4)
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__270
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476)
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'45''8771'_744))
                        (\ v2 v3 v4 ->
                           coe
                             MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                             v4)
                        (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                              (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0)))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                        (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'43'__270
                              (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                        (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'43'__270
                              (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d__'43'__270
                                 (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1)))))
                        (d_toℚ'7512''45'homo'45''43'_3998
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'cong_970
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338 (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                        (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5856 (coe v0))
                        (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5856 (coe v1))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3336
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739''45''8739''45'cong_3202
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                  (coe d_toℚ'7512''45'homo'45''43'_3998 (coe v0) (coe v1))))
            (d_toℚ'7512''45'homo'45''8739''45''8739'_5856
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1)))))
-- Data.Rational.Properties.∣p-q∣≤∣p∣+∣q∣
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_5936 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_5936 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                       (coe d_'8804''45'isPreorder_3544)
                       (\ v8 v9 v10 -> coe du_'60''8658''8804'_3582 v10))
                    (MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'45'__282
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                    (MAlonzo.Code.Data.Rational.Base.d__'43'__270
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                          (coe d_'8804''45'isPreorder_3544)
                          (coe d_'8804''45''60''45'trans_3674))
                       (MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d__'45'__282
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                       (MAlonzo.Code.Data.Rational.Base.d__'43'__270
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'45'__112
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                       (MAlonzo.Code.Data.Rational.Base.d__'43'__270
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                          (\ v8 v9 v10 v11 v12 -> v12)
                          (MAlonzo.Code.Data.Rational.Base.d__'43'__270
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'45'__112
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                          (MAlonzo.Code.Data.Rational.Base.d__'43'__270
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                          (MAlonzo.Code.Data.Rational.Base.d__'43'__270
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                (coe d_'8804''45'isPreorder_3544))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'43'__270
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                          erased)
                       (d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5922
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'45'__112
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p*q∣≡∣p∣*∣q∣
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_5952 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_5952
  = erased
-- Data.Rational.Properties.∣-∣-nonNeg
d_'8739''45''8739''45'nonNeg_5964 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'8739''45''8739''45'nonNeg_5964 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1457
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣∣p∣∣≡∣p∣
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_5968 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_5968 = erased
-- Data.Rational.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_5976 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'neg_5976 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'neg_5976 v0 v2 v3
du_'42''45'mono'691''45''8804''45'neg_5976 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'neg_5976 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'691''45''8804''45'nonPos_4962
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_5984 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'neg_5984 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'neg_5984 v0 v2 v3
du_'42''45'mono'737''45''8804''45'neg_5984 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'neg_5984 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'737''45''8804''45'nonPos_4982
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_5992 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'pos_5992 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'pos_5992 v0 v2 v3
du_'42''45'mono'691''45''8804''45'pos_5992 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'pos_5992 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'691''45''8804''45'nonNeg_4920
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_6000 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'pos_6000 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'pos_6000 v0 v2 v3
du_'42''45'mono'737''45''8804''45'pos_6000 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'pos_6000 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'737''45''8804''45'nonNeg_4940
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelˡ-<-pos
d_'42''45'cancel'737''45''60''45'pos_6010 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'pos_6010 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'pos_6010 v0 v2 v3
du_'42''45'cancel'737''45''60''45'pos_6010 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'pos_6010 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'737''45''60''45'nonNeg_5086
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelʳ-<-pos
d_'42''45'cancel'691''45''60''45'pos_6020 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'pos_6020 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'pos_6020 v0 v2 v3
du_'42''45'cancel'691''45''60''45'pos_6020 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'pos_6020 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'691''45''60''45'nonNeg_5108
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_6030 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'neg_6030 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'neg_6030 v0 v2 v3
du_'42''45'cancel'737''45''60''45'neg_6030 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'neg_6030 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'737''45''60''45'nonPos_5170 (coe v1) (coe v2)
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_6040 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'neg_6040 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'neg_6040 v0 v2 v3
du_'42''45'cancel'691''45''60''45'neg_6040 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'neg_6040 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'691''45''60''45'nonPos_5188 (coe v1) (coe v2)
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.negative<positive
d_negative'60'positive_6044 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_negative'60'positive_6044 v0 v1 ~v2 ~v3
  = du_negative'60'positive_6044 v0 v1
du_negative'60'positive_6044 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_negative'60'positive_6044 v0 v1
  = coe du_neg'60'pos_3920 (coe v0) (coe v1)
