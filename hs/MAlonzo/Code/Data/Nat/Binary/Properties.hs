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

module MAlonzo.Code.Data.Nat.Binary.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Properties.CommutativeSemigroup
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Binary.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Consequences.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Nat.Binary.Properties._._DistributesOver_
d__DistributesOver__12 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d__DistributesOver__12 = erased
-- Data.Nat.Binary.Properties._._DistributesOverʳ_
d__DistributesOver'691'__14 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d__DistributesOver'691'__14 = erased
-- Data.Nat.Binary.Properties._._DistributesOverˡ_
d__DistributesOver'737'__16 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d__DistributesOver'737'__16 = erased
-- Data.Nat.Binary.Properties._.Associative
d_Associative_32 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_Associative_32 = erased
-- Data.Nat.Binary.Properties._.Commutative
d_Commutative_36 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_Commutative_36 = erased
-- Data.Nat.Binary.Properties._.Identity
d_Identity_52 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_Identity_52 = erased
-- Data.Nat.Binary.Properties._.LeftCancellative
d_LeftCancellative_66 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_LeftCancellative_66 = erased
-- Data.Nat.Binary.Properties._.LeftIdentity
d_LeftIdentity_78 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_LeftIdentity_78 = erased
-- Data.Nat.Binary.Properties._.LeftZero
d_LeftZero_86 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_LeftZero_86 = erased
-- Data.Nat.Binary.Properties._.RightCancellative
d_RightCancellative_96 ::
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_RightCancellative_96 = erased
-- Data.Nat.Binary.Properties._.RightIdentity
d_RightIdentity_108 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_RightIdentity_108 = erased
-- Data.Nat.Binary.Properties._.RightZero
d_RightZero_116 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_RightZero_116 = erased
-- Data.Nat.Binary.Properties._.Zero
d_Zero_136 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
   MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8) ->
  ()
d_Zero_136 = erased
-- Data.Nat.Binary.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_152 a0 a1 = ()
-- Data.Nat.Binary.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_156 a0 = ()
-- Data.Nat.Binary.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_158 a0 a1 a2 a3 = ()
-- Data.Nat.Binary.Properties._.IsMagma
d_IsMagma_184 a0 = ()
-- Data.Nat.Binary.Properties._.IsMonoid
d_IsMonoid_190 a0 a1 = ()
-- Data.Nat.Binary.Properties._.IsSemigroup
d_IsSemigroup_212 a0 = ()
-- Data.Nat.Binary.Properties._.IsSemiring
d_IsSemiring_216 a0 a1 a2 a3 = ()
-- Data.Nat.Binary.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_218 a0 a1 a2 a3 = ()
-- Data.Nat.Binary.Properties._.IsCommutativeMonoid.comm
d_comm_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_522 = erased
-- Data.Nat.Binary.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_538 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_isMonoid_538 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v0)
-- Data.Nat.Binary.Properties._.IsCommutativeSemigroup.comm
d_comm_690 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_690 = erased
-- Data.Nat.Binary.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_700 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_556 (coe v0)
-- Data.Nat.Binary.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1678 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_722 = erased
-- Data.Nat.Binary.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1678 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1570
d_isSemiring_792 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1692 (coe v0)
-- Data.Nat.Binary.Properties._.IsMagma.isEquivalence
d_isEquivalence_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_184 (coe v0)
-- Data.Nat.Binary.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1498 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1498 = erased
-- Data.Nat.Binary.Properties._.IsMonoid.identity
d_identity_1594 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1594 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_698 (coe v0)
-- Data.Nat.Binary.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_isSemigroup_1606 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v0)
-- Data.Nat.Binary.Properties._.IsSemigroup.assoc
d_assoc_2338 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2338 = erased
-- Data.Nat.Binary.Properties._.IsSemigroup.isMagma
d_isMagma_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_isMagma_2342 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v0)
-- Data.Nat.Binary.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1570 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468
d_isSemiringWithoutAnnihilatingZero_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1584
      (coe v0)
-- Data.Nat.Binary.Properties._.IsSemiring.zero
d_zero_2470 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1570 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2470 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1586 (coe v0)
-- Data.Nat.Binary.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2478 = erased
-- Data.Nat.Binary.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2480 = erased
-- Data.Nat.Binary.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2486 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1494 (coe v0)
-- Data.Nat.Binary.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2516 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'isCommutativeMonoid_2516 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1488
      (coe v0)
-- Data.Nat.Binary.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2528 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2528 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1496 (coe v0)
-- Data.Nat.Binary.Properties.2[1+x]≢0
d_2'91'1'43'x'93''8802'0_2758 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_2'91'1'43'x'93''8802'0_2758 = erased
-- Data.Nat.Binary.Properties.1+[2x]≢0
d_1'43''91'2x'93''8802'0_2760 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43''91'2x'93''8802'0_2760 = erased
-- Data.Nat.Binary.Properties.2[1+_]-injective
d_2'91'1'43'_'93''45'injective_2762 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_2'91'1'43'_'93''45'injective_2762 = erased
-- Data.Nat.Binary.Properties.1+[2_]-injective
d_1'43''91'2_'93''45'injective_2764 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'43''91'2_'93''45'injective_2764 = erased
-- Data.Nat.Binary.Properties._≟_
d__'8799'__2766 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2766 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    erased erased (coe d__'8799'__2766 (coe v2) (coe v3))
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    erased erased (coe d__'8799'__2766 (coe v2) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_2776 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8801''45'isDecEquivalence_2776
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isDecEquivalence_398
      (coe d__'8799'__2766)
-- Data.Nat.Binary.Properties.≡-setoid
d_'8801''45'setoid_2778 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2778
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Nat.Binary.Properties.≡-decSetoid
d_'8801''45'decSetoid_2780 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2780
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2766)
-- Data.Nat.Binary.Properties.toℕ-double
d_toℕ'45'double_2784 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'double_2784 = erased
-- Data.Nat.Binary.Properties.toℕ-suc
d_toℕ'45'suc_2796 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'suc_2796 = erased
-- Data.Nat.Binary.Properties.toℕ-pred
d_toℕ'45'pred_2806 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'pred_2806 = erased
-- Data.Nat.Binary.Properties.toℕ-fromℕ'
d_toℕ'45'fromℕ''_2812 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ''_2812 = erased
-- Data.Nat.Binary.Properties.fromℕ≡fromℕ'
d_fromℕ'8801'fromℕ''_2820 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'8801'fromℕ''_2820 = erased
-- Data.Nat.Binary.Properties._.split
d_split_2828 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_split_2828 ~v0 v1 = du_split_2828 v1
du_split_2828 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_split_2828 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) (coe v0)
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
             (coe v1)
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
             (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties._.head
d_head_2834 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Maybe Bool
d_head_2834 ~v0 v1 = du_head_2834 v1
du_head_2834 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Maybe Bool
du_head_2834 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_split_2828 (coe v0))
-- Data.Nat.Binary.Properties._.tail
d_tail_2836 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_tail_2836 ~v0 v1 = du_tail_2836 v1
du_tail_2836 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_tail_2836 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe du_split_2828 (coe v0))
-- Data.Nat.Binary.Properties._.split-injective
d_split'45'injective_2838 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_split'45'injective_2838 = erased
-- Data.Nat.Binary.Properties._.split-if
d_split'45'if_2844 ::
  Integer ->
  Bool ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_split'45'if_2844 = erased
-- Data.Nat.Binary.Properties._.head-suc
d_head'45'suc_2852 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_head'45'suc_2852 = erased
-- Data.Nat.Binary.Properties._.tail-suc
d_tail'45'suc_2860 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_tail'45'suc_2860 = erased
-- Data.Nat.Binary.Properties._.head-homo
d_head'45'homo_2868 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_head'45'homo_2868 = erased
-- Data.Nat.Binary.Properties._.tail-homo
d_tail'45'homo_2874 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_tail'45'homo_2874 = erased
-- Data.Nat.Binary.Properties._.fromℕ-helper≡fromℕ'
d_fromℕ'45'helper'8801'fromℕ''_2882 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'helper'8801'fromℕ''_2882 = erased
-- Data.Nat.Binary.Properties._._.rec-n/2
d_rec'45'n'47'2_2898 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rec'45'n'47'2_2898 = erased
-- Data.Nat.Binary.Properties.toℕ-fromℕ
d_toℕ'45'fromℕ_2902 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'fromℕ_2902 = erased
-- Data.Nat.Binary.Properties.toℕ-injective
d_toℕ'45'injective_2910 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'injective_2910 = erased
-- Data.Nat.Binary.Properties._.1+xN≡1+yN
d_1'43'xN'8801'1'43'yN_2922 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'43'xN'8801'1'43'yN_2922 = erased
-- Data.Nat.Binary.Properties._.xN≡yN
d_xN'8801'yN_2924 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xN'8801'yN_2924 = erased
-- Data.Nat.Binary.Properties._.x≡y
d_x'8801'y_2926 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8801'y_2926 = erased
-- Data.Nat.Binary.Properties._.2xN≡2yN
d_2xN'8801'2yN_2950 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_2xN'8801'2yN_2950 = erased
-- Data.Nat.Binary.Properties._.xN≡yN
d_xN'8801'yN_2952 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xN'8801'yN_2952 = erased
-- Data.Nat.Binary.Properties._.x≡y
d_x'8801'y_2954 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8801'y_2954 = erased
-- Data.Nat.Binary.Properties.toℕ-surjective
d_toℕ'45'surjective_2956 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toℕ'45'surjective_2956
  = coe
      MAlonzo.Code.Function.Consequences.Propositional.du_strictlySurjective'8658'surjective_40
      MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
      (\ v0 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v0))
           erased)
-- Data.Nat.Binary.Properties.toℕ-isRelHomomorphism
d_toℕ'45'isRelHomomorphism_2960 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_toℕ'45'isRelHomomorphism_2960
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
      erased
-- Data.Nat.Binary.Properties.fromℕ-injective
d_fromℕ'45'injective_2962 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'injective_2962 = erased
-- Data.Nat.Binary.Properties.fromℕ-toℕ
d_fromℕ'45'toℕ_2974 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'toℕ_2974 = erased
-- Data.Nat.Binary.Properties.toℕ-inverseˡ
d_toℕ'45'inverse'737'_2976 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inverse'737'_2976 = erased
-- Data.Nat.Binary.Properties.toℕ-inverseʳ
d_toℕ'45'inverse'691'_2978 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'inverse'691'_2978 = erased
-- Data.Nat.Binary.Properties.toℕ-inverseᵇ
d_toℕ'45'inverse'7495'_2980 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toℕ'45'inverse'7495'_2980
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Binary.Properties.fromℕ-pred
d_fromℕ'45'pred_2984 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'pred_2984 = erased
-- Data.Nat.Binary.Properties._.y
d_y_2992 ::
  Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_y_2992 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v0)
-- Data.Nat.Binary.Properties.x≡0⇒toℕ[x]≡0
d_x'8801'0'8658'toℕ'91'x'93''8801'0_2994 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8801'0'8658'toℕ'91'x'93''8801'0_2994 = erased
-- Data.Nat.Binary.Properties.toℕ[x]≡0⇒x≡0
d_toℕ'91'x'93''8801'0'8658'x'8801'0_2996 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'91'x'93''8801'0'8658'x'8801'0_2996 = erased
-- Data.Nat.Binary.Properties.x≮0
d_x'8814'0_2998 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_x'8814'0_2998 = erased
-- Data.Nat.Binary.Properties.x≢0⇒x>0
d_x'8802'0'8658'x'62'0_3000 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'8802'0'8658'x'62'0_3000 v0 ~v1
  = du_x'8802'0'8658'x'62'0_3000 v0
du_x'8802'0'8658'x'62'0_3000 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_x'8802'0'8658'x'62'0_3000 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v1
        -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v1
        -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.1+[2x]<2[1+x]
d_1'43''91'2x'93''60'2'91'1'43'x'93'_3006 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_1'43''91'2x'93''60'2'91'1'43'x'93'_3006 ~v0
  = du_1'43''91'2x'93''60'2'91'1'43'x'93'_3006
du_1'43''91'2x'93''60'2'91'1'43'x'93'_3006 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_1'43''91'2x'93''60'2'91'1'43'x'93'_3006
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
-- Data.Nat.Binary.Properties.<⇒≢
d_'60''8658''8802'_3010 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_3010 = erased
-- Data.Nat.Binary.Properties.>⇒≢
d_'62''8658''8802'_3016 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8802'_3016 = erased
-- Data.Nat.Binary.Properties.≡⇒≮
d_'8801''8658''8814'_3020 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8801''8658''8814'_3020 = erased
-- Data.Nat.Binary.Properties.≡⇒≯
d_'8801''8658''8815'_3026 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8801''8658''8815'_3026 = erased
-- Data.Nat.Binary.Properties.<⇒≯
d_'60''8658''8815'_3032 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8815'_3032 = erased
-- Data.Nat.Binary.Properties.>⇒≮
d_'62''8658''8814'_3054 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8814'_3054 = erased
-- Data.Nat.Binary.Properties.<⇒≤
d_'60''8658''8804'_3058 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'60''8658''8804'_3058 ~v0 ~v1 = du_'60''8658''8804'_3058
du_'60''8658''8804'_3058 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'60''8658''8804'_3058
  = coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
-- Data.Nat.Binary.Properties.toℕ-mono-<
d_toℕ'45'mono'45''60'_3060 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'45'mono'45''60'_3060 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Data.Nat.Properties.du_0'60'1'43'n_3074)
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v4
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v7
                      -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                              (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                              (\ v8 v9 v10 ->
                                 coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854 v10))
                           (addInt
                              (coe (1 :: Integer))
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                 MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v8 v9 -> v8) v0 v1))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                 (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                 (\ v8 v9 v10 v11 v12 ->
                                    coe
                                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                      v11 v12))
                              (addInt
                                 (coe (1 :: Integer))
                                 (coe
                                    mulInt (coe (2 :: Integer))
                                    (coe addInt (coe (1 :: Integer)) (coe du_xN_3072 (coe v3)))))
                              (addInt
                                 (coe (1 :: Integer))
                                 (coe mulInt (coe (2 :: Integer)) (coe du_yN_3074 (coe v4))))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                    (\ v8 v9 v10 v11 v12 ->
                                       coe
                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                         v11 v12))
                                 (addInt
                                    (coe (1 :: Integer))
                                    (coe mulInt (coe (2 :: Integer)) (coe du_yN_3074 (coe v4))))
                                 (addInt
                                    (coe (2 :: Integer))
                                    (coe mulInt (coe (2 :: Integer)) (coe du_yN_3074 (coe v4))))
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                    (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0
                                    v1)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                    (\ v8 v9 v10 v11 v12 -> v12)
                                    (addInt
                                       (coe (2 :: Integer))
                                       (coe mulInt (coe (2 :: Integer)) (coe du_yN_3074 (coe v4))))
                                    (mulInt
                                       (coe (2 :: Integer))
                                       (coe addInt (coe (1 :: Integer)) (coe du_yN_3074 (coe v4))))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                       v0 v1)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810))
                                       (coe
                                          mulInt (coe (2 :: Integer))
                                          (coe
                                             addInt (coe (1 :: Integer))
                                             (coe du_yN_3074 (coe v4)))))
                                    erased)
                                 (MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2844
                                    (coe
                                       addInt (coe (1 :: Integer))
                                       (coe
                                          mulInt (coe (2 :: Integer)) (coe du_yN_3074 (coe v4))))))
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3554
                                 (coe (1 :: Integer))
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                    (\ v8 v9 -> v9) (mulInt (coe (2 :: Integer)))
                                    (addInt
                                       (coe (1 :: Integer))
                                       (coe
                                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                          MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                          (\ v8 v9 -> v8) v3 v4))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                       v3 v4))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_4080
                                    (coe (2 :: Integer))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                       v3 v4)
                                    (coe d_xN'60'yN_3076 (coe v3) (coe v4) (coe v7)))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v4
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v7
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3554
                           (coe (1 :: Integer))
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v8 v9 -> v9) (mulInt (coe (2 :: Integer)))
                              (addInt
                                 (coe (1 :: Integer))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                    MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v8 v9 -> v8) v3
                                    v4))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v3 v4))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_4080
                              (coe (2 :: Integer))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v3 v4)
                              (coe d_toℕ'45'mono'45''60'_3060 (coe v3) (coe v4) (coe v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v4
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42 v7
                      -> case coe v7 of
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                     (\ v9 v10 v11 ->
                                        coe
                                          MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854
                                          v11))
                                  (addInt
                                     (coe (1 :: Integer))
                                     (coe
                                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v9 v10 -> v9)
                                        v0 v1))
                                  (coe
                                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                     (\ v9 v10 -> v10) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                     v0 v1)
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                     (\ v9 v10 v11 v12 v13 -> v13)
                                     (addInt
                                        (coe (2 :: Integer))
                                        (coe mulInt (coe (2 :: Integer)) (coe du_xN_3094 (coe v3))))
                                     (mulInt
                                        (coe (2 :: Integer))
                                        (coe addInt (coe (1 :: Integer)) (coe du_xN_3094 (coe v3))))
                                     (coe
                                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                        (\ v9 v10 -> v10)
                                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                           (\ v9 v10 v11 v12 v13 ->
                                              coe
                                                MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                                v12 v13))
                                        (mulInt
                                           (coe (2 :: Integer))
                                           (coe
                                              addInt (coe (1 :: Integer))
                                              (coe du_xN_3094 (coe v3))))
                                        (mulInt (coe (2 :: Integer)) (coe du_yN_3096 (coe v4)))
                                        (coe
                                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                           (\ v9 v10 -> v10)
                                           MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                              (coe
                                                 MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                                              (\ v9 v10 v11 v12 v13 ->
                                                 coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986
                                                   v12 v13))
                                           (mulInt (coe (2 :: Integer)) (coe du_yN_3096 (coe v4)))
                                           (mulInt
                                              (coe (2 :: Integer))
                                              (coe
                                                 addInt (coe (1 :: Integer))
                                                 (coe du_yN_3096 (coe v4))))
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v9 v10 -> v10)
                                              MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810))
                                              (coe
                                                 mulInt (coe (2 :: Integer))
                                                 (coe
                                                    addInt (coe (1 :: Integer))
                                                    (coe du_yN_3096 (coe v4)))))
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_4080
                                              (coe (2 :: Integer))
                                              (coe
                                                 addInt (coe (1 :: Integer))
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                                    (coe v4)))
                                              (coe
                                                 MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2844
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                                                    (coe v4)))))
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_4080
                                           (coe (2 :: Integer))
                                           (coe
                                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                              (\ v9 v10 -> v10)
                                              MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v3 v4)
                                           (coe d_xN'60'yN_3098 (coe v3) (coe v4) (coe v8))))
                                     erased)
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                             -> coe
                                  MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
                                  (coe
                                     addInt (coe (1 :: Integer))
                                     (coe
                                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v9 v10 -> v9)
                                        v0
                                        (coe
                                           MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12
                                           (coe v3))))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v4
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v7
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3596
                           (coe (1 :: Integer))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''60'_4114
                              (coe (2 :: Integer))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                 (\ v8 v9 -> v9) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v3 v4)
                              (coe d_xN'60'yN_3116 (coe v3) (coe v4) (coe v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties._.xN
d_xN_3072 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 -> Integer
d_xN_3072 v0 ~v1 ~v2 = du_xN_3072 v0
du_xN_3072 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_xN_3072 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.yN
d_yN_3074 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 -> Integer
d_yN_3074 ~v0 v1 ~v2 = du_yN_3074 v1
du_yN_3074 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_yN_3074 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.xN<yN
d_xN'60'yN_3076 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_xN'60'yN_3076 v0 v1 v2
  = coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties._.xN
d_xN_3094 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 -> Integer
d_xN_3094 v0 ~v1 ~v2 = du_xN_3094 v0
du_xN_3094 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_xN_3094 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.yN
d_yN_3096 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 -> Integer
d_yN_3096 ~v0 v1 ~v2 = du_yN_3096 v1
du_yN_3096 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_yN_3096 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.xN<yN
d_xN'60'yN_3098 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_xN'60'yN_3098 v0 v1 v2
  = coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties._.xN<yN
d_xN'60'yN_3116 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_xN'60'yN_3116 v0 v1 v2
  = coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties.toℕ-cancel-<
d_toℕ'45'cancel'45''60'_3122 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_toℕ'45'cancel'45''60'_3122 v0 v1 ~v2
  = du_toℕ'45'cancel'45''60'_3122 v0 v1
du_toℕ'45'cancel'45''60'_3122 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_toℕ'45'cancel'45''60'_3122 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
               -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
               -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
               -> coe
                    MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30
                    (coe du_toℕ'45'cancel'45''60'_3122 (coe v2) (coe v3))
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
               -> coe
                    MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36
                    (coe du_toℕ'45'cancel'45''60'_3122 (coe v2) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
               -> let v4
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                            erased
                            (\ v4 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_2678
                                 (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v2)))
                            (coe
                               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_66
                               (coe
                                  eqInt (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v2))
                                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v3)))) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                         -> if coe v5
                              then coe
                                     seq (coe v6)
                                     (coe
                                        MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
                                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
                              else coe
                                     seq (coe v6)
                                     (coe
                                        MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
                                        (coe
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                           (coe du_toℕ'45'cancel'45''60'_3122 (coe v2) (coe v3))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
               -> coe
                    MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48
                    (coe du_toℕ'45'cancel'45''60'_3122 (coe v2) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.fromℕ-cancel-<
d_fromℕ'45'cancel'45''60'_3188 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_fromℕ'45'cancel'45''60'_3188 v0 v1 v2
  = coe
      d_toℕ'45'mono'45''60'_3060
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v0))
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v1))
      (coe v2)
-- Data.Nat.Binary.Properties.fromℕ-mono-<
d_fromℕ'45'mono'45''60'_3190 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_fromℕ'45'mono'45''60'_3190 v0 v1 ~v2
  = du_fromℕ'45'mono'45''60'_3190 v0 v1
du_fromℕ'45'mono'45''60'_3190 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_fromℕ'45'mono'45''60'_3190 v0 v1
  = coe
      du_toℕ'45'cancel'45''60'_3122
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (\ v2 v3 -> v2) v0
         v1)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v2 v3 -> v3) MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 v0
         v1)
-- Data.Nat.Binary.Properties.toℕ-isHomomorphism-<
d_toℕ'45'isHomomorphism'45''60'_3192 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℕ'45'isHomomorphism'45''60'_3192
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5435
      erased (coe d_toℕ'45'mono'45''60'_3060)
-- Data.Nat.Binary.Properties.toℕ-isMonomorphism-<
d_toℕ'45'isMonomorphism'45''60'_3194 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℕ'45'isMonomorphism'45''60'_3194
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9103
      (coe d_toℕ'45'isHomomorphism'45''60'_3192) erased
      (\ v0 v1 v2 -> coe du_toℕ'45'cancel'45''60'_3122 v0 v1)
-- Data.Nat.Binary.Properties.<-irrefl
d_'60''45'irrefl_3196 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3196 = erased
-- Data.Nat.Binary.Properties.<-trans
d_'60''45'trans_3202 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'60''45'trans_3202 v0 v1 v2 v3 v4
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> case coe v2 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v5
               -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v5
               -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v5
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v8
               -> case coe v1 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v9
                      -> case coe v4 of
                           MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v12
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v13
                                    -> coe
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30
                                         (d_'60''45'trans_3202
                                            (coe v5) (coe v9) (coe v13) (coe v8) (coe v12))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v12
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v13
                                    -> coe
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36
                                         (d_'60''45'trans_3202
                                            (coe v5) (coe v9) (coe v13) (coe v8) (coe v12))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v8
               -> case coe v1 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v9
                      -> case coe v4 of
                           MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42 v12
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v13
                                    -> case coe v12 of
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                           -> coe
                                                MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30
                                                (d_'60''45'trans_3202
                                                   (coe v5) (coe v9) (coe v13) (coe v8) (coe v14))
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                           -> coe
                                                MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30
                                                v8
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v12
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v13
                                    -> coe
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36
                                         (d_'60''45'trans_3202
                                            (coe v5) (coe v9) (coe v13) (coe v8) (coe v12))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v5
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42 v8
               -> case coe v1 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v9
                      -> case coe v8 of
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                             -> case coe v4 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v13
                                    -> case coe v2 of
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v14
                                           -> coe
                                                MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
                                                (coe
                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                   (coe
                                                      d_'60''45'trans_3202 (coe v5) (coe v9)
                                                      (coe v14) (coe v10) (coe v13)))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v13
                                    -> case coe v2 of
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v14
                                           -> coe
                                                MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48
                                                (d_'60''45'trans_3202
                                                   (coe v5) (coe v9) (coe v14) (coe v10) (coe v13))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                             -> case coe v4 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v13
                                    -> coe
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
                                         (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v13))
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v13
                                    -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v13
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v8
               -> case coe v1 of
                    MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v9
                      -> case coe v4 of
                           MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42 v12
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v13
                                    -> case coe v12 of
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                           -> coe
                                                MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
                                                (coe
                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                   (coe
                                                      d_'60''45'trans_3202 (coe v5) (coe v9)
                                                      (coe v13) (coe v8) (coe v14)))
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                           -> coe
                                                MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
                                                (coe
                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                   (coe v8))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v12
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v13
                                    -> coe
                                         MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48
                                         (d_'60''45'trans_3202
                                            (coe v5) (coe v9) (coe v13) (coe v8) (coe v12))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.<-asym
d_'60''45'asym_3244 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3244 = erased
-- Data.Nat.Binary.Properties.<-cmp
d_'60''45'cmp_3250 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3250 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                    (coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20)
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                    (coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                    (coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20)
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
               -> let v4 = d_'60''45'cmp_3250 (coe v2) (coe v3) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v5
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe du_lt_3270 (coe v5))
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v6
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe du_gt_3286 (coe v7))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
               -> let v4 = d_'60''45'cmp_3250 (coe v2) (coe v3) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v5
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe du_lt_3306 (coe v5))
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v6
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe du_gt_3316)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe du_gt_3330 (coe v7))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                    (coe du_gt_3336)
             MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v3
               -> let v4 = d_'60''45'cmp_3250 (coe v2) (coe v3) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v5
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe du_lt_3356 (coe v5))
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v6
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe du_lt_3368 erased)
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe du_gt_3380 (coe v7))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v3
               -> let v4 = d_'60''45'cmp_3250 (coe v2) (coe v3) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v5
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                              (coe du_lt_3400 (coe v5))
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v6
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v7
                         -> coe
                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                              (coe du_gt_3416 (coe v7))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties._.lt
d_lt_3270 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_lt_3270 ~v0 ~v1 v2 ~v3 ~v4 = du_lt_3270 v2
du_lt_3270 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_lt_3270 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v0
-- Data.Nat.Binary.Properties._.gt
d_gt_3286 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_gt_3286 ~v0 ~v1 ~v2 ~v3 v4 = du_gt_3286 v4
du_gt_3286 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_gt_3286 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30 v0
-- Data.Nat.Binary.Properties._.lt
d_lt_3306 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_lt_3306 ~v0 ~v1 v2 ~v3 ~v4 = du_lt_3306 v2
du_lt_3306 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_lt_3306 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v0
-- Data.Nat.Binary.Properties._.gt
d_gt_3316 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_gt_3316 ~v0 ~v1 ~v2 = du_gt_3316
du_gt_3316 :: MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_gt_3316 = coe du_1'43''91'2x'93''60'2'91'1'43'x'93'_3006
-- Data.Nat.Binary.Properties._.gt
d_gt_3330 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_gt_3330 ~v0 ~v1 ~v2 ~v3 v4 = du_gt_3330 v4
du_gt_3330 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_gt_3330 v0
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v0))
-- Data.Nat.Binary.Properties._.gt
d_gt_3336 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_gt_3336 ~v0 = du_gt_3336
du_gt_3336 :: MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_gt_3336 = coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24
-- Data.Nat.Binary.Properties._.lt
d_lt_3356 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_lt_3356 ~v0 ~v1 v2 ~v3 ~v4 = du_lt_3356 v2
du_lt_3356 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_lt_3356 v0
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v0))
-- Data.Nat.Binary.Properties._.lt
d_lt_3368 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_lt_3368 ~v0 ~v1 ~v2 v3 ~v4 = du_lt_3368 v3
du_lt_3368 ::
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_lt_3368 v0
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v0))
-- Data.Nat.Binary.Properties._.gt
d_gt_3380 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_gt_3380 ~v0 ~v1 ~v2 ~v3 v4 = du_gt_3380 v4
du_gt_3380 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_gt_3380 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36 v0
-- Data.Nat.Binary.Properties._.lt
d_lt_3400 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_lt_3400 ~v0 ~v1 v2 ~v3 ~v4 = du_lt_3400 v2
du_lt_3400 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_lt_3400 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v0
-- Data.Nat.Binary.Properties._.gt
d_gt_3416 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_gt_3416 ~v0 ~v1 ~v2 ~v3 v4 = du_gt_3416 v4
du_gt_3416 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_gt_3416 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48 v0
-- Data.Nat.Binary.Properties._<?_
d__'60''63'__3418 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3418
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_tri'8658'dec'60'_528
      (coe d_'60''45'cmp_3250)
-- Data.Nat.Binary.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3420 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_3420
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14045
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      d_'60''45'trans_3202
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
-- Data.Nat.Binary.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3422 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_3422
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24953
      (coe d_'60''45'isStrictPartialOrder_3420) (coe d_'60''45'cmp_3250)
-- Data.Nat.Binary.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3424 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_3424
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11097
      d_'60''45'isStrictPartialOrder_3420
-- Data.Nat.Binary.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_3426
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_21059
      d_'60''45'isStrictTotalOrder_3422
-- Data.Nat.Binary.Properties.x<2[1+x]
d_x'60'2'91'1'43'x'93'_3430 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'2'91'1'43'x'93'_3430 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v1
        -> coe
             MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'even_30
             (d_x'60'2'91'1'43'x'93'_3430 (coe v1))
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v1
        -> coe
             MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'even_42
             (coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe d_x'60'1'43''91'2x'93'_3434 (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.x<1+[2x]
d_x'60'1'43''91'2x'93'_3434 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'1'43''91'2x'93'_3434 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v1
        -> coe
             MAlonzo.Code.Data.Nat.Binary.Base.C_even'60'odd_36
             (d_x'60'2'91'1'43'x'93'_3430 (coe v1))
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v1
        -> coe
             MAlonzo.Code.Data.Nat.Binary.Base.C_odd'60'odd_48
             (d_x'60'1'43''91'2x'93'_3434 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.<⇒≱
d_'60''8658''8817'_3444 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_3444 = erased
-- Data.Nat.Binary.Properties.≤⇒≯
d_'8804''8658''8815'_3454 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_3454 = erased
-- Data.Nat.Binary.Properties.≮⇒≥
d_'8814''8658''8805'_3460 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8814''8658''8805'_3460 v0 v1 ~v2
  = du_'8814''8658''8805'_3460 v0 v1
du_'8814''8658''8805'_3460 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8814''8658''8805'_3460 v0 v1
  = let v2 = d_'60''45'cmp_3250 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe du_'60''8658''8804'_3058 v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties.≰⇒>
d_'8816''8658''62'_3496 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'8816''8658''62'_3496 v0 v1 ~v2 = du_'8816''8658''62'_3496 v0 v1
du_'8816''8658''62'_3496 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'8816''8658''62'_3496 v0 v1
  = let v2 = d_'60''45'cmp_3250 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5 -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_3536 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'8804''8743''8802''8658''60'_3536 ~v0 ~v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_3536 v2
du_'8804''8743''8802''8658''60'_3536 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'8804''8743''8802''8658''60'_3536 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1 -> coe v1
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.0≤x
d_0'8804'x_3546 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_0'8804'x_3546 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v1
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'even_20)
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v1
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe MAlonzo.Code.Data.Nat.Binary.Base.C_0'60'odd_24)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.x≤0⇒x≡0
d_x'8804'0'8658'x'8801'0_3550 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8804'0'8658'x'8801'0_3550 = erased
-- Data.Nat.Binary.Properties.fromℕ-mono-≤
d_fromℕ'45'mono'45''8804'_3554 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_fromℕ'45'mono'45''8804'_3554 v0 v1 v2
  = let v3
          = MAlonzo.Code.Data.Nat.Properties.d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_3108
              (coe v0) (coe v1)
              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v2) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe du_fromℕ'45'mono'45''60'_3190 (coe v0) (coe v1))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties.toℕ-mono-≤
d_toℕ'45'mono'45''8804'_3570 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_toℕ'45'mono'45''8804'_3570 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854
             (coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v3))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2772
             (coe
                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v4 v5 -> v4) v0 v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.toℕ-cancel-≤
d_toℕ'45'cancel'45''8804'_3578 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_toℕ'45'cancel'45''8804'_3578 v0 v1 v2
  = coe
      d_fromℕ'45'mono'45''8804'_3554
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1)) (coe v2)
-- Data.Nat.Binary.Properties.fromℕ-cancel-≤
d_fromℕ'45'cancel'45''8804'_3584 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_fromℕ'45'cancel'45''8804'_3584 v0 v1 v2
  = coe
      d_toℕ'45'mono'45''8804'_3570
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v0))
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v1))
      (coe v2)
-- Data.Nat.Binary.Properties.toℕ-isHomomorphism-≤
d_toℕ'45'isHomomorphism'45''8804'_3586 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℕ'45'isHomomorphism'45''8804'_3586
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5435
      erased (coe d_toℕ'45'mono'45''8804'_3570)
-- Data.Nat.Binary.Properties.toℕ-isMonomorphism-≤
d_toℕ'45'isMonomorphism'45''8804'_3588 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℕ'45'isMonomorphism'45''8804'_3588
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9103
      (coe d_toℕ'45'isHomomorphism'45''8804'_3586) erased
      (coe d_toℕ'45'cancel'45''8804'_3578)
-- Data.Nat.Binary.Properties.≤-refl
d_'8804''45'refl_3590 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'refl_3590 ~v0 = du_'8804''45'refl_3590
du_'8804''45'refl_3590 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8804''45'refl_3590
  = coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Binary.Properties.≤-reflexive
d_'8804''45'reflexive_3592 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'reflexive_3592 ~v0 ~v1 ~v2
  = du_'8804''45'reflexive_3592
du_'8804''45'reflexive_3592 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8804''45'reflexive_3592 = coe du_'8804''45'refl_3590
-- Data.Nat.Binary.Properties.≤-trans
d_'8804''45'trans_3596 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'trans_3596 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_trans_64
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
      (coe d_'60''45'trans_3202) (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties.<-≤-trans
d_'60''45''8804''45'trans_3604 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'60''45''8804''45'trans_3604 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> coe
             d_'60''45'trans_3202 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.≤-<-trans
d_'8804''45''60''45'trans_3618 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'8804''45''60''45'trans_3618 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> coe
             d_'60''45'trans_3202 (coe v0) (coe v1) (coe v2) (coe v5) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.≤-antisym
d_'8804''45'antisym_3626 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3626 = erased
-- Data.Nat.Binary.Properties.≤-total
d_'8804''45'total_3628 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3628 v0 v1
  = let v2 = d_'60''45'cmp_3250 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe du_'60''8658''8804'_3058 v3)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe du_'8804''45'reflexive_3592)
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                (coe du_'60''8658''8804'_3058 v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties._≤?_
d__'8804''63'__3656 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3656 v0 v1
  = let v2 = d_'60''45'cmp_3250 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe du_'60''8658''8804'_3058 v3))
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe du_'8804''45'reflexive_3592))
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties.≤-isPreorder
d_'8804''45'isPreorder_3684 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_3684
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_4003
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3592)
      (coe d_'8804''45'trans_3596)
-- Data.Nat.Binary.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3686 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_3686
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9853
      (coe d_'8804''45'isPreorder_3684) erased
-- Data.Nat.Binary.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3688 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_3688
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20555
      (coe d_'8804''45'isPartialOrder_3686) (coe d_'8804''45'total_3628)
-- Data.Nat.Binary.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3690 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_3690
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22695
      (coe d_'8804''45'isTotalOrder_3688) (coe d__'8799'__2766)
      (coe d__'8804''63'__3656)
-- Data.Nat.Binary.Properties.≤-preorder
d_'8804''45'preorder_3692 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_3692
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2267
      d_'8804''45'isPreorder_3684
-- Data.Nat.Binary.Properties.≤-partialOrder
d_'8804''45'partialOrder_3694 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8804''45'partialOrder_3694
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6389
      d_'8804''45'isPartialOrder_3686
-- Data.Nat.Binary.Properties.≤-totalOrder
d_'8804''45'totalOrder_3696 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_'8804''45'totalOrder_3696
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_15747
      d_'8804''45'isTotalOrder_3688
-- Data.Nat.Binary.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3698 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_3698
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17849
      d_'8804''45'isDecTotalOrder_3690
-- Data.Nat.Binary.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3704 a0 a1 = ()
-- Data.Nat.Binary.Properties.≤-Reasoning._._∎
d__'8718'_3706 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3706
  = let v0 = d_'8804''45'isPreorder_3684 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Nat.Binary.Properties.≤-Reasoning._.<-go
d_'60''45'go_3708 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3708
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe d_'60''45'trans_3202)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
      (coe d_'60''45''8804''45'trans_3604)
-- Data.Nat.Binary.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3710 a0 a1 a2 = ()
-- Data.Nat.Binary.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3712 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3712 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Nat.Binary.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3714 a0 a1 a2 = ()
-- Data.Nat.Binary.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3716 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3716 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Nat.Binary.Properties.≤-Reasoning._.begin_
d_begin__3718 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_begin__3718
  = let v0 = d_'8804''45'isPreorder_3684 in
    coe
      (let v1 = \ v1 v2 -> coe du_'60''8658''8804'_3058 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Nat.Binary.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3720 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3720 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Nat.Binary.Properties.≤-Reasoning._.begin_
d_begin__3722 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3722 = erased
-- Data.Nat.Binary.Properties.≤-Reasoning._.begin_
d_begin__3724 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_begin__3724
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Nat.Binary.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3726 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3726
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Nat.Binary.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3730 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3730 = erased
-- Data.Nat.Binary.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3732 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_extractStrict_3732 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Nat.Binary.Properties.≤-Reasoning._.start
d_start_3740 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_start_3740
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_3684)
      (\ v0 v1 -> coe du_'60''8658''8804'_3058)
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-<
d_step'45''60'_3742 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3742
  = let v0 = d_'60''45'trans_3202 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160 in
       coe
         (let v2 = d_'60''45''8804''45'trans_3604 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3744 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3744
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3746 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3746 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3746 v2
du_step'45''8801''45''8739'_3746 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3746 v0 = coe v0
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3748 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3748
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3750 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3750
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3752 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3752
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Binary.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3754 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3754
  = let v0 = d_'8804''45'isPreorder_3684 in
    coe
      (let v1 = d_'8804''45''60''45'trans_3618 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Nat.Binary.Properties.≤-Reasoning._.stop
d_stop_3756 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3756
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_3684)
-- Data.Nat.Binary.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3760 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3760
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Nat.Binary.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3762 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3762
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_3684)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
-- Data.Nat.Binary.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3764 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3764 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3764 v4
du_'8801''45'go_3764 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3764 v0 = coe v0
-- Data.Nat.Binary.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3766 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3766
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_3684)
      (coe d_'8804''45''60''45'trans_3618)
-- Data.Nat.Binary.Properties.<⇒<ℕ
d_'60''8658''60'ℕ_3788 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''60'ℕ_3788 v0 v1 v2
  = coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties.<ℕ⇒<
d_'60'ℕ'8658''60'_3796 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'60'ℕ'8658''60'_3796 v0 v1 ~v2 = du_'60'ℕ'8658''60'_3796 v0 v1
du_'60'ℕ'8658''60'_3796 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'60'ℕ'8658''60'_3796 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v2) (coe v0) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v3 v4 v5 v6 v7 -> v7) v0
            (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_3202)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                  (coe d_'60''45''8804''45'trans_3604))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1)))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1)))
                  v1 v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_3684))
                     (coe v1))
                  erased)
               (coe
                  du_fromℕ'45'mono'45''60'_3190
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v3 v4 -> v4) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0
                     v1)))
            erased))
-- Data.Nat.Binary.Properties.toℕ-homo-+
d_toℕ'45'homo'45''43'_3812 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'homo'45''43'_3812 = erased
-- Data.Nat.Binary.Properties._.m
d_m_3844 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_m_3844 v0 ~v1 = du_m_3844 v0
du_m_3844 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_3844 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_3846 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_n_3846 ~v0 v1 = du_n_3846 v1
du_n_3846 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_3846 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m
d_m_3862 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_m_3862 v0 ~v1 = du_m_3862 v0
du_m_3862 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_3862 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_3864 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_n_3864 ~v0 v1 = du_n_3864 v1
du_n_3864 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_3864 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m
d_m_3880 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_m_3880 v0 ~v1 = du_m_3880 v0
du_m_3880 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_3880 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_3882 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_n_3882 ~v0 v1 = du_n_3882 v1
du_n_3882 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_3882 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties.toℕ-isMagmaHomomorphism-+
d_toℕ'45'isMagmaHomomorphism'45''43'_3890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_toℕ'45'isMagmaHomomorphism'45''43'_3890
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_toℕ'45'isRelHomomorphism_2960) erased
-- Data.Nat.Binary.Properties.toℕ-isMonoidHomomorphism-+
d_toℕ'45'isMonoidHomomorphism'45''43'_3892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_toℕ'45'isMonoidHomomorphism'45''43'_3892
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe d_toℕ'45'isMagmaHomomorphism'45''43'_3890) erased
-- Data.Nat.Binary.Properties.toℕ-isMonoidMonomorphism-+
d_toℕ'45'isMonoidMonomorphism'45''43'_3894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_toℕ'45'isMonoidMonomorphism'45''43'_3894
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_10237
      (coe d_toℕ'45'isMonoidHomomorphism'45''43'_3892) erased
-- Data.Nat.Binary.Properties.suc≗1+
d_suc'8791'1'43'_3898 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'8791'1'43'_3898 = erased
-- Data.Nat.Binary.Properties.suc-+
d_suc'45''43'_3904 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''43'_3904 = erased
-- Data.Nat.Binary.Properties.1+≗suc
d_1'43''8791'suc_3930 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'43''8791'suc_3930 = erased
-- Data.Nat.Binary.Properties.fromℕ'-homo-+
d_fromℕ'''45'homo'45''43'_3936 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'''45'homo'45''43'_3936 = erased
-- Data.Nat.Binary.Properties._.a
d_a_3946 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_a_3946 v0 ~v1 = du_a_3946 v0
du_a_3946 ::
  Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_a_3946 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ''_168 (coe v0)
-- Data.Nat.Binary.Properties._.b
d_b_3948 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_b_3948 ~v0 v1 = du_b_3948 v1
du_b_3948 ::
  Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_b_3948 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ''_168 (coe v0)
-- Data.Nat.Binary.Properties.fromℕ-homo-+
d_fromℕ'45'homo'45''43'_3954 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'homo'45''43'_3954 = erased
-- Data.Nat.Binary.Properties.+-assoc
d_'43''45'assoc_4014 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4014 = erased
-- Data.Nat.Binary.Properties.+-comm
d_'43''45'comm_4016 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4016 = erased
-- Data.Nat.Binary.Properties.+-identityˡ
d_'43''45'identity'737'_4018 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4018 = erased
-- Data.Nat.Binary.Properties.+-identityʳ
d_'43''45'identity'691'_4020 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4020 = erased
-- Data.Nat.Binary.Properties.+-identity
d_'43''45'identity_4022 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4022
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Binary.Properties.+-cancelˡ-≡
d_'43''45'cancel'737''45''8801'_4024 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8801'_4024 = erased
-- Data.Nat.Binary.Properties.+-cancelʳ-≡
d_'43''45'cancel'691''45''8801'_4026 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691''45''8801'_4026 = erased
-- Data.Nat.Binary.Properties.+-isMagma
d_'43''45'isMagma_4028 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'43''45'isMagma_4028
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_isMagma_14
-- Data.Nat.Binary.Properties.+-isSemigroup
d_'43''45'isSemigroup_4030 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'43''45'isSemigroup_4030
  = coe
      MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d_'43''45'0'45'rawMonoid_202))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86
         (coe MAlonzo.Code.Data.Nat.Base.d_'43''45'0'45'rawMonoid_182))
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe d_toℕ'45'isMonoidMonomorphism'45''43'_3894))
      (coe MAlonzo.Code.Data.Nat.Properties.d_'43''45'isSemigroup_3318)
-- Data.Nat.Binary.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_4032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_548
d_'43''45'isCommutativeSemigroup_4032
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_12093
      (coe d_'43''45'isSemigroup_4030) erased
-- Data.Nat.Binary.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_4034 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'43''45'0'45'isMonoid_4034
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d_'43''45'0'45'rawMonoid_202)
      (coe MAlonzo.Code.Data.Nat.Base.d_'43''45'0'45'rawMonoid_182)
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150)
      (coe d_toℕ'45'isMonoidMonomorphism'45''43'_3894)
      (coe MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isMonoid_3322)
-- Data.Nat.Binary.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4036 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'43''45'0'45'isCommutativeMonoid_4036
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d_'43''45'0'45'rawMonoid_202)
      (coe MAlonzo.Code.Data.Nat.Base.d_'43''45'0'45'rawMonoid_182)
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150)
      (coe d_toℕ'45'isMonoidMonomorphism'45''43'_3894)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isCommutativeMonoid_3324)
-- Data.Nat.Binary.Properties.+-magma
d_'43''45'magma_4038 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'43''45'magma_4038
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_magma_20
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110)
-- Data.Nat.Binary.Properties.+-semigroup
d_'43''45'semigroup_4040 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'43''45'semigroup_4040
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9793
      MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
      d_'43''45'isSemigroup_4030
-- Data.Nat.Binary.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_4042 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_662
d_'43''45'commutativeSemigroup_4042
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_12035
      MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
      d_'43''45'isCommutativeSemigroup_4032
-- Data.Nat.Binary.Properties.+-0-monoid
d_'43''45'0'45'monoid_4044 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_'43''45'0'45'monoid_4044
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16157
      MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
      (coe MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10)
      d_'43''45'0'45'isMonoid_4034
-- Data.Nat.Binary.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4046 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_'43''45'0'45'commutativeMonoid_4046
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
      MAlonzo.Code.Data.Nat.Binary.Base.d_0'7495'_180
      d_'43''45'0'45'isCommutativeMonoid_4036
-- Data.Nat.Binary.Properties.Bin+CSemigroup.alternative
d_alternative_4050 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alternative_4050
  = let v0 = d_'43''45'commutativeSemigroup_4042 in
    coe
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Structures.d_assoc_482
                 (MAlonzo.Code.Algebra.Structures.d_isSemigroup_556
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_682
                       (coe v0)))
                 v1 v1 v2))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                 (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isMagma_480
                       (coe
                          MAlonzo.Code.Algebra.Structures.d_isSemigroup_556
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_682
                             (coe v0)))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'8729'__680 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__680 v0 v1 v2) v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'8729'__680 v0 v1
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__680 v0 v2 v2))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_assoc_482
                    (MAlonzo.Code.Algebra.Structures.d_isSemigroup_556
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_682
                          (coe v0)))
                    v1 v2 v2))))
-- Data.Nat.Binary.Properties.Bin+CSemigroup.alternativeʳ
d_alternative'691'_4052 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'691'_4052 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.alternativeˡ
d_alternative'737'_4054 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_alternative'737'_4054 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.flexible
d_flexible_4056 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flexible_4056 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.interchange
d_interchange_4058 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_interchange_4058 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.middleSemimedial
d_middleSemimedial_4060 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleSemimedial_4060 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.semimedial
d_semimedial_4062 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semimedial_4062
  = coe
      MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_semimedial_572
      (coe d_'43''45'commutativeSemigroup_4042)
-- Data.Nat.Binary.Properties.Bin+CSemigroup.semimedialʳ
d_semimedial'691'_4064 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'691'_4064 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.semimedialˡ
d_semimedial'737'_4066 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_semimedial'737'_4066 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙xx≈x∙yxx
d_xy'8729'xx'8776'x'8729'yxx_4068 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'xx'8776'x'8729'yxx_4068 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈xz∙y
d_xy'8729'z'8776'xz'8729'y_4070 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'xz'8729'y_4070 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈x∙zy
d_xy'8729'z'8776'x'8729'zy_4072 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'x'8729'zy_4072 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈yx∙z
d_xy'8729'z'8776'yx'8729'z_4074 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'yx'8729'z_4074 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈yz∙x
d_xy'8729'z'8776'yz'8729'x_4076 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'yz'8729'x_4076 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈y∙xz
d_xy'8729'z'8776'y'8729'xz_4078 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'y'8729'xz_4078 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈y∙zx
d_xy'8729'z'8776'y'8729'zx_4080 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'y'8729'zx_4080 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈zx∙y
d_xy'8729'z'8776'zx'8729'y_4082 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'zx'8729'y_4082 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈zy∙x
d_xy'8729'z'8776'zy'8729'x_4084 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'zy'8729'x_4084 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈z∙xy
d_xy'8729'z'8776'z'8729'xy_4086 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'z'8729'xy_4086 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.xy∙z≈z∙yx
d_xy'8729'z'8776'z'8729'yx_4088 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xy'8729'z'8776'z'8729'yx_4088 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈xy∙z
d_x'8729'yz'8776'xy'8729'z_4090 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'xy'8729'z_4090 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈xz∙y
d_x'8729'yz'8776'xz'8729'y_4092 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'xz'8729'y_4092 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈x∙zy
d_x'8729'yz'8776'x'8729'zy_4094 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'x'8729'zy_4094 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈yx∙z
d_x'8729'yz'8776'yx'8729'z_4096 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'yx'8729'z_4096 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈yz∙x
d_x'8729'yz'8776'yz'8729'x_4098 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'yz'8729'x_4098 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈y∙xz
d_x'8729'yz'8776'y'8729'xz_4100 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'y'8729'xz_4100 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈y∙zx
d_x'8729'yz'8776'y'8729'zx_4102 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'y'8729'zx_4102 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈zx∙y
d_x'8729'yz'8776'zx'8729'y_4104 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'zx'8729'y_4104 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈zy∙x
d_x'8729'yz'8776'zy'8729'x_4106 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'zy'8729'x_4106 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈z∙xy
d_x'8729'yz'8776'z'8729'xy_4108 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'z'8729'xy_4108 = erased
-- Data.Nat.Binary.Properties.Bin+CSemigroup.x∙yz≈z∙yx
d_x'8729'yz'8776'z'8729'yx_4110 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8729'yz'8776'z'8729'yx_4110 = erased
-- Data.Nat.Binary.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4112 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''45'mono'45''8804'_4112 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v6 v7 -> coe du_'60''8658''8804'_3058))
      (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v6 v7 v8 v9 v10 -> v10)
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v2))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe du_m_4130 (coe v0)))
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe du_n_4134 (coe v2))))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v6 v7 v8 v9 v10 -> v10)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe du_m_4130 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe du_n_4134 (coe v2))))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe addInt (coe du_n_4134 (coe v2)) (coe du_m_4130 (coe v0))))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_3684)
                  (coe d_'8804''45''60''45'trans_3618))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe addInt (coe du_n_4134 (coe v2)) (coe du_m_4130 (coe v0))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe
                     addInt (coe du_n'8242'_4136 (coe v3))
                     (coe du_m'8242'_4132 (coe v1))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v6 v7 v8 v9 v10 -> v10)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe
                        addInt (coe du_n'8242'_4136 (coe v3))
                        (coe du_m'8242'_4132 (coe v1))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                        (coe du_m'8242'_4132 (coe v1)))
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                        (coe du_n'8242'_4136 (coe v3))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v6 v7 v8 v9 v10 -> v10)
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe du_m'8242'_4132 (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe du_n'8242'_4136 (coe v3))))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_3684))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3)))
                     erased)
                  erased)
               (d_fromℕ'45'mono'45''8804'_3554
                  (coe
                     addInt
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v6 v7 -> v6) v0 v1)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v6 v7 -> v6) v2 v3))
                  (coe
                     addInt
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v6 v7 -> v7) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v6 v7 -> v7) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v2 v3))
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''8804'_3530
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v6 v7 -> v7) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v2 v3)
                     (coe du_m'8804'm'8242'_4138 (coe v0) (coe v1) (coe v4))
                     (coe du_n'8804'n'8242'_4140 (coe v2) (coe v3) (coe v5)))))
            erased)
         erased)
-- Data.Nat.Binary.Properties._.m
d_m_4130 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_m_4130 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_m_4130 v0
du_m_4130 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4130 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m′
d_m'8242'_4132 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_m'8242'_4132 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_m'8242'_4132 v1
du_m'8242'_4132 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m'8242'_4132 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_4134 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_n_4134 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_n_4134 v2
du_n_4134 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4134 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n′
d_n'8242'_4136 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_n'8242'_4136 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_n'8242'_4136 v3
du_n'8242'_4136 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n'8242'_4136 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m≤m′
d_m'8804'm'8242'_4138 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'8242'_4138 v0 v1 ~v2 ~v3 v4 ~v5
  = du_m'8804'm'8242'_4138 v0 v1 v4
du_m'8804'm'8242'_4138 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'8242'_4138 v0 v1 v2
  = coe d_toℕ'45'mono'45''8804'_3570 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties._.n≤n′
d_n'8804'n'8242'_4140 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'n'8242'_4140 ~v0 ~v1 v2 v3 ~v4 v5
  = du_n'8804'n'8242'_4140 v2 v3 v5
du_n'8804'n'8242'_4140 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_n'8804'n'8242'_4140 v0 v1 v2
  = coe d_toℕ'45'mono'45''8804'_3570 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4146 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''45'mono'737''45''8804'_4146 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4112 (coe v1) (coe v2) (coe v0) (coe v0)
      (coe v3) (coe du_'8804''45'refl_3590)
-- Data.Nat.Binary.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4156 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''45'mono'691''45''8804'_4156 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4112 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe du_'8804''45'refl_3590) (coe v3)
-- Data.Nat.Binary.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_4162 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'43''45'mono'45''60''45''8804'_4162 v0 v1 v2 v3 ~v4 ~v5
  = du_'43''45'mono'45''60''45''8804'_4162 v0 v1 v2 v3
du_'43''45'mono'45''60''45''8804'_4162 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'43''45'mono'45''60''45''8804'_4162 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v4)
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v2))
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v5 v6 v7 v8 v9 -> v9)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v2))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe du_m_4180 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe du_n_4182 (coe v2))))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v5 v6 v7 v8 v9 -> v9)
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe du_m_4180 (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe du_n_4182 (coe v2))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe addInt (coe du_n_4182 (coe v2)) (coe du_m_4180 (coe v0))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe d_'60''45'trans_3202)
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                     (coe d_'60''45''8804''45'trans_3604))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe addInt (coe du_n_4182 (coe v2)) (coe du_m_4180 (coe v0))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe
                        addInt (coe du_n'8242'_4186 (coe v3))
                        (coe du_m'8242'_4184 (coe v1))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v5 v6 v7 v8 v9 -> v9)
                     (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                        (coe
                           addInt (coe du_n'8242'_4186 (coe v3))
                           (coe du_m'8242'_4184 (coe v1))))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe du_m'8242'_4184 (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe du_n'8242'_4186 (coe v3))))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                        (\ v5 v6 v7 v8 v9 -> v9)
                        (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                              (coe du_m'8242'_4184 (coe v1)))
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                              (coe du_n'8242'_4186 (coe v3))))
                        (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                        (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_3684))
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v3)))
                        erased)
                     erased)
                  (coe
                     du_fromℕ'45'mono'45''60'_3190
                     (coe
                        addInt
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                           MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v5 v6 -> v5) v2 v3)
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
                     (coe
                        addInt
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                           (\ v5 v6 -> v6) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v2
                           v3))))
               erased)
            erased))
-- Data.Nat.Binary.Properties._.m
d_m_4180 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_m_4180 v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_m_4180 v0
du_m_4180 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4180 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_4182 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_n_4182 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_n_4182 v2
du_n_4182 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4182 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m′
d_m'8242'_4184 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_m'8242'_4184 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_m'8242'_4184 v1
du_m'8242'_4184 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m'8242'_4184 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n′
d_n'8242'_4186 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_n'8242'_4186 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_n'8242'_4186 v3
du_n'8242'_4186 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n'8242'_4186 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m<m′
d_m'60'm'8242'_4188 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'8242'_4188 v0 v1 ~v2 ~v3 v4 ~v5
  = du_m'60'm'8242'_4188 v0 v1 v4
du_m'60'm'8242'_4188 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'8242'_4188 v0 v1 v2
  = coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties._.n≤n′
d_n'8804'n'8242'_4190 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'n'8242'_4190 ~v0 ~v1 v2 v3 ~v4 v5
  = du_n'8804'n'8242'_4190 v2 v3 v5
du_n'8804'n'8242'_4190 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_n'8804'n'8242'_4190 v0 v1 v2
  = coe d_toℕ'45'mono'45''8804'_3570 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Binary.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4192 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'43''45'mono'45''8804''45''60'_4192 v0 v1 v2 v3 ~v4 ~v5
  = du_'43''45'mono'45''8804''45''60'_4192 v0 v1 v2 v3
du_'43''45'mono'45''8804''45''60'_4192 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'43''45'mono'45''8804''45''60'_4192 v0 v1 v2 v3
  = coe
      du_y'43'x'60'y'8242''43'x'8242'_4210 (coe v0) (coe v1) (coe v2)
      (coe v3)
-- Data.Nat.Binary.Properties._.y+x<y′+x′
d_y'43'x'60'y'8242''43'x'8242'_4210 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_y'43'x'60'y'8242''43'x'8242'_4210 v0 v1 v2 v3 ~v4 ~v5
  = du_y'43'x'60'y'8242''43'x'8242'_4210 v0 v1 v2 v3
du_y'43'x'60'y'8242''43'x'8242'_4210 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_y'43'x'60'y'8242''43'x'8242'_4210 v0 v1 v2 v3
  = coe
      du_'43''45'mono'45''60''45''8804'_4162 (coe v2) (coe v3) (coe v0)
      (coe v1)
-- Data.Nat.Binary.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4216 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'43''45'mono'737''45''60'_4216 v0 v1 v2 ~v3
  = du_'43''45'mono'737''45''60'_4216 v0 v1 v2
du_'43''45'mono'737''45''60'_4216 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'43''45'mono'737''45''60'_4216 v0 v1 v2
  = coe
      du_'43''45'mono'45''60''45''8804'_4162 (coe v1) (coe v2) (coe v0)
      (coe v0)
-- Data.Nat.Binary.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4226 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'43''45'mono'691''45''60'_4226 v0 v1 v2 ~v3
  = du_'43''45'mono'691''45''60'_4226 v0 v1 v2
du_'43''45'mono'691''45''60'_4226 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'43''45'mono'691''45''60'_4226 v0 v1 v2
  = coe
      du_'43''45'mono'45''8804''45''60'_4192 (coe v0) (coe v0) (coe v1)
      (coe v2)
-- Data.Nat.Binary.Properties.x≤y+x
d_x'8804'y'43'x_4236 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'8804'y'43'x_4236 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v2 v3 -> coe du_'60''8658''8804'_3058))
      v0
      (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v2 v3 v4 v5 v6 -> v6) v0
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
            (coe MAlonzo.Code.Data.Nat.Binary.Base.d_0'7495'_180) (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3684)
               (coe d_'8804''45''60''45'trans_3618))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_0'7495'_180) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3684))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0)))
            (d_'43''45'mono'737''45''8804'_4146
               (coe v0) (coe MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10) (coe v1)
               (coe d_0'8804'x_3546 (coe v1))))
         erased)
-- Data.Nat.Binary.Properties.x≤x+y
d_x'8804'x'43'y_4250 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'8804'x'43'y_4250 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v2 v3 -> coe du_'60''8658''8804'_3058))
      v0
      (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_3684)
            (coe d_'8804''45''60''45'trans_3618))
         v0
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v1) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3684))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1)))
            erased)
         (d_x'8804'y'43'x_4236 (coe v0) (coe v1)))
-- Data.Nat.Binary.Properties.x<x+y
d_x'60'x'43'y_4264 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'x'43'y_4264 v0 v1 ~v2 = du_x'60'x'43'y_4264 v0 v1
du_x'60'x'43'y_4264 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_x'60'x'43'y_4264 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v2) (coe v0)
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v3 v4 v5 v6 v7 -> v7) v0
            (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_3202)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                  (coe d_'60''45''8804''45'trans_3604))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe
                     addInt (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe
                        addInt (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1))))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_3684))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v1)))
                     erased)
                  erased)
               (coe
                  du_fromℕ'45'mono'45''60'_3190
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
                  (coe
                     addInt
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v3 v4 -> v4) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                        MAlonzo.Code.Data.Nat.Binary.Base.d_0'7495'_180 v1)
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)))))
            erased))
-- Data.Nat.Binary.Properties.x<x+1
d_x'60'x'43'1_4278 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'x'43'1_4278 v0
  = coe
      du_x'60'x'43'y_4264 (coe v0)
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182)
-- Data.Nat.Binary.Properties.x<1+x
d_x'60'1'43'x_4284 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'1'43'x_4284 v0 = coe d_x'60'x'43'1_4278 (coe v0)
-- Data.Nat.Binary.Properties.x<1⇒x≡0
d_x'60'1'8658'x'8801'0_4292 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'60'1'8658'x'8801'0_4292 = erased
-- Data.Nat.Binary.Properties.x≢0⇒x+y≢0
d_x'8802'0'8658'x'43'y'8802'0_4298 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_x'8802'0'8658'x'43'y'8802'0_4298 = erased
-- Data.Nat.Binary.Properties.2*ₙ2*ₙ
d_2'42''8345'2'42''8345'_4302 :: Integer -> Integer
d_2'42''8345'2'42''8345'_4302 v0
  = coe
      mulInt (coe (2 :: Integer))
      (coe mulInt (coe (2 :: Integer)) (coe v0))
-- Data.Nat.Binary.Properties.toℕ-homo-*
d_toℕ'45'homo'45''42'_4312 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℕ'45'homo'45''42'_4312 = erased
-- Data.Nat.Binary.Properties._.aux
d_aux_4328 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_aux_4328 = erased
-- Data.Nat.Binary.Properties._._.m
d_m_4346 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_m_4346 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_m_4346 v2
du_m_4346 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4346 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.n
d_n_4348 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_n_4348 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_n_4348 v3
du_n_4348 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4348 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.xy
d_xy_4350 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_xy_4350 ~v0 ~v1 v2 v3 ~v4 ~v5 = du_xy_4350 v2 v3
du_xy_4350 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_xy_4350 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v1)
-- Data.Nat.Binary.Properties._._.|x|+|y|≤cnt
d_'124'x'124''43''124'y'124''8804'cnt_4352 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'124'x'124''43''124'y'124''8804'cnt_4352 ~v0 ~v1 v2 v3 ~v4 v5
  = du_'124'x'124''43''124'y'124''8804'cnt_4352 v2 v3 v5
du_'124'x'124''43''124'y'124''8804'cnt_4352 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'124'x'124''43''124'y'124''8804'cnt_4352 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2784
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3554
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_size_174 (coe v0))
         (coe
            addInt (coe (1 :: Integer))
            (coe MAlonzo.Code.Data.Nat.Binary.Base.d_size_174 (coe v1)))
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2844
            (coe MAlonzo.Code.Data.Nat.Binary.Base.d_size_174 (coe v1))))
      (coe v2)
-- Data.Nat.Binary.Properties._._.m
d_m_4376 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_m_4376 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_m_4376 v2
du_m_4376 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4376 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.n
d_n_4378 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_n_4378 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_n_4378 v3
du_n_4378 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4378 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.1+m
d_1'43'm_4380 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_1'43'm_4380 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_1'43'm_4380 v2
du_1'43'm_4380 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_1'43'm_4380 v0
  = coe addInt (coe (1 :: Integer)) (coe du_m_4376 (coe v0))
-- Data.Nat.Binary.Properties._._.2[1+m]
d_2'91'1'43'm'93'_4382 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_2'91'1'43'm'93'_4382 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_2'91'1'43'm'93'_4382 v2
du_2'91'1'43'm'93'_4382 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_2'91'1'43'm'93'_4382 v0
  = coe
      mulInt (coe (2 :: Integer))
      (coe addInt (coe (1 :: Integer)) (coe du_m_4376 (coe v0)))
-- Data.Nat.Binary.Properties._._.eq
d_eq_4384 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eq_4384 = erased
-- Data.Nat.Binary.Properties._._.|y|+1+|x|≤cnt
d_'124'y'124''43'1'43''124'x'124''8804'cnt_4386 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'124'y'124''43'1'43''124'x'124''8804'cnt_4386 ~v0 ~v1 ~v2 ~v3 ~v4
                                                v5
  = du_'124'y'124''43'1'43''124'x'124''8804'cnt_4386 v5
du_'124'y'124''43'1'43''124'x'124''8804'cnt_4386 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'124'y'124''43'1'43''124'x'124''8804'cnt_4386 v0 = coe v0
-- Data.Nat.Binary.Properties._._.m
d_m_4412 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_m_4412 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_m_4412 v2
du_m_4412 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4412 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.n
d_n_4414 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_n_4414 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_n_4414 v3
du_n_4414 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4414 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.1+n
d_1'43'n_4416 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_1'43'n_4416 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_1'43'n_4416 v3
du_1'43'n_4416 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_1'43'n_4416 v0
  = coe addInt (coe (1 :: Integer)) (coe du_n_4414 (coe v0))
-- Data.Nat.Binary.Properties._._.2m
d_2m_4418 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_2m_4418 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_2m_4418 v2
du_2m_4418 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_2m_4418 v0
  = coe mulInt (coe (2 :: Integer)) (coe du_m_4412 (coe v0))
-- Data.Nat.Binary.Properties._._.2[1+n]
d_2'91'1'43'n'93'_4420 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_2'91'1'43'n'93'_4420 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_2'91'1'43'n'93'_4420 v3
du_2'91'1'43'n'93'_4420 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_2'91'1'43'n'93'_4420 v0
  = coe
      mulInt (coe (2 :: Integer))
      (coe addInt (coe (1 :: Integer)) (coe du_n_4414 (coe v0)))
-- Data.Nat.Binary.Properties._._.m
d_m_4444 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_m_4444 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_m_4444 v2
du_m_4444 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4444 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.n
d_n_4446 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_n_4446 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_n_4446 v3
du_n_4446 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4446 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._._.2m
d_2m_4448 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_2m_4448 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_2m_4448 v2
du_2m_4448 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_2m_4448 v0
  = coe mulInt (coe (2 :: Integer)) (coe du_m_4444 (coe v0))
-- Data.Nat.Binary.Properties._._.2n
d_2n_4450 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_2n_4450 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_2n_4450 v3
du_2n_4450 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_2n_4450 v0
  = coe mulInt (coe (2 :: Integer)) (coe du_n_4446 (coe v0))
-- Data.Nat.Binary.Properties._._.1+2x
d_1'43'2x_4452 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_1'43'2x_4452 ~v0 ~v1 v2 ~v3 ~v4 ~v5 = du_1'43'2x_4452 v2
du_1'43'2x_4452 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_1'43'2x_4452 v0
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 (coe v0)
-- Data.Nat.Binary.Properties._._.[1+2x]′
d_'91'1'43'2x'93''8242'_4454 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_'91'1'43'2x'93''8242'_4454 ~v0 ~v1 v2 ~v3 ~v4 ~v5
  = du_'91'1'43'2x'93''8242'_4454 v2
du_'91'1'43'2x'93''8242'_4454 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_'91'1'43'2x'93''8242'_4454 v0
  = coe
      MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
      (coe du_1'43'2x_4452 (coe v0))
-- Data.Nat.Binary.Properties._._.eq
d_eq_4456 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_eq_4456 = erased
-- Data.Nat.Binary.Properties._._.|y|+1+|x|≤cnt
d_'124'y'124''43'1'43''124'x'124''8804'cnt_4458 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'124'y'124''43'1'43''124'x'124''8804'cnt_4458 ~v0 ~v1 ~v2 ~v3 ~v4
                                                v5
  = du_'124'y'124''43'1'43''124'x'124''8804'cnt_4458 v5
du_'124'y'124''43'1'43''124'x'124''8804'cnt_4458 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'124'y'124''43'1'43''124'x'124''8804'cnt_4458 v0 = coe v0
-- Data.Nat.Binary.Properties.toℕ-isMagmaHomomorphism-*
d_toℕ'45'isMagmaHomomorphism'45''42'_4472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_toℕ'45'isMagmaHomomorphism'45''42'_4472
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_4629
      (coe d_toℕ'45'isRelHomomorphism_2960) erased
-- Data.Nat.Binary.Properties.toℕ-isMonoidHomomorphism-*
d_toℕ'45'isMonoidHomomorphism'45''42'_4474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_toℕ'45'isMonoidHomomorphism'45''42'_4474
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_9411
      (coe d_toℕ'45'isMagmaHomomorphism'45''42'_4472) erased
-- Data.Nat.Binary.Properties.toℕ-isMonoidMonomorphism-*
d_toℕ'45'isMonoidMonomorphism'45''42'_4476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_toℕ'45'isMonoidMonomorphism'45''42'_4476
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_10237
      (coe d_toℕ'45'isMonoidHomomorphism'45''42'_4474) erased
-- Data.Nat.Binary.Properties.fromℕ-homo-*
d_fromℕ'45'homo'45''42'_4482 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℕ'45'homo'45''42'_4482 = erased
-- Data.Nat.Binary.Properties._.a
d_a_4492 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_a_4492 v0 ~v1 = du_a_4492 v0
du_a_4492 ::
  Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_a_4492 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v0)
-- Data.Nat.Binary.Properties._.b
d_b_4494 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_b_4494 ~v0 v1 = du_b_4494 v1
du_b_4494 ::
  Integer -> MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_b_4494 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156 (coe v0)
-- Data.Nat.Binary.Properties._.m≡aN
d_m'8801'aN_4496 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'aN_4496 = erased
-- Data.Nat.Binary.Properties._.n≡bN
d_n'8801'bN_4498 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801'bN_4498 = erased
-- Data.Nat.Binary.Properties.*-assoc
d_'42''45'assoc_4542 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_4542 = erased
-- Data.Nat.Binary.Properties.*-comm
d_'42''45'comm_4544 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_4544 = erased
-- Data.Nat.Binary.Properties.*-identityˡ
d_'42''45'identity'737'_4546 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_4546 = erased
-- Data.Nat.Binary.Properties.*-identityʳ
d_'42''45'identity'691'_4548 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_4548 = erased
-- Data.Nat.Binary.Properties.*-identity
d_'42''45'identity_4552 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_4552
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Binary.Properties.*-zeroˡ
d_'42''45'zero'737'_4554 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_4554 = erased
-- Data.Nat.Binary.Properties.*-zeroʳ
d_'42''45'zero'691'_4556 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_4556 = erased
-- Data.Nat.Binary.Properties.*-zero
d_'42''45'zero_4558 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_4558
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Binary.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_4560 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_4560 = erased
-- Data.Nat.Binary.Properties._.k
d_k_4572 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_k_4572 v0 ~v1 ~v2 = du_k_4572 v0
du_k_4572 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_k_4572 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.m
d_m_4574 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_m_4574 ~v0 v1 ~v2 = du_m_4574 v1
du_m_4574 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_4574 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_4576 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
d_n_4576 ~v0 ~v1 v2 = du_n_4576 v2
du_n_4576 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_4576 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_4580 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_4580 = erased
-- Data.Nat.Binary.Properties.*-distrib-+
d_'42''45'distrib'45''43'_4582 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_4582
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Binary.Properties.*-isMagma
d_'42''45'isMagma_4584 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_176
d_'42''45'isMagma_4584
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_isMagma_14
-- Data.Nat.Binary.Properties.*-isSemigroup
d_'42''45'isSemigroup_4586 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_472
d_'42''45'isSemigroup_4586
  = coe
      MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d_'42''45'1'45'rawMonoid_206))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_86
         (coe MAlonzo.Code.Data.Nat.Base.d_'42''45'1'45'rawMonoid_186))
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe d_toℕ'45'isMonoidMonomorphism'45''42'_4476))
      (coe MAlonzo.Code.Data.Nat.Properties.d_'42''45'isSemigroup_3746)
-- Data.Nat.Binary.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_4588 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_686
d_'42''45'1'45'isMonoid_4588
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d_'42''45'1'45'rawMonoid_206)
      (coe MAlonzo.Code.Data.Nat.Base.d_'42''45'1'45'rawMonoid_186)
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150)
      (coe d_toℕ'45'isMonoidMonomorphism'45''42'_4476)
      (coe MAlonzo.Code.Data.Nat.Properties.d_'42''45'1'45'isMonoid_3750)
-- Data.Nat.Binary.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_4590 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_736
d_'42''45'1'45'isCommutativeMonoid_4590
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d_'42''45'1'45'rawMonoid_206)
      (coe MAlonzo.Code.Data.Nat.Base.d_'42''45'1'45'rawMonoid_186)
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150)
      (coe d_toℕ'45'isMonoidMonomorphism'45''42'_4476)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'42''45'1'45'isCommutativeMonoid_3752)
-- Data.Nat.Binary.Properties.+-*-isSemiringWithoutAnnihilatingZero
d_'43''45''42''45'isSemiringWithoutAnnihilatingZero_4592 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468
d_'43''45''42''45'isSemiringWithoutAnnihilatingZero_4592
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_43811
      (coe d_'43''45'0'45'isCommutativeMonoid_4036) erased erased
      (coe d_'42''45'identity_4552) (coe d_'42''45'distrib'45''43'_4582)
-- Data.Nat.Binary.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_4594 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1570
d_'43''45''42''45'isSemiring_4594
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_48071
      (coe d_'43''45''42''45'isSemiringWithoutAnnihilatingZero_4592)
      (coe d_'42''45'zero_4558)
-- Data.Nat.Binary.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_4596 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1678
d_'43''45''42''45'isCommutativeSemiring_4596
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_51895
      (coe d_'43''45''42''45'isSemiring_4594) erased
-- Data.Nat.Binary.Properties.*-magma
d_'42''45'magma_4598 :: MAlonzo.Code.Algebra.Bundles.T_Magma_68
d_'42''45'magma_4598
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_1279
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
      d_'42''45'isMagma_4584
-- Data.Nat.Binary.Properties.*-semigroup
d_'42''45'semigroup_4600 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_536
d_'42''45'semigroup_4600
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_9793
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
      d_'42''45'isSemigroup_4586
-- Data.Nat.Binary.Properties.*-1-monoid
d_'42''45'1'45'monoid_4602 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_'42''45'1'45'monoid_4602
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_16157
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
      MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182
      d_'42''45'1'45'isMonoid_4588
-- Data.Nat.Binary.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_4604 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_'42''45'1'45'commutativeMonoid_4604
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
      MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182
      d_'42''45'1'45'isCommutativeMonoid_4590
-- Data.Nat.Binary.Properties.+-*-semiring
d_'43''45''42''45'semiring_4606 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_'43''45''42''45'semiring_4606
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_41765
      MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
      (coe MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10)
      MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182
      d_'43''45''42''45'isSemiring_4594
-- Data.Nat.Binary.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_4608 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2446
d_'43''45''42''45'commutativeSemiring_4608
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_44731
      MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
      MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
      (coe MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10)
      MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182
      d_'43''45''42''45'isCommutativeSemiring_4596
-- Data.Nat.Binary.Properties.*-mono-≤
d_'42''45'mono'45''8804'_4610 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'42''45'mono'45''8804'_4610 v0 v1 v2 v3 v4 v5
  = coe
      d_toℕ'45'cancel'45''8804'_3578
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
            (\ v6 v7 v8 ->
               coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2854 v8))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2)))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v6 v7 v8 v9 v10 -> v10)
            (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2)))
            (mulInt
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v2)))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810)
                  (\ v6 v7 v8 v9 v10 ->
                     coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2986 v9
                       v10))
               (mulInt
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v2)))
               (mulInt
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v3)))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v6 v7 v8 v9 v10 -> v10)
                  (mulInt
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1))
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v3)))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3)))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3)))
                  (let v6
                         = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2810 in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe v6))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1)
                              (coe v3)))))
                  erased)
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'45''8804'_4060
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v6 v7 -> v7) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v3))
                  (coe d_toℕ'45'mono'45''8804'_3570 (coe v0) (coe v1) (coe v4))
                  (coe d_toℕ'45'mono'45''8804'_3570 (coe v2) (coe v3) (coe v5))))
            erased))
-- Data.Nat.Binary.Properties.*-monoʳ-≤
d_'42''45'mono'691''45''8804'_4632 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'42''45'mono'691''45''8804'_4632 v0 v1 v2 v3
  = coe
      d_'42''45'mono'45''8804'_4610 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe du_'8804''45'refl_3590) (coe v3)
-- Data.Nat.Binary.Properties.*-monoˡ-≤
d_'42''45'mono'737''45''8804'_4642 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'42''45'mono'737''45''8804'_4642 v0 v1 v2 v3
  = coe
      d_'42''45'mono'45''8804'_4610 (coe v1) (coe v2) (coe v0) (coe v0)
      (coe v3) (coe du_'8804''45'refl_3590)
-- Data.Nat.Binary.Properties.*-mono-<
d_'42''45'mono'45''60'_4648 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'42''45'mono'45''60'_4648 v0 v1 v2 v3 ~v4 ~v5
  = du_'42''45'mono'45''60'_4648 v0 v1 v2 v3
du_'42''45'mono'45''60'_4648 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'42''45'mono'45''60'_4648 v0 v1 v2 v3
  = coe
      du_toℕ'45'cancel'45''60'_3122
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v3))
-- Data.Nat.Binary.Properties.*-monoʳ-<
d_'42''45'mono'691''45''60'_4670 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'42''45'mono'691''45''60'_4670 v0 v1 v2 ~v3
  = du_'42''45'mono'691''45''60'_4670 v0 v1 v2
du_'42''45'mono'691''45''60'_4670 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'42''45'mono'691''45''60'_4670 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v3)
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
            (coe v1))
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v4 v5 v6 v7 v8 -> v8)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
               (coe v1))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v1))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v1)))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
               (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v4 v5 v6 v7 v8 -> v8)
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v1))
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v1)))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe v1)
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v1)))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                  (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (coe d_'60''45'trans_3202)
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                     (coe d_'60''45''8804''45'trans_3604))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe v1)
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v1)))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe v2)
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2)))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                     (coe v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v4 v5 v6 v7 v8 -> v8)
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe v2)
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2)))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                           (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v2))
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2)))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                           (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                        (coe v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                        (\ v4 v5 v6 v7 v8 -> v8)
                        (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                              (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v2))
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2)))
                        (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                              (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                           (coe v2))
                        (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                              (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                           (coe v2))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_3684))
                           (coe
                              MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                              (coe
                                 MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                                 (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                              (coe v2)))
                        erased)
                     erased)
                  (coe
                     du_'43''45'mono'45''60''45''8804'_4162 (coe v1) (coe v2)
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v1))
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v0) (coe v2))))
               erased)
            erased))
-- Data.Nat.Binary.Properties.*-monoˡ-<
d_'42''45'mono'737''45''60'_4692 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_'42''45'mono'737''45''60'_4692 v0 v1 v2 ~v3
  = du_'42''45'mono'737''45''60'_4692 v0 v1 v2
du_'42''45'mono'737''45''60'_4692 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_'42''45'mono'737''45''60'_4692 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v3)
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1)
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v2)
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v4 v5 v6 v7 v8 -> v8)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe v1)
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
               (coe v1))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe v2)
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_3202)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                  (coe d_'60''45''8804''45'trans_3604))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                  (coe v1))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                  (coe v2))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe v2)
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
                     (coe v2))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                     (coe v2)
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                     (coe v2)
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_3684))
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v2)
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                           (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))))
                  erased)
               (coe du_'42''45'mono'691''45''60'_4670 (coe v0) (coe v1) (coe v2)))
            erased))
-- Data.Nat.Binary.Properties.x*y≡0⇒x≡0∨y≡0
d_x'42'y'8801'0'8658'x'8801'0'8744'y'8801'0_4710 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'42'y'8801'0'8658'x'8801'0'8744'y'8801'0_4710 v0 v1 ~v2
  = du_x'42'y'8801'0'8658'x'8801'0'8744'y'8801'0_4710 v0 v1
du_x'42'y'8801'0'8658'x'8801'0'8744'y'8801'0_4710 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_x'42'y'8801'0'8658'x'8801'0'8744'y'8801'0_4710 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Binary.Base.C_zero_10
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 v2
        -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
      MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 v2
        -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.x≢0∧y≢0⇒x*y≢0
d_x'8802'0'8743'y'8802'0'8658'x'42'y'8802'0_4716 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_x'8802'0'8743'y'8802'0'8658'x'42'y'8802'0_4716 = erased
-- Data.Nat.Binary.Properties.2*x≡x+x
d_2'42'x'8801'x'43'x_4752 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_2'42'x'8801'x'43'x_4752 = erased
-- Data.Nat.Binary.Properties.1+-*
d_1'43''45''42'_4764 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'43''45''42'_4764 = erased
-- Data.Nat.Binary.Properties.*-1+
d_'42''45'1'43'_4780 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'1'43'_4780 = erased
-- Data.Nat.Binary.Properties.double[x]≡0⇒x≡0
d_double'91'x'93''8801'0'8658'x'8801'0_4792 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_double'91'x'93''8801'0'8658'x'8801'0_4792 = erased
-- Data.Nat.Binary.Properties.x≡0⇒double[x]≡0
d_x'8801'0'8658'double'91'x'93''8801'0_4794 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'8801'0'8658'double'91'x'93''8801'0_4794 = erased
-- Data.Nat.Binary.Properties.x≢0⇒double[x]≢0
d_x'8802'0'8658'double'91'x'93''8802'0_4796 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_x'8802'0'8658'double'91'x'93''8802'0_4796 = erased
-- Data.Nat.Binary.Properties.double≢1
d_double'8802'1_4800 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_double'8802'1_4800 = erased
-- Data.Nat.Binary.Properties.double≗2*
d_double'8791'2'42'_4804 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_double'8791'2'42'_4804 = erased
-- Data.Nat.Binary.Properties.double-*-assoc
d_double'45''42''45'assoc_4816 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_double'45''42''45'assoc_4816 = erased
-- Data.Nat.Binary.Properties.double[x]≡x+x
d_double'91'x'93''8801'x'43'x_4830 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_double'91'x'93''8801'x'43'x_4830 = erased
-- Data.Nat.Binary.Properties.double-distrib-+
d_double'45'distrib'45''43'_4838 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_double'45'distrib'45''43'_4838 = erased
-- Data.Nat.Binary.Properties.double-mono-≤
d_double'45'mono'45''8804'_4848 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_double'45'mono'45''8804'_4848 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v3 v4 -> coe du_'60''8658''8804'_3058))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v3 v4 v5 v6 v7 -> v7)
         (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
            (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3684)
               (coe d_'8804''45''60''45'trans_3618))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v1))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v1))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1)))
               erased)
            (d_'42''45'mono'691''45''8804'_4632
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v0)
               (coe v1) (coe v2)))
         erased)
-- Data.Nat.Binary.Properties.double-mono-<
d_double'45'mono'45''60'_4860 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_double'45'mono'45''60'_4860 v0 v1 ~v2
  = du_double'45'mono'45''60'_4860 v0 v1
du_double'45'mono'45''60'_4860 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_double'45'mono'45''60'_4860 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v2)
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe d_'60''45'trans_3202)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
                  (coe d_'60''45''8804''45'trans_3604))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v0))
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v1))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_2'7495'_184) (coe v1))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_3684))
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v1)))
                  erased)
               (coe
                  du_'42''45'mono'691''45''60'_4670
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)
                  (coe v1)))
            erased))
-- Data.Nat.Binary.Properties.double-cancel-≤
d_double'45'cancel'45''8804'_4876 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_double'45'cancel'45''8804'_4876 v0 v1 ~v2
  = du_double'45'cancel'45''8804'_4876 v0 v1
du_double'45'cancel'45''8804'_4876 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_double'45'cancel'45''8804'_4876 v0 v1
  = let v2 = d_'60''45'cmp_3250 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3
           -> coe du_'60''8658''8804'_3058 v3
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe du_'8804''45'reflexive_3592
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties.double-cancel-<
d_double'45'cancel'45''60'_4916 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_double'45'cancel'45''60'_4916 v0 v1 ~v2
  = du_double'45'cancel'45''60'_4916 v0 v1
du_double'45'cancel'45''60'_4916 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_double'45'cancel'45''60'_4916 v0 v1
  = let v2 = d_'60''45'cmp_3250 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v3 -> coe v3
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v4
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Binary.Properties.x<double[x]
d_x'60'double'91'x'93'_4952 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'double'91'x'93'_4952 v0 ~v1
  = du_x'60'double'91'x'93'_4952 v0
du_x'60'double'91'x'93'_4952 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_x'60'double'91'x'93'_4952 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v1) (coe v0)
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (coe d_'60''45'trans_3202)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
               (coe d_'60''45''8804''45'trans_3604))
            v0
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v0))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0)))
               erased)
            (coe du_x'60'x'43'y_4264 (coe v0) (coe v0))))
-- Data.Nat.Binary.Properties.x≤double[x]
d_x'8804'double'91'x'93'_4964 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'8804'double'91'x'93'_4964 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v1 v2 -> coe du_'60''8658''8804'_3058))
      v0 (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_3684)
            (coe d_'8804''45''60''45'trans_3618))
         v0
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v1 v2 v3 v4 v5 -> v5)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110 (coe v0) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3684))
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0)))
            erased)
         (d_x'8804'x'43'y_4250 (coe v0) (coe v0)))
-- Data.Nat.Binary.Properties.double-suc
d_double'45'suc_4974 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_double'45'suc_4974 = erased
-- Data.Nat.Binary.Properties.suc≢0
d_suc'8802'0_4982 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_suc'8802'0_4982 = erased
-- Data.Nat.Binary.Properties.suc-injective
d_suc'45'injective_4984 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_4984 = erased
-- Data.Nat.Binary.Properties.2[1+_]-double-suc
d_2'91'1'43'_'93''45'double'45'suc_5006 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_2'91'1'43'_'93''45'double'45'suc_5006 = erased
-- Data.Nat.Binary.Properties.1+[2_]-suc-double
d_1'43''91'2_'93''45'suc'45'double_5012 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'43''91'2_'93''45'suc'45'double_5012 = erased
-- Data.Nat.Binary.Properties._.2x
d_2x_5022 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_2x_5022 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0)
-- Data.Nat.Binary.Properties.x+suc[y]≡suc[x]+y
d_x'43'suc'91'y'93''8801'suc'91'x'93''43'y_5028 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_x'43'suc'91'y'93''8801'suc'91'x'93''43'y_5028 = erased
-- Data.Nat.Binary.Properties.0<suc
d_0'60'suc_5040 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_0'60'suc_5040 v0
  = coe
      du_x'8802'0'8658'x'62'0_3000
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
-- Data.Nat.Binary.Properties.x<suc[x]
d_x'60'suc'91'x'93'_5046 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_x'60'suc'91'x'93'_5046 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v1) (coe v0)
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (coe d_'60''45'trans_3202)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
               (coe d_'60''45''8804''45'trans_3604))
            v0
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0)))
               erased)
            (d_x'60'1'43'x_4284 (coe v0))))
-- Data.Nat.Binary.Properties.x≤suc[x]
d_x'8804'suc'91'x'93'_5056 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'8804'suc'91'x'93'_5056 v0
  = coe du_'60''8658''8804'_3058 (d_x'60'suc'91'x'93'_5046 (coe v0))
-- Data.Nat.Binary.Properties.x≢suc[x]
d_x'8802'suc'91'x'93'_5062 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_x'8802'suc'91'x'93'_5062 = erased
-- Data.Nat.Binary.Properties.suc-mono-≤
d_suc'45'mono'45''8804'_5066 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_suc'45'mono'45''8804'_5066 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v3 v4 -> coe du_'60''8658''8804'_3058))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v3 v4 v5 v6 v7 -> v7)
         (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
            (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_3684)
               (coe d_'8804''45''60''45'trans_3618))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v1))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v1))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1)))
               erased)
            (d_'43''45'mono'691''45''8804'_4156
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_1'7495'_182) (coe v0)
               (coe v1) (coe v2)))
         erased)
-- Data.Nat.Binary.Properties.suc[x]≤y⇒x<y
d_suc'91'x'93''8804'y'8658'x'60'y_5082 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_suc'91'x'93''8804'y'8658'x'60'y_5082 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe
             d_'60''45'trans_3202 (coe v0)
             (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0)) (coe v1)
             (coe d_x'60'suc'91'x'93'_5046 (coe v0)) (coe v3)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe d_x'60'suc'91'x'93'_5046 (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Binary.Properties.x<y⇒suc[x]≤y
d_x'60'y'8658'suc'91'x'93''8804'y_5094 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'60'y'8658'suc'91'x'93''8804'y_5094 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v3 v4 -> coe du_'60''8658''8804'_3058))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0)) v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v3 v4 v5 v6 v7 -> v7)
         (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe
                  addInt (coe (1 :: Integer))
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_3684)
                  (coe d_'8804''45''60''45'trans_3618))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe
                     addInt (coe (1 :: Integer))
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1)))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v1)))
                  v1 v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe d_'8804''45'isPreorder_3684))
                     (coe v1))
                  erased)
               (d_fromℕ'45'mono'45''8804'_3554
                  (coe
                     addInt (coe (1 :: Integer))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v3 v4 -> v3) v0 v1))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v3 v4 -> v4) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1)
                  (coe d_toℕ'45'mono'45''60'_3060 (coe v0) (coe v1) (coe v2))))
            erased)
         erased)
-- Data.Nat.Binary.Properties.suc-*
d_suc'45''42'_5110 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''42'_5110 = erased
-- Data.Nat.Binary.Properties.*-suc
d_'42''45'suc_5126 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_5126 = erased
-- Data.Nat.Binary.Properties.x≤suc[y]*x
d_x'8804'suc'91'y'93''42'x_5142 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_x'8804'suc'91'y'93''42'x_5142 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v2 v3 -> coe du_'60''8658''8804'_3058))
      v0
      (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1)) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_3684)
            (coe d_'8804''45''60''45'trans_3618))
         v0
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
            (coe v0)
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v0)))
         (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
            (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1)) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6)
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'43'__110
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v0)))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1)) (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1)) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_3684))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v1))
                  (coe v0)))
            erased)
         (d_x'8804'x'43'y_4250
            (coe v0)
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d__'42'__132 (coe v1) (coe v0))))
-- Data.Nat.Binary.Properties.suc[x]≤double[x]
d_suc'91'x'93''8804'double'91'x'93'_5154 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_suc'91'x'93''8804'double'91'x'93'_5154 v0 ~v1
  = du_suc'91'x'93''8804'double'91'x'93'_5154 v0
du_suc'91'x'93''8804'double'91'x'93'_5154 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_suc'91'x'93''8804'double'91'x'93'_5154 v0
  = coe
      d_x'60'y'8658'suc'91'x'93''8804'y_5094 (coe v0)
      (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
      (coe du_x'60'double'91'x'93'_4952 (coe v0))
-- Data.Nat.Binary.Properties.suc[x]<2[1+x]
d_suc'91'x'93''60'2'91'1'43'x'93'_5160 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_suc'91'x'93''60'2'91'1'43'x'93'_5160 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v1) (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (coe d_'60''45'trans_3202)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
               (coe d_'60''45''8804''45'trans_3604))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0)))
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 (coe v0))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.C_2'91'1'43'_'93'_12 (coe v0)))
               erased)
            (coe
               du_x'60'double'91'x'93'_4952
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98 (coe v0)))))
-- Data.Nat.Binary.Properties.double[x]<1+[2x]
d_double'91'x'93''60'1'43''91'2x'93'_5170 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_double'91'x'93''60'1'43''91'2x'93'_5170 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v1)
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
         (coe
            MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (coe d_'60''45'trans_3202)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
               (coe d_'60''45''8804''45'trans_3604))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0)))
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 (coe v0))
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe
                     MAlonzo.Code.Data.Nat.Binary.Base.C_1'43''91'2_'93'_14 (coe v0)))
               erased)
            (d_x'60'suc'91'x'93'_5046
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_double_92 (coe v0)))))
-- Data.Nat.Binary.Properties.pred-suc
d_pred'45'suc_5178 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45'suc_5178 = erased
-- Data.Nat.Binary.Properties.suc-pred
d_suc'45'pred_5184 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_5184 = erased
-- Data.Nat.Binary.Properties.pred-mono-≤
d_pred'45'mono'45''8804'_5190 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pred'45'mono'45''8804'_5190 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_3684)
         (\ v3 v4 -> coe du_'60''8658''8804'_3058))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0))
      (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v3 v4 v5 v6 v7 -> v7)
         (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104
            (coe
               MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe du_m_5202 (coe v0))))
         (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104
               (coe
                  MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe du_m_5202 (coe v0))))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
               (coe
                  MAlonzo.Code.Data.Nat.Base.d_pred_192 (coe du_m_5202 (coe v0))))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe d_'8804''45'isPreorder_3684)
                  (coe d_'8804''45''60''45'trans_3618))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe
                     MAlonzo.Code.Data.Nat.Base.d_pred_192 (coe du_m_5202 (coe v0))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                  (coe
                     MAlonzo.Code.Data.Nat.Base.d_pred_192 (coe du_n_5204 (coe v1))))
               (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                     (coe
                        MAlonzo.Code.Data.Nat.Base.d_pred_192 (coe du_n_5204 (coe v1))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104
                     (coe
                        MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                        (coe du_n_5204 (coe v1))))
                  (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104
                        (coe
                           MAlonzo.Code.Data.Nat.Binary.Base.d_fromℕ_156
                           (coe du_n_5204 (coe v1))))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
                     (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_3684))
                        (coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v1)))
                     erased)
                  erased)
               (d_fromℕ'45'mono'45''8804'_3554
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                     MAlonzo.Code.Data.Nat.Base.d_pred_192 (\ v3 v4 -> v3)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v3 v4 -> v3) v0 v1)
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v3 v4 -> v4) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                     (\ v3 v4 -> v4) MAlonzo.Code.Data.Nat.Base.d_pred_192
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v3 v4 -> v3) v0 v1)
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v3 v4 -> v4) MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 v0 v1))
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_pred'45'mono'45''8804'_5676
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (\ v3 v4 -> v3) v0 v1)
                     (coe d_toℕ'45'mono'45''8804'_3570 (coe v0) (coe v1) (coe v2)))))
            erased)
         erased)
-- Data.Nat.Binary.Properties._.m
d_m_5202 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_m_5202 v0 ~v1 ~v2 = du_m_5202 v0
du_m_5202 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_m_5202 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties._.n
d_n_5204 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_n_5204 ~v0 v1 ~v2 = du_n_5204 v1
du_n_5204 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 -> Integer
du_n_5204 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_toℕ_150 (coe v0)
-- Data.Nat.Binary.Properties.pred[x]<x
d_pred'91'x'93''60'x_5206 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
d_pred'91'x'93''60'x_5206 v0 ~v1 = du_pred'91'x'93''60'x_5206 v0
du_pred'91'x'93''60'x_5206 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T__'60'__16
du_pred'91'x'93''60'x_5206 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v1)
         (coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0))
         (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (coe d_'60''45'trans_3202)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_160)
               (coe d_'60''45''8804''45'trans_3604))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0))
            (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0)))
            v0
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (MAlonzo.Code.Data.Nat.Binary.Base.d_suc_98
                  (coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0)))
               v0 v0
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_3684))
                  (coe v0))
               erased)
            (d_x'60'suc'91'x'93'_5046
               (coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0)))))
-- Data.Nat.Binary.Properties.pred[x]+y≡x+pred[y]
d_pred'91'x'93''43'y'8801'x'43'pred'91'y'93'_5220 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'91'x'93''43'y'8801'x'43'pred'91'y'93'_5220 = erased
-- Data.Nat.Binary.Properties._.px
d_px_5234 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_px_5234 v0 ~v1 ~v2 ~v3 = du_px_5234 v0
du_px_5234 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_px_5234 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0)
-- Data.Nat.Binary.Properties._.py
d_py_5236 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
d_py_5236 ~v0 v1 ~v2 ~v3 = du_py_5236 v1
du_py_5236 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8
du_py_5236 v0
  = coe MAlonzo.Code.Data.Nat.Binary.Base.d_pred_104 (coe v0)
-- Data.Nat.Binary.Properties.|x|≡0⇒x≡0
d_'124'x'124''8801'0'8658'x'8801'0_5246 ::
  MAlonzo.Code.Data.Nat.Binary.Base.T_ℕ'7495'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'124'x'124''8801'0'8658'x'8801'0_5246 = erased
-- Data.Nat.Binary.Properties.*-+-isSemiringWithoutAnnihilatingZero
d_'42''45''43''45'isSemiringWithoutAnnihilatingZero_5248 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1468
d_'42''45''43''45'isSemiringWithoutAnnihilatingZero_5248
  = coe d_'43''45''42''45'isSemiringWithoutAnnihilatingZero_4592
-- Data.Nat.Binary.Properties.*-+-isSemiring
d_'42''45''43''45'isSemiring_5250 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1570
d_'42''45''43''45'isSemiring_5250
  = coe d_'43''45''42''45'isSemiring_4594
-- Data.Nat.Binary.Properties.*-+-isCommutativeSemiring
d_'42''45''43''45'isCommutativeSemiring_5252 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1678
d_'42''45''43''45'isCommutativeSemiring_5252
  = coe d_'43''45''42''45'isCommutativeSemiring_4596
-- Data.Nat.Binary.Properties.*-+-semiring
d_'42''45''43''45'semiring_5254 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_'42''45''43''45'semiring_5254
  = coe d_'43''45''42''45'semiring_4606
-- Data.Nat.Binary.Properties.*-+-commutativeSemiring
d_'42''45''43''45'commutativeSemiring_5256 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2446
d_'42''45''43''45'commutativeSemiring_5256
  = coe d_'43''45''42''45'commutativeSemiring_4608
