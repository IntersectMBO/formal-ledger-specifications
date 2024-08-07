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

module MAlonzo.Code.Data.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Morphism
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Metric.Nat.Bundles
import qualified MAlonzo.Code.Function.Metric.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures.Biased
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Nat.Properties._._DistributesOver_
d__DistributesOver__10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver__10 = erased
-- Data.Nat.Properties._._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Nat.Properties._._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Nat.Properties._.Associative
d_Associative_30 :: (Integer -> Integer -> Integer) -> ()
d_Associative_30 = erased
-- Data.Nat.Properties._.Commutative
d_Commutative_32 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_32 = erased
-- Data.Nat.Properties._.Identity
d_Identity_48 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_48 = erased
-- Data.Nat.Properties._.LeftIdentity
d_LeftIdentity_72 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_72 = erased
-- Data.Nat.Properties._.LeftZero
d_LeftZero_80 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_80 = erased
-- Data.Nat.Properties._.RightIdentity
d_RightIdentity_100 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_100 = erased
-- Data.Nat.Properties._.RightZero
d_RightZero_108 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_108 = erased
-- Data.Nat.Properties._.Zero
d_Zero_128 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_128 = erased
-- Data.Nat.Properties._.IsAbelianGroup
d_IsAbelianGroup_132 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_134 a0 = ()
-- Data.Nat.Properties._.IsBand
d_IsBand_136 a0 = ()
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_138 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_140 a0 = ()
-- Data.Nat.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_142 a0 a1 = ()
-- Data.Nat.Properties._.IsCommutativeRing
d_IsCommutativeRing_144 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_146 a0 = ()
-- Data.Nat.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_148 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_150 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_152 a0 = ()
-- Data.Nat.Properties._.IsGroup
d_IsGroup_154 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_156 a0 a1 = ()
-- Data.Nat.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_158 a0 = ()
-- Data.Nat.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_160 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_162 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_164 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_166 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_168 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsLoop
d_IsLoop_170 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsMagma
d_IsMagma_172 a0 = ()
-- Data.Nat.Properties._.IsMedialMagma
d_IsMedialMagma_174 a0 = ()
-- Data.Nat.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_176 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsMonoid
d_IsMonoid_178 a0 a1 = ()
-- Data.Nat.Properties._.IsMoufangLoop
d_IsMoufangLoop_180 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsNearSemiring
d_IsNearSemiring_182 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsNearring
d_IsNearring_184 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_186 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsQuasigroup
d_IsQuasigroup_188 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsQuasiring
d_IsQuasiring_190 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsRightBolLoop
d_IsRightBolLoop_192 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsRing
d_IsRing_194 a0 a1 a2 a3 a4 = ()
-- Data.Nat.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_196 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_198 a0 = ()
-- Data.Nat.Properties._.IsSemigroup
d_IsSemigroup_200 a0 = ()
-- Data.Nat.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_202 a0 = ()
-- Data.Nat.Properties._.IsSemiring
d_IsSemiring_204 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_206 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_208 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsUnitalMagma
d_IsUnitalMagma_210 a0 a1 = ()
-- Data.Nat.Properties._.IsAbelianGroup.assoc
d_assoc_216 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_216 = erased
-- Data.Nat.Properties._.IsAbelianGroup.comm
d_comm_218 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_218 = erased
-- Data.Nat.Properties._.IsAbelianGroup.identity
d_identity_220 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Nat.Properties._.IsAbelianGroup.inverse
d_inverse_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_238 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))))
-- Data.Nat.Properties._.IsAbelianGroup.isGroup
d_isGroup_240 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_240 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)
-- Data.Nat.Properties._.IsAbelianGroup.isMagma
d_isMagma_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))))
-- Data.Nat.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_248 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Nat.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Nat.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_270 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_270 = erased
-- Data.Nat.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_272 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_272 = erased
-- Data.Nat.Properties._.IsAlternativeMagma.alter
d_alter_280 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_280 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_262 (coe v0)
-- Data.Nat.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_286 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0))
-- Data.Nat.Properties._.IsAlternativeMagma.isMagma
d_isMagma_288 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_288 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0)
-- Data.Nat.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_302 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_302 = erased
-- Data.Nat.Properties._.IsBand.assoc
d_assoc_310 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_310 = erased
-- Data.Nat.Properties._.IsBand.idem
d_idem_312 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_312 = erased
-- Data.Nat.Properties._.IsBand.isEquivalence
d_isEquivalence_314 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)))
-- Data.Nat.Properties._.IsBand.isMagma
d_isMagma_316 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0))
-- Data.Nat.Properties._.IsBand.isSemigroup
d_isSemigroup_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_320 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)
-- Data.Nat.Properties._.IsBand.∙-cong
d_'8729''45'cong_332 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_332 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_340 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_340 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_342 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_342 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_344 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_344 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_346 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_370 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_370 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_372 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_372 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_374 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_374 = erased
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
                     (coe v0))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_388 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_392 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
                        (coe v0)))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
                  (coe v0)))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_396 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
                     (coe v0))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
               (coe v0))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
      (coe v0)
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_410 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_410 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
                           (coe v0))))))))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_416 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
         (coe v0))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_418 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_418 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
            (coe v0)))
-- Data.Nat.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_432 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
            (coe v0)))
-- Data.Nat.Properties._.IsCommutativeMagma.comm
d_comm_440 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_440 = erased
-- Data.Nat.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_442 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMagma.isMagma
d_isMagma_444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_444 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0)
-- Data.Nat.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_458 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_458 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.assoc
d_assoc_466 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_466 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.comm
d_comm_468 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_468 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid.identity
d_identity_470 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_470 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_480 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_482 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_482 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_484 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)
-- Data.Nat.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_488 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Nat.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_502 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_512 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_512 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_514 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_514 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_516 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_516 = erased
-- Data.Nat.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2506
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.assoc
d_assoc_540 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_540 = erased
-- Data.Nat.Properties._.IsCommutativeRing.comm
d_comm_542 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_542 = erased
-- Data.Nat.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_544 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_544 = erased
-- Data.Nat.Properties._.IsCommutativeRing.identity
d_identity_550 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_550 v5
du_identity_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_550 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_identity_616
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                  (coe v1)))))
-- Data.Nat.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isGroup
d_isGroup_564 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_564 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_564 v5
du_isGroup_564 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_isGroup_564 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
            (coe v1)))
-- Data.Nat.Properties._.IsCommutativeRing.isMagma
d_isMagma_570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_570 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_570 v5
du_isMagma_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_570 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_992
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                     (coe v1))))))
-- Data.Nat.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_572 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_572 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_572 v5
du_isMonoid_572 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_isMonoid_572 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
               (coe v1))))
-- Data.Nat.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_574 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_574 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_574 v5
du_isSemigroup_574 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_574 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                  (coe v1)))))
-- Data.Nat.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_578 = erased
-- Data.Nat.Properties._.IsCommutativeRing.inverse
d_inverse_580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_580 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_580 v5
du_inverse_580 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_580 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_inverse_908
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
               (coe v1))))
-- Data.Nat.Properties._.IsCommutativeRing.distrib
d_distrib_586 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2508
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Nat.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_596 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_596 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_596 v5
du_isEquivalence_596 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_596 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
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
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                        (coe v1)))))))
-- Data.Nat.Properties._.IsCommutativeRing.isRing
d_isRing_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478
d_isRing_602 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0)
-- Data.Nat.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_604 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
d_isRingWithoutOne_604 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_604 v5
du_isRingWithoutOne_604 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
du_isRingWithoutOne_604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemigroup.assoc
d_assoc_634 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_634 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.comm
d_comm_636 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_636 = erased
-- Data.Nat.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_642 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_646 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_658 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_658 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_666 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_666 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_668 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_668 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_670 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_670 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_676 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.assoc
d_assoc_694 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_694 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.comm
d_comm_696 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_696 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_698 = erased
-- Data.Nat.Properties._.IsCommutativeSemiring.identity
d_identity_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_712 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_712 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_716 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_720 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))
-- Data.Nat.Properties._.IsCommutativeSemiring.distrib
d_distrib_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_732 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_732 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))))
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_738 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_740 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiring.zero
d_zero_754 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_754 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_766 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_766 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_768 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_770 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_784 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_784 = erased
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
            (coe v0)))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1170
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_804 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
      (coe v0)
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1172
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Nat.Properties._.IsFlexibleMagma.flex
d_flex_826 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_826 = erased
-- Data.Nat.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_828 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Nat.Properties._.IsFlexibleMagma.isMagma
d_isMagma_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_830 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Nat.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_844 = erased
-- Data.Nat.Properties._.IsGroup.assoc
d_assoc_854 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_854 = erased
-- Data.Nat.Properties._.IsGroup.identity
d_identity_856 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_856 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Nat.Properties._.IsGroup.inverse
d_inverse_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_862 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_908 (coe v0)
-- Data.Nat.Properties._.IsGroup.isEquivalence
d_isEquivalence_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))))
-- Data.Nat.Properties._.IsGroup.isMagma
d_isMagma_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)))
-- Data.Nat.Properties._.IsGroup.isMonoid
d_isMonoid_876 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_876 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)
-- Data.Nat.Properties._.IsGroup.isSemigroup
d_isSemigroup_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Nat.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_898 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_898 = erased
-- Data.Nat.Properties._.IsGroup.∙-cong
d_'8729''45'cong_900 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_900 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_908 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_908 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_910 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_910 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_912 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_912 = erased
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_924 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_928 v0
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
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_932 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Nat.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_950 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.idem
d_idem_958 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_958 = erased
-- Data.Nat.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_960 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Nat.Properties._.IsIdempotentMagma.isMagma
d_isMagma_962 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_962 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Nat.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_976 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_984 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_984 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_986 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_986 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_992 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.assoc
d_assoc_1004 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1004 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.comm
d_comm_1006 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1006 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1008 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1014 = erased
-- Data.Nat.Properties._.IsIdempotentSemiring.identity
d_identity_1016 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1024 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1024 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1032 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))
-- Data.Nat.Properties._.IsIdempotentSemiring.distrib
d_distrib_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1036 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Nat.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))))
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1048 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1048 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)
-- Data.Nat.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1050 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Nat.Properties._.IsIdempotentSemiring.zero
d_zero_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1064 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Nat.Properties._.IsInvertibleMagma.inverse
d_inverse_1072 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1072 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_796 (coe v0)
-- Data.Nat.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1078 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0))
-- Data.Nat.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1080 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1080 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0)
-- Data.Nat.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1094 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1094 = erased
-- Data.Nat.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1096 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1096 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1104 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1104 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_846 (coe v0)
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_794
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1118 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_1118 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_794
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1136 = erased
-- Data.Nat.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1138 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1146 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1146 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1148 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1148 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.assoc
d_assoc_1166 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1166 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.comm
d_comm_1168 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1168 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1170 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1176 = erased
-- Data.Nat.Properties._.IsKleeneAlgebra.identity
d_identity_1178 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1178 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
                     (coe v0))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1186 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
                        (coe v0)))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
                  (coe v0)))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1194 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
                     (coe v0))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.distrib
d_distrib_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
                           (coe v0))))))))
-- Data.Nat.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1206 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768
d_isIdempotentSemiring_1206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
      (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
         (coe v0))
-- Data.Nat.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1214 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
            (coe v0)))
-- Data.Nat.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1224 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1224 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_1902 (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1230 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_1900 (coe v0)
-- Data.Nat.Properties._.IsKleeneAlgebra.zero
d_zero_1240 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
            (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1248 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1248 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1254 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1254 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.identity
d_identity_1260 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Nat.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))))
-- Data.Nat.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1268 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1268 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)
-- Data.Nat.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1270 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Nat.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1276 = erased
-- Data.Nat.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1288 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Nat.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1300 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1300 = erased
-- Data.Nat.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1308 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1308 = erased
-- Data.Nat.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1314 = erased
-- Data.Nat.Properties._.IsLoop.identity
d_identity_1320 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1320 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_2870 (coe v0)
-- Data.Nat.Properties._.IsLoop.isEquivalence
d_isEquivalence_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)))
-- Data.Nat.Properties._.IsLoop.isMagma
d_isMagma_1328 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1328 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Nat.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1332 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)
-- Data.Nat.Properties._.IsLoop.leftDivides
d_leftDivides_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Nat.Properties._.IsLoop.rightDivides
d_rightDivides_1344 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Nat.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1356 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1356 = erased
-- Data.Nat.Properties._.IsMagma.isEquivalence
d_isEquivalence_1364 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1364 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v0)
-- Data.Nat.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1378 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1378 = erased
-- Data.Nat.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1386 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0))
-- Data.Nat.Properties._.IsMedialMagma.isMagma
d_isMagma_1388 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1388 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0)
-- Data.Nat.Properties._.IsMedialMagma.medial
d_medial_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1392 = erased
-- Data.Nat.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1404 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1412 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1412 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1418 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1418 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.identity
d_identity_1424 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Nat.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))))
-- Data.Nat.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1432 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1432 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)
-- Data.Nat.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1434 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Nat.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1440 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1446 = erased
-- Data.Nat.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1452 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Nat.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1464 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1464 = erased
-- Data.Nat.Properties._.IsMonoid.assoc
d_assoc_1472 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1472 = erased
-- Data.Nat.Properties._.IsMonoid.identity
d_identity_1474 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1474 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_616 (coe v0)
-- Data.Nat.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1480 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)))
-- Data.Nat.Properties._.IsMonoid.isMagma
d_isMagma_1482 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1482 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0))
-- Data.Nat.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1486 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)
-- Data.Nat.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1500 = erased
-- Data.Nat.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1508 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1508 = erased
-- Data.Nat.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1514 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identical
d_identical_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1520 = erased
-- Data.Nat.Properties._.IsMoufangLoop.identity
d_identity_1522 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1522 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_2946
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))
-- Data.Nat.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLoop_2946
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))))
-- Data.Nat.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1530 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932
d_isLeftBolLoop_1530 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)
-- Data.Nat.Properties._.IsMoufangLoop.isLoop
d_isLoop_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_2946
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))
-- Data.Nat.Properties._.IsMoufangLoop.isMagma
d_isMagma_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_2946
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))
-- Data.Nat.Properties._.IsMoufangLoop.leftBol
d_leftBol_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1540 = erased
-- Data.Nat.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1542 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.rightBol
d_rightBol_1552 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1552 = erased
-- Data.Nat.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1554 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1554 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Nat.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1566 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1566 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1574 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1574 = erased
-- Data.Nat.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1576 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1576 = erased
-- Data.Nat.Properties._.IsNearSemiring.assoc
d_assoc_1586 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1586 = erased
-- Data.Nat.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1588 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1588 = erased
-- Data.Nat.Properties._.IsNearSemiring.identity
d_identity_1594 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.isMagma
d_isMagma_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)))
-- Data.Nat.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1602 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)
-- Data.Nat.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Nat.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1608 = erased
-- Data.Nat.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))))
-- Data.Nat.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1624 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1624 = erased
-- Data.Nat.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1628 = erased
-- Data.Nat.Properties._.IsNearring.*-cong
d_'42''45'cong_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1630 = erased
-- Data.Nat.Properties._.IsNearring.*-identity
d_'42''45'identity_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Nat.Properties._.IsNearring.assoc
d_assoc_1648 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1648 = erased
-- Data.Nat.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1650 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1650 = erased
-- Data.Nat.Properties._.IsNearring.identity
d_identity_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))
-- Data.Nat.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2386 (coe v0)
-- Data.Nat.Properties._.IsNearring.isMagma
d_isMagma_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1668 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))))
-- Data.Nat.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1670 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1670 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Nat.Properties._.IsNearring.isSemigroup
d_isSemigroup_1672 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))
-- Data.Nat.Properties._.IsNearring.distrib
d_distrib_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2038
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Nat.Properties._.IsNearring.isEquivalence
d_isEquivalence_1686 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1686 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))))
-- Data.Nat.Properties._.IsNearring.isQuasiring
d_isQuasiring_1690 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008
d_isQuasiring_1690 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)
-- Data.Nat.Properties._.IsNearring.zero
d_zero_1702 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1702 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2040
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Nat.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1708 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1708 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1714 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1714 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2262 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.assoc
d_assoc_1730 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1730 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.comm
d_comm_1732 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1732 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1734 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.identity
d_identity_1740 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
               (coe v0))))
-- Data.Nat.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_1746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
      (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1754 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_1754 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
         (coe v0))
-- Data.Nat.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_1760 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
                  (coe v0)))))
-- Data.Nat.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_1762 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1762 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
            (coe v0)))
-- Data.Nat.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
               (coe v0))))
-- Data.Nat.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1768 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1768 = erased
-- Data.Nat.Properties._.IsNonAssociativeRing.inverse
d_inverse_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
            (coe v0)))
-- Data.Nat.Properties._.IsNonAssociativeRing.distrib
d_distrib_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1776 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2264 (coe v0)
-- Data.Nat.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1782 v0
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
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
                     (coe v0))))))
-- Data.Nat.Properties._.IsNonAssociativeRing.zero
d_zero_1800 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1800 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2266 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1808 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1808 = erased
-- Data.Nat.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1814 = erased
-- Data.Nat.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1820 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0))
-- Data.Nat.Properties._.IsQuasigroup.isMagma
d_isMagma_1822 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1822 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1826 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2796 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1836 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1836 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2798 (coe v0)
-- Data.Nat.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1848 = erased
-- Data.Nat.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1856 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1856 = erased
-- Data.Nat.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1858 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1858 = erased
-- Data.Nat.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1864 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.assoc
d_assoc_1876 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1876 = erased
-- Data.Nat.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_1878 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1878 = erased
-- Data.Nat.Properties._.IsQuasiring.identity
d_identity_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.isMagma
d_isMagma_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)))
-- Data.Nat.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_1892 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1892 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_1894 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1894 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Nat.Properties._.IsQuasiring.distrib
d_distrib_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1898 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2038 (coe v0)
-- Data.Nat.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_1908 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1908 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))))
-- Data.Nat.Properties._.IsQuasiring.zero
d_zero_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1922 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2040 (coe v0)
-- Data.Nat.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_1930 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1930 = erased
-- Data.Nat.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1936 = erased
-- Data.Nat.Properties._.IsRightBolLoop.identity
d_identity_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Nat.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1948 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))))
-- Data.Nat.Properties._.IsRightBolLoop.isLoop
d_isLoop_1950 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1950 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)
-- Data.Nat.Properties._.IsRightBolLoop.isMagma
d_isMagma_1952 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1952 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_1956 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Nat.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.rightBol
d_rightBol_1968 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1968 = erased
-- Data.Nat.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_1970 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1970 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Nat.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_1982 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1982 = erased
-- Data.Nat.Properties._.IsRing.*-assoc
d_'42''45'assoc_1992 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1992 = erased
-- Data.Nat.Properties._.IsRing.*-cong
d_'42''45'cong_1994 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1994 = erased
-- Data.Nat.Properties._.IsRing.*-identity
d_'42''45'identity_2000 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2506 (coe v0)
-- Data.Nat.Properties._.IsRing.assoc
d_assoc_2012 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2012 = erased
-- Data.Nat.Properties._.IsRing.comm
d_comm_2014 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2014 = erased
-- Data.Nat.Properties._.IsRing.∙-cong
d_'8729''45'cong_2016 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2016 = erased
-- Data.Nat.Properties._.IsRing.identity
d_identity_2022 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2022 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2022 v5
du_identity_2022 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
               (coe v0))))
-- Data.Nat.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2028 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
      (coe v0)
-- Data.Nat.Properties._.IsRing.isGroup
d_isGroup_2036 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2036 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2036 v5
du_isGroup_2036 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_isGroup_2036 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
         (coe v0))
-- Data.Nat.Properties._.IsRing.isMagma
d_isMagma_2042 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2042 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2042 v5
du_isMagma_2042 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                  (coe v0)))))
-- Data.Nat.Properties._.IsRing.isMonoid
d_isMonoid_2044 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2044 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2044 v5
du_isMonoid_2044 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_isMonoid_2044 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
            (coe v0)))
-- Data.Nat.Properties._.IsRing.isSemigroup
d_isSemigroup_2046 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2046 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2046 v5
du_isSemigroup_2046 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2046 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
               (coe v0))))
-- Data.Nat.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2050 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2050 = erased
-- Data.Nat.Properties._.IsRing.inverse
d_inverse_2052 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2052 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2052 v5
du_inverse_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
            (coe v0)))
-- Data.Nat.Properties._.IsRing.distrib
d_distrib_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2058 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2508 (coe v0)
-- Data.Nat.Properties._.IsRing.isEquivalence
d_isEquivalence_2064 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2064 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2064 v5
du_isEquivalence_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2064 v0
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
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
                     (coe v0))))))
-- Data.Nat.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2070 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
d_isRingWithoutOne_2070 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510 v5
-- Data.Nat.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2102 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2102 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2104 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2104 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.assoc
d_assoc_2114 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2114 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.comm
d_comm_2116 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2116 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2118 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.identity
d_identity_2124 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
               (coe v0))))
-- Data.Nat.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2130 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
      (coe v0)
-- Data.Nat.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2138 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2138 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
         (coe v0))
-- Data.Nat.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                  (coe v0)))))
-- Data.Nat.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2146 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
            (coe v0)))
-- Data.Nat.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2148 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2148 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
               (coe v0))))
-- Data.Nat.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2152 = erased
-- Data.Nat.Properties._.IsRingWithoutOne.inverse
d_inverse_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
            (coe v0)))
-- Data.Nat.Properties._.IsRingWithoutOne.distrib
d_distrib_2160 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2160 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2138 (coe v0)
-- Data.Nat.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2166 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2166 v0
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
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                     (coe v0))))))
-- Data.Nat.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2192 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0))
-- Data.Nat.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2194 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0)
-- Data.Nat.Properties._.IsSelectiveMagma.sel
d_sel_2202 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2202 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0)
-- Data.Nat.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2210 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2210 = erased
-- Data.Nat.Properties._.IsSemigroup.assoc
d_assoc_2218 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2218 = erased
-- Data.Nat.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2220 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0))
-- Data.Nat.Properties._.IsSemigroup.isMagma
d_isMagma_2222 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2222 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0)
-- Data.Nat.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2236 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2236 = erased
-- Data.Nat.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2244 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0))
-- Data.Nat.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2246 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0)
-- Data.Nat.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2254 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2254 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_374 (coe v0)
-- Data.Nat.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2266 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2266 = erased
-- Data.Nat.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2274 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2274 = erased
-- Data.Nat.Properties._.IsSemiring.*-cong
d_'42''45'cong_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2276 = erased
-- Data.Nat.Properties._.IsSemiring.*-identity
d_'42''45'identity_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2282 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.assoc
d_assoc_2294 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2294 = erased
-- Data.Nat.Properties._.IsSemiring.comm
d_comm_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2296 = erased
-- Data.Nat.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2298 = erased
-- Data.Nat.Properties._.IsSemiring.identity
d_identity_2304 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2304 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v0))))
-- Data.Nat.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2312 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.isMagma
d_isMagma_2316 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiring.isMonoid
d_isMonoid_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe v0)))
-- Data.Nat.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2320 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v0))))
-- Data.Nat.Properties._.IsSemiring.distrib
d_distrib_2324 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Nat.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2330 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                     (coe v0))))))
-- Data.Nat.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe v0)
-- Data.Nat.Properties._.IsSemiring.zero
d_zero_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2350 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1434 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2358 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2358 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2360 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2378 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2378 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2380 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2382 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2382 = erased
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2388 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2396 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2400 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe v0))))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe v0)))
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2408 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1344 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_664
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                  (coe v0)))))
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2434 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2434 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2436 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2436 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.comm
d_comm_2446 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2446 = erased
-- Data.Nat.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2450 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2454 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2454 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe v0))
-- Data.Nat.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2458 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2458 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1170 (coe v0)
-- Data.Nat.Properties._.IsSemiringWithoutOne.zero
d_zero_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2478 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1172 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.identity
d_identity_2486 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2486 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_572 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2492 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0))
-- Data.Nat.Properties._.IsUnitalMagma.isMagma
d_isMagma_2494 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2494 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0)
-- Data.Nat.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2508 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2508 = erased
-- Data.Nat.Properties.nonZero?
d_nonZero'63'_2522 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonZero'63'_2522 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Nat.Properties.nonTrivial?
d_nonTrivial'63'_2526 ::
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_nonTrivial'63'_2526 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      1 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_NonTrivial'46'constructor_5677
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.Nat.Properties.suc-injective
d_suc'45'injective_2530 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_2530 = erased
-- Data.Nat.Properties.≡ᵇ⇒≡
d_'8801''7495''8658''8801'_2536 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7495''8658''8801'_2536 = erased
-- Data.Nat.Properties.≡⇒≡ᵇ
d_'8801''8658''8801''7495'_2548 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8658''8801''7495'_2548 v0 ~v1 ~v2
  = du_'8801''8658''8801''7495'_2548 v0
du_'8801''8658''8801''7495'_2548 :: Integer -> AgdaAny
du_'8801''8658''8801''7495'_2548 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'8801''8658''8801''7495'_2548 (coe v1))
-- Data.Nat.Properties._≟_
d__'8799'__2558 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2558 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      erased
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
         (coe eqInt (coe v0) (coe v1)))
-- Data.Nat.Properties.≡-irrelevant
d_'8801''45'irrelevant_2564 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'irrelevant_2564 = erased
-- Data.Nat.Properties.≟-diag
d_'8799''45'diag_2568 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45'diag_2568 = erased
-- Data.Nat.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_2570 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8801''45'isDecEquivalence_2570
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_3075
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (coe d__'8799'__2558)
-- Data.Nat.Properties.≡-decSetoid
d_'8801''45'decSetoid_2572 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2572
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1377
      d_'8801''45'isDecEquivalence_2570
-- Data.Nat.Properties.0≢1+n
d_0'8802'1'43'n_2574 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_0'8802'1'43'n_2574 = erased
-- Data.Nat.Properties.1+n≢0
d_1'43'n'8802'0_2576 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8802'0_2576 = erased
-- Data.Nat.Properties.1+n≢n
d_1'43'n'8802'n_2578 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8802'n_2578 = erased
-- Data.Nat.Properties.<ᵇ⇒<
d_'60''7495''8658''60'_2586 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''7495''8658''60'_2586 v0 ~v1 ~v2
  = du_'60''7495''8658''60'_2586 v0
du_'60''7495''8658''60'_2586 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''7495''8658''60'_2586 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'60''7495''8658''60'_2586 (coe v1)))
-- Data.Nat.Properties.<⇒<ᵇ
d_'60''8658''60''7495'_2598 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_'60''8658''60''7495'_2598 ~v0 ~v1 v2
  = du_'60''8658''60''7495'_2598 v2
du_'60''8658''60''7495'_2598 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_'60''8658''60''7495'_2598 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    du_'60''8658''60''7495'_2598
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<ᵇ-reflects-<
d_'60''7495''45'reflects'45''60'_2606 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_'60''7495''45'reflects'45''60'_2606 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_110
      (coe ltInt (coe v0) (coe v1))
      (\ v2 -> coe du_'60''7495''8658''60'_2586 (coe v0))
-- Data.Nat.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_2616 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''7495''8658''8804'_2616 v0 ~v1 ~v2
  = du_'8804''7495''8658''8804'_2616 v0
du_'8804''7495''8658''8804'_2616 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''7495''8658''8804'_2616 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'60''7495''8658''60'_2586 (coe v1))
-- Data.Nat.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_2628 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_'8804''8658''8804''7495'_2628 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_2628 v2
du_'8804''8658''8804''7495'_2628 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_'8804''8658''8804''7495'_2628 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> coe
             du_'60''8658''60''7495'_2598
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤ᵇ-reflects-≤
d_'8804''7495''45'reflects'45''8804'_2636 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Reflects.T_Reflects_16
d_'8804''7495''45'reflects'45''8804'_2636 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_110
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1))
      (\ v2 -> coe du_'8804''7495''8658''8804'_2616 (coe v0))
-- Data.Nat.Properties.≤-reflexive
d_'8804''45'reflexive_2642 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'reflexive_2642 v0 ~v1 ~v2
  = du_'8804''45'reflexive_2642 v0
du_'8804''45'reflexive_2642 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'reflexive_2642 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'8804''45'reflexive_2642 (coe v1)))
-- Data.Nat.Properties.≤-refl
d_'8804''45'refl_2646 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'refl_2646 v0 = coe du_'8804''45'reflexive_2642 (coe v0)
-- Data.Nat.Properties.≤-antisym
d_'8804''45'antisym_2648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_2648 = erased
-- Data.Nat.Properties.≤-trans
d_'8804''45'trans_2654 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'trans_2654 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_2654 v3 v4
du_'8804''45'trans_2654 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'trans_2654 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''45'trans_2654 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-total
d_'8804''45'total_2660 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_2660 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Sum.Base.du_map_84
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34)
                          (d_'8804''45'total_2660 (coe v2) (coe v3))))
-- Data.Nat.Properties.≤-irrelevant
d_'8804''45'irrelevant_2666 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_2666 = erased
-- Data.Nat.Properties._≤?_
d__'8804''63'__2672 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__2672 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (\ v2 -> coe du_'8804''7495''8658''8804'_2616 (coe v0))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
         (coe
            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0) (coe v1)))
-- Data.Nat.Properties._≥?_
d__'8805''63'__2678 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__2678 v0 v1
  = coe d__'8804''63'__2672 (coe v1) (coe v0)
-- Data.Nat.Properties.≤-isPreorder
d_'8804''45'isPreorder_2680 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_2680
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_2642 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_2654 v3 v4)
-- Data.Nat.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_2682 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_2682
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8307
      (coe d_'8804''45'isPreorder_2680) (coe d_'8804''45'total_2660)
-- Data.Nat.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_2684 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_2684
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_2680) erased
-- Data.Nat.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_2686 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_2686
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe d_'8804''45'isPartialOrder_2684) (coe d_'8804''45'total_2660)
-- Data.Nat.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_2688 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_2688
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe d_'8804''45'isTotalOrder_2686) (coe d__'8799'__2558)
      (coe d__'8804''63'__2672)
-- Data.Nat.Properties.≤-preorder
d_'8804''45'preorder_2690 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_2690
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      d_'8804''45'isPreorder_2680
-- Data.Nat.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_2692 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder_2692
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4543
      d_'8804''45'isTotalPreorder_2682
-- Data.Nat.Properties.≤-poset
d_'8804''45'poset_2694 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8804''45'poset_2694
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6347
      d_'8804''45'isPartialOrder_2684
-- Data.Nat.Properties.≤-totalOrder
d_'8804''45'totalOrder_2696 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_'8804''45'totalOrder_2696
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_15657
      d_'8804''45'isTotalOrder_2686
-- Data.Nat.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_2698 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_2698
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      d_'8804''45'isDecTotalOrder_2688
-- Data.Nat.Properties.s≤s-injective
d_s'8804's'45'injective_2704 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'8804's'45'injective_2704 = erased
-- Data.Nat.Properties.≤-pred
d_'8804''45'pred_2706 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'pred_2706 ~v0 ~v1 = du_'8804''45'pred_2706
du_'8804''45'pred_2706 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'pred_2706
  = coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
-- Data.Nat.Properties.m≤n⇒m≤1+n
d_m'8804'n'8658'm'8804'1'43'n_2708 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'1'43'n_2708 ~v0 ~v1 v2
  = du_m'8804'n'8658'm'8804'1'43'n_2708 v2
du_m'8804'n'8658'm'8804'1'43'n_2708 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'1'43'n_2708 v0 = coe v0
-- Data.Nat.Properties.n≤1+n
d_n'8804'1'43'n_2714 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'1'43'n_2714 v0 = coe d_'8804''45'refl_2646 (coe v0)
-- Data.Nat.Properties.1+n≰n
d_1'43'n'8816'n_2716 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'n'8816'n_2716 = erased
-- Data.Nat.Properties.n≤0⇒n≡0
d_n'8804'0'8658'n'8801'0_2720 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8804'0'8658'n'8801'0_2720 = erased
-- Data.Nat.Properties.n≤1⇒n≡0∨n≡1
d_n'8804'1'8658'n'8801'0'8744'n'8801'1_2722 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_n'8804'1'8658'n'8801'0'8744'n'8801'1_2722 ~v0 v1
  = du_n'8804'1'8658'n'8801'0'8744'n'8801'1_2722 v1
du_n'8804'1'8658'n'8801'0'8744'n'8801'1_2722 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_n'8804'1'8658'n'8801'0'8744'n'8801'1_2722 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> coe
             seq (coe v3) (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≤
d_'60''8658''8804'_2724 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'_2724 ~v0 ~v1 v2 = du_'60''8658''8804'_2724 v2
du_'60''8658''8804'_2724 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'_2724 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'60''8658''8804'_2724
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≢
d_'60''8658''8802'_2728 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_2728 = erased
-- Data.Nat.Properties.>⇒≢
d_'62''8658''8802'_2732 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8802'_2732 = erased
-- Data.Nat.Properties.≤⇒≯
d_'8804''8658''8815'_2734 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_2734 = erased
-- Data.Nat.Properties.<⇒≱
d_'60''8658''8817'_2740 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_2740 = erased
-- Data.Nat.Properties.<⇒≯
d_'60''8658''8815'_2746 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8815'_2746 = erased
-- Data.Nat.Properties.≰⇒≮
d_'8816''8658''8814'_2752 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8816''8658''8814'_2752 = erased
-- Data.Nat.Properties.≰⇒>
d_'8816''8658''62'_2758 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8816''8658''62'_2758 v0 v1 ~v2 = du_'8816''8658''62'_2758 v0 v1
du_'8816''8658''62'_2758 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8816''8658''62'_2758 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8816''8658''62'_2758 (coe v2) (coe v3))))
-- Data.Nat.Properties.≰⇒≥
d_'8816''8658''8805'_2770 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8816''8658''8805'_2770 v0 v1 ~v2
  = du_'8816''8658''8805'_2770 v0 v1
du_'8816''8658''8805'_2770 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8816''8658''8805'_2770 v0 v1
  = coe
      du_'60''8658''8804'_2724
      (coe du_'8816''8658''62'_2758 (coe v0) (coe v1))
-- Data.Nat.Properties.≮⇒≥
d_'8814''8658''8805'_2772 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8814''8658''8805'_2772 v0 v1 ~v2
  = du_'8814''8658''8805'_2772 v0 v1
du_'8814''8658''8805'_2772 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8814''8658''8805'_2772 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8814''8658''8805'_2772 (coe v3) (coe v2))))
-- Data.Nat.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_2788 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8743''8802''8658''60'_2788 ~v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_2788 v1 v2
du_'8804''8743''8802''8658''60'_2788 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8743''8802''8658''60'_2788 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_'8804''8743''8802''8658''60'_2788 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_2806 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_2806 = erased
-- Data.Nat.Properties.≤-<-connex
d_'8804''45''60''45'connex_2812 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45''60''45'connex_2812 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
              (\ v2 -> coe du_'8804''7495''8658''8804'_2616 (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14 (coe v0)
                    (coe v1))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then case coe v4 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5
                         -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v5)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                          (coe du_'8816''8658''62'_2758 (coe v0) (coe v1)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≥->-connex
d_'8805''45''62''45'connex_2834 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8805''45''62''45'connex_2834 v0 v1
  = coe d_'8804''45''60''45'connex_2812 (coe v1) (coe v0)
-- Data.Nat.Properties.<-≤-connex
d_'60''45''8804''45'connex_2836 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'60''45''8804''45'connex_2836
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_854
      (coe d_'8804''45''60''45'connex_2812)
-- Data.Nat.Properties.>-≥-connex
d_'62''45''8805''45'connex_2838 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'62''45''8805''45'connex_2838
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_854
      (coe d_'8805''45''62''45'connex_2834)
-- Data.Nat.Properties.<-irrefl
d_'60''45'irrefl_2840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_2840 = erased
-- Data.Nat.Properties.<-asym
d_'60''45'asym_2844 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_2844 = erased
-- Data.Nat.Properties.<-trans
d_'60''45'trans_2850 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans_2850 ~v0 v1 ~v2 v3 v4
  = du_'60''45'trans_2850 v1 v3 v4
du_'60''45'trans_2850 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'trans_2850 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe
                          du_'8804''45'trans_2654 (coe v5)
                          (coe
                             du_'8804''45'trans_2654 (coe d_n'8804'1'43'n_2714 (coe v6))
                             (coe v9)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-<-trans
d_'8804''45''60''45'trans_2856 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45''60''45'trans_2856 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45''60''45'trans_2856 v3 v4
du_'8804''45''60''45'trans_2856 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45''60''45'trans_2856 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_'8804''45'trans_2654 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-≤-trans
d_'60''45''8804''45'trans_2862 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45''8804''45'trans_2862 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45''8804''45'trans_2862 v3 v4
du_'60''45''8804''45'trans_2862 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45''8804''45'trans_2862 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8804''45'trans_2654 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-cmp
d_'60''45'cmp_2868 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_2868 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
              erased
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
                 (coe eqInt (coe v0) (coe v1))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then case coe v4 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5
                         -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v5
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v4)
                       (let v5 = ltInt (coe v0) (coe v1) in
                        coe
                          (if coe v5
                             then coe
                                    seq
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                       (coe du_'60''7495''8658''60'_2586 (coe v0)))
                             else coe
                                    seq
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                       (coe v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                       (coe
                                          du_'8804''8743''8802''8658''60'_2788 (coe v0)
                                          (coe du_'8814''8658''8805'_2772 (coe v0) (coe v1))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties._<?_
d__'60''63'__2900 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__2900 v0 v1
  = coe
      d__'8804''63'__2672 (coe addInt (coe (1 :: Integer)) (coe v0))
      (coe v1)
-- Data.Nat.Properties._>?_
d__'62''63'__2906 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__2906 v0 v1 = coe d__'60''63'__2900 (coe v1) (coe v0)
-- Data.Nat.Properties.<-irrelevant
d_'60''45'irrelevant_2908 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_2908 = erased
-- Data.Nat.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_2910 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_2910
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_2916 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_2916
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2850 v1 v3 v4)
      d_'60''45'resp'8322''45''8801'_2910
-- Data.Nat.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_2918 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_2918
  = coe
      MAlonzo.Code.Relation.Binary.Structures.Biased.du_isStrictTotalOrder'7580'_538
      (coe
         MAlonzo.Code.Relation.Binary.Structures.Biased.C_IsStrictTotalOrder'7580''46'constructor_6029
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2850 v1 v3 v4)
         (coe d_'60''45'cmp_2868))
-- Data.Nat.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_2920 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_2920
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder_2916
-- Data.Nat.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_2922 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_2922
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_20945
      d_'60''45'isStrictTotalOrder_2918
-- Data.Nat.Properties.s<s-injective
d_s'60's'45'injective_2928 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'60's'45'injective_2928 = erased
-- Data.Nat.Properties.<-pred
d_'60''45'pred_2930 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'pred_2930 ~v0 ~v1 = du_'60''45'pred_2930
du_'60''45'pred_2930 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''45'pred_2930
  = coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
-- Data.Nat.Properties.m<n⇒m<1+n
d_m'60'n'8658'm'60'1'43'n_2932 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'1'43'n_2932 ~v0 ~v1 v2
  = du_m'60'n'8658'm'60'1'43'n_2932 v2
du_m'60'n'8658'm'60'1'43'n_2932 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'1'43'n_2932 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_m'60'n'8658'm'60'1'43'n_2932
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.n≮0
d_n'8814'0_2936 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'0_2936 = erased
-- Data.Nat.Properties.n≮n
d_n'8814'n_2940 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'n_2940 = erased
-- Data.Nat.Properties.0<1+n
d_0'60'1'43'n_2944 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_0'60'1'43'n_2944 ~v0 = du_0'60'1'43'n_2944
du_0'60'1'43'n_2944 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_0'60'1'43'n_2944
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Nat.Properties.n<1+n
d_n'60'1'43'n_2948 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'60'1'43'n_2948 v0
  = coe
      d_'8804''45'refl_2646 (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.n<1⇒n≡0
d_n'60'1'8658'n'8801'0_2952 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'60'1'8658'n'8801'0_2952 = erased
-- Data.Nat.Properties.n>0⇒n≢0
d_n'62'0'8658'n'8802'0_2956 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'62'0'8658'n'8802'0_2956 = erased
-- Data.Nat.Properties.n≢0⇒n>0
d_n'8802'0'8658'n'62'0_2960 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8802'0'8658'n'62'0_2960 v0 ~v1
  = du_n'8802'0'8658'n'62'0_2960 v0
du_n'8802'0'8658'n'62'0_2960 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_n'8802'0'8658'n'62'0_2960 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
      _ -> coe du_0'60'1'43'n_2944
-- Data.Nat.Properties.m<n⇒0<n
d_m'60'n'8658'0'60'n_2966 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'0'60'n_2966 ~v0 ~v1 = du_m'60'n'8658'0'60'n_2966
du_m'60'n'8658'0'60'n_2966 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'0'60'n_2966
  = coe du_'8804''45'trans_2654 (coe du_0'60'1'43'n_2944)
-- Data.Nat.Properties.m<n⇒n≢0
d_m'60'n'8658'n'8802'0_2968 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'60'n'8658'n'8802'0_2968 = erased
-- Data.Nat.Properties.m<n⇒m≤1+n
d_m'60'n'8658'm'8804'1'43'n_2972 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'8804'1'43'n_2972 ~v0 ~v1 v2
  = du_m'60'n'8658'm'8804'1'43'n_2972 v2
du_m'60'n'8658'm'8804'1'43'n_2972 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'8804'1'43'n_2972 v0
  = coe du_'60''8658''8804'_2724 (coe v0)
-- Data.Nat.Properties.m<1+n⇒m<n∨m≡n
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_2978 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_2978 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
             _ -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe du_0'60'1'43'n_2944)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> let v7 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Sum.Base.du_map_84
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34) erased
                          (d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_2978
                             (coe v3) (coe v7) (coe v6)))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m≤n⇒m<n∨m≡n
d_m'8804'n'8658'm'60'n'8744'm'8801'n_2988 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'8804'n'8658'm'60'n'8744'm'8801'n_2988 v0 v1 v2
  = coe
      d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n_2978 (coe v0) (coe v1)
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v2)
-- Data.Nat.Properties.m<1+n⇒m≤n
d_m'60'1'43'n'8658'm'8804'n_2992 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'1'43'n'8658'm'8804'n_2992 ~v0 ~v1 v2
  = du_m'60'1'43'n'8658'm'8804'n_2992 v2
du_m'60'1'43'n'8658'm'8804'n_2992 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'1'43'n'8658'm'8804'n_2992 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒n<o
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 v0 v1 ~v2
  = du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 v0 v1
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe du_0'60'1'43'n_2944
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 (coe v3)
                             (coe v2))))
-- Data.Nat.Properties._.rec
d_rec_3020 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_rec_3020 = erased
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒n≤o
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 v0 v1 ~v2
  = du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 v0 v1
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 (coe v2)
                             (coe v3))))
-- Data.Nat.Properties._.rec
d_rec_3050 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_rec_3050 = erased
-- Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3058 a0 a1 = ()
-- Data.Nat.Properties.≤-Reasoning._._∎
d__'8718'_3060 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3060
  = let v0 = d_'8804''45'isPreorder_2680 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Nat.Properties.≤-Reasoning._.<-go
d_'60''45'go_3062 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3062
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2850 v1 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45''8804''45'trans_2862 v3 v4)
-- Data.Nat.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3064 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3066 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3066 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Nat.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3068 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3070 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3070 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3072 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_begin__3072
  = let v0 = d_'8804''45'isPreorder_2680 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_2724 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Nat.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3074 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3074 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3076 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3076 = erased
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__3078 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_begin__3078
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Nat.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3080 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3080
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Nat.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3084 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3084 = erased
-- Data.Nat.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_extractStrict_3086 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Nat.Properties.≤-Reasoning._.start
d_start_3094 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_start_3094
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_2680)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_2724 v2)
-- Data.Nat.Properties.≤-Reasoning._.step-<
d_step'45''60'_3096 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3096
  = let v0
          = \ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2850 v1 v3 v4 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144 in
       coe
         (let v2
                = \ v2 v3 v4 v5 v6 -> coe du_'60''45''8804''45'trans_2862 v5 v6 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Nat.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3098 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3098
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3100 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3100 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3100 v2
du_step'45''8801''45''8739'_3100 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3100 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3102 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3102
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3104 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3104
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3106 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3106
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3108 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3108
  = let v0 = d_'8804''45'isPreorder_2680 in
    coe
      (let v1
             = \ v1 v2 v3 v4 v5 -> coe du_'8804''45''60''45'trans_2856 v4 v5 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Nat.Properties.≤-Reasoning._.stop
d_stop_3110 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3110
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_2680)
-- Data.Nat.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3114 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3114
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Nat.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3116 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3116
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_2680)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
-- Data.Nat.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3118 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3118 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3118 v4
du_'8801''45'go_3118 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3118 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3120 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3120
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_2680)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45''60''45'trans_2856 v3 v4)
-- Data.Nat.Properties.+-suc
d_'43''45'suc_3142 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'suc_3142 = erased
-- Data.Nat.Properties.+-assoc
d_'43''45'assoc_3150 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_3150 = erased
-- Data.Nat.Properties.+-identityˡ
d_'43''45'identity'737'_3158 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_3158 = erased
-- Data.Nat.Properties.+-identityʳ
d_'43''45'identity'691'_3160 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_3160 = erased
-- Data.Nat.Properties.+-identity
d_'43''45'identity_3164 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_3164
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-comm
d_'43''45'comm_3166 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_3166 = erased
-- Data.Nat.Properties.+-cancelˡ-≡
d_'43''45'cancel'737''45''8801'_3174 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8801'_3174 = erased
-- Data.Nat.Properties.+-cancelʳ-≡
d_'43''45'cancel'691''45''8801'_3182 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691''45''8801'_3182 = erased
-- Data.Nat.Properties.+-cancel-≡
d_'43''45'cancel'45''8801'_3184 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8801'_3184
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-isMagma
d_'43''45'isMagma_3186 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'43''45'isMagma_3186
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Nat.Properties.+-isSemigroup
d_'43''45'isSemigroup_3188 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'43''45'isSemigroup_3188
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'43''45'isMagma_3186) erased
-- Data.Nat.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_3190 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'43''45'isCommutativeSemigroup_3190
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_10991
      (coe d_'43''45'isSemigroup_3188) erased
-- Data.Nat.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_3192 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'0'45'isMonoid_3192
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'43''45'isSemigroup_3188) (coe d_'43''45'identity_3164)
-- Data.Nat.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_3194 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'0'45'isCommutativeMonoid_3194
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'43''45'0'45'isMonoid_3192) erased
-- Data.Nat.Properties.+-magma
d_'43''45'magma_3196 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'43''45'magma_3196
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193 addInt
      d_'43''45'isMagma_3186
-- Data.Nat.Properties.+-semigroup
d_'43''45'semigroup_3198 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'43''45'semigroup_3198
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611 addInt
      d_'43''45'isSemigroup_3188
-- Data.Nat.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_3200 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'43''45'commutativeSemigroup_3200
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_10829
      addInt d_'43''45'isCommutativeSemigroup_3190
-- Data.Nat.Properties.+-0-monoid
d_'43''45'0'45'monoid_3202 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'43''45'0'45'monoid_3202
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391 addInt
      (0 :: Integer) d_'43''45'0'45'isMonoid_3192
-- Data.Nat.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_3204 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'43''45'0'45'commutativeMonoid_3204
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      addInt (0 :: Integer) d_'43''45'0'45'isCommutativeMonoid_3194
-- Data.Nat.Properties.∸-magma
d_'8760''45'magma_3206 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8760''45'magma_3206
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_magma_20
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Data.Nat.Properties.m≢1+m+n
d_m'8802'1'43'm'43'n_3212 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8802'1'43'm'43'n_3212 = erased
-- Data.Nat.Properties.m≢1+n+m
d_m'8802'1'43'n'43'm_3222 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8802'1'43'n'43'm_3222 = erased
-- Data.Nat.Properties.m+1+n≢m
d_m'43'1'43'n'8802'm_3232 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'm_3232 = erased
-- Data.Nat.Properties.m+1+n≢n
d_m'43'1'43'n'8802'n_3240 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'n_3240 = erased
-- Data.Nat.Properties.m+1+n≢0
d_m'43'1'43'n'8802'0_3254 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8802'0_3254 = erased
-- Data.Nat.Properties.m+n≡0⇒m≡0
d_m'43'n'8801'0'8658'm'8801'0_3268 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'm'8801'0_3268 = erased
-- Data.Nat.Properties.m+n≡0⇒n≡0
d_m'43'n'8801'0'8658'n'8801'0_3276 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'n'8801'0_3276 = erased
-- Data.Nat.Properties.+-cancelˡ-≤
d_'43''45'cancel'737''45''8804'_3284 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'737''45''8804'_3284 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''8804'_3284 v0 v3
du_'43''45'cancel'737''45''8804'_3284 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'737''45''8804'_3284 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe du_'43''45'cancel'737''45''8804'_3284 (coe v2) (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.+-cancelʳ-≤
d_'43''45'cancel'691''45''8804'_3292 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'691''45''8804'_3292 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''8804'_3292 v0 v3
du_'43''45'cancel'691''45''8804'_3292 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'691''45''8804'_3292 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_3284 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-≤
d_'43''45'cancel'45''8804'_3302 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8804'_3302
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''8804'_3284 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''8804'_3292 v0 v3)
-- Data.Nat.Properties.+-cancelˡ-<
d_'43''45'cancel'737''45''60'_3304 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'737''45''60'_3304 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''60'_3304 v0 v3
du_'43''45'cancel'737''45''60'_3304 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'737''45''60'_3304 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_3284 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancelʳ-<
d_'43''45'cancel'691''45''60'_3314 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'cancel'691''45''60'_3314 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''60'_3314 v0 v3
du_'43''45'cancel'691''45''60'_3314 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'cancel'691''45''60'_3314 v0 v1
  = coe du_'43''45'cancel'691''45''8804'_3292 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-<
d_'43''45'cancel'45''60'_3324 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''60'_3324
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''60'_3304 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''60'_3314 v0 v3)
-- Data.Nat.Properties.m≤n⇒m≤o+n
d_m'8804'n'8658'm'8804'o'43'n_3328 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'o'43'n_3328 ~v0 ~v1 ~v2 v3
  = du_m'8804'n'8658'm'8804'o'43'n_3328 v3
du_m'8804'n'8658'm'8804'o'43'n_3328 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'o'43'n_3328 v0 = coe v0
-- Data.Nat.Properties.m≤n⇒m≤n+o
d_m'8804'n'8658'm'8804'n'43'o_3338 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'm'8804'n'43'o_3338 ~v0 ~v1 ~v2 v3
  = du_m'8804'n'8658'm'8804'n'43'o_3338 v3
du_m'8804'n'8658'm'8804'n'43'o_3338 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'm'8804'n'43'o_3338 v0 = coe v0
-- Data.Nat.Properties.m≤m+n
d_m'8804'm'43'n_3352 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'43'n_3352 v0 ~v1 = du_m'8804'm'43'n_3352 v0
du_m'8804'm'43'n_3352 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'43'n_3352 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'8804'm'43'n_3352 (coe v1)))
-- Data.Nat.Properties.m≤n+m
d_m'8804'n'43'm_3364 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'm_3364 v0 ~v1 = du_m'8804'n'43'm_3364 v0
du_m'8804'n'43'm_3364 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'43'm_3364 v0 = coe du_m'8804'm'43'n_3352 (coe v0)
-- Data.Nat.Properties.m+n≤o⇒m≤o
d_m'43'n'8804'o'8658'm'8804'o_3378 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'm'8804'o_3378 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o_3378 v0 v3
du_m'43'n'8804'o'8658'm'8804'o_3378 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'm'8804'o_3378 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_m'43'n'8804'o'8658'm'8804'o_3378 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m+n≤o⇒n≤o
d_m'43'n'8804'o'8658'n'8804'o_3392 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'n'8804'o_3392 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'n'8804'o_3392 v0 v3
du_m'43'n'8804'o'8658'n'8804'o_3392 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'n'8804'o_3392 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_m'43'n'8804'o'8658'n'8804'o_3392 (coe v2)
                (coe du_'60''8658''8804'_2724 (coe v1)))
-- Data.Nat.Properties.+-mono-≤
d_'43''45'mono'45''8804'_3400 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''8804'_3400 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804'_3400 v3 v4 v5
du_'43''45'mono'45''8804'_3400 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''8804'_3400 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_'8804''45'trans_2654 (coe v2)
             (coe du_m'8804'n'43'm_3364 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_'43''45'mono'45''8804'_3400 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_3414 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'737''45''8804'_3414 v0 ~v1 ~v2 v3
  = du_'43''45'mono'737''45''8804'_3414 v0 v3
du_'43''45'mono'737''45''8804'_3414 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'737''45''8804'_3414 v0 v1
  = coe
      du_'43''45'mono'45''8804'_3400 (coe v0) (coe v1)
      (coe d_'8804''45'refl_2646 (coe v0))
-- Data.Nat.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_3424 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'691''45''8804'_3424 v0 ~v1 v2 v3
  = du_'43''45'mono'691''45''8804'_3424 v0 v2 v3
du_'43''45'mono'691''45''8804'_3424 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'691''45''8804'_3424 v0 v1 v2
  = coe
      du_'43''45'mono'45''8804'_3400 (coe v1)
      (coe d_'8804''45'refl_2646 (coe v0)) (coe v2)
-- Data.Nat.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_3430 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''60''45''8804'_3430 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'43''45'mono'45''60''45''8804'_3430 v4 v5
du_'43''45'mono'45''60''45''8804'_3430 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''60''45''8804'_3430 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v1
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'43''45'mono'45''60''45''8804'_3430
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_3440 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''8804''45''60'_3440 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804''45''60'_3440 v3 v4 v5
du_'43''45'mono'45''8804''45''60'_3440 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''8804''45''60'_3440 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_'8804''45'trans_2654 (coe v2)
             (coe du_m'8804'n'43'm_3364 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe
                du_'43''45'mono'45''8804''45''60'_3440 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-<
d_'43''45'mono'45''60'_3450 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'45''60'_3450 ~v0 ~v1 ~v2 v3 v4
  = du_'43''45'mono'45''60'_3450 v3 v4
du_'43''45'mono'45''60'_3450 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'45''60'_3450 v0 v1
  = coe
      du_'43''45'mono'45''8804''45''60'_3440 (coe v0)
      (coe du_'60''8658''8804'_2724 (coe v1))
-- Data.Nat.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_3458 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'737''45''60'_3458 v0 ~v1 ~v2
  = du_'43''45'mono'737''45''60'_3458 v0
du_'43''45'mono'737''45''60'_3458 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'737''45''60'_3458 v0
  = coe du_'43''45'mono'737''45''8804'_3414 (coe v0)
-- Data.Nat.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_3466 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''45'mono'691''45''60'_3466 v0 ~v1 ~v2 v3
  = du_'43''45'mono'691''45''60'_3466 v0 v3
du_'43''45'mono'691''45''60'_3466 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''45'mono'691''45''60'_3466 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'43''45'mono'691''45''60'_3466 (coe v2) (coe v1)))
-- Data.Nat.Properties.m+1+n≰m
d_m'43'1'43'n'8816'm_3478 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'1'43'n'8816'm_3478 = erased
-- Data.Nat.Properties.m<m+n
d_m'60'm'43'n_3488 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'43'n_3488 v0 ~v1 v2 = du_m'60'm'43'n_3488 v0 v2
du_m'60'm'43'n_3488 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'43'n_3488 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'60'm'43'n_3488 (coe v2) (coe v1)))
-- Data.Nat.Properties.m<n+m
d_m'60'n'43'm_3500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'43'm_3500 v0 ~v1 v2 = du_m'60'n'43'm_3500 v0 v2
du_m'60'n'43'm_3500 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'43'm_3500 v0 v1
  = coe du_m'60'm'43'n_3488 (coe v0) (coe v1)
-- Data.Nat.Properties.m+n≮n
d_m'43'n'8814'n_3516 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'n'8814'n_3516 = erased
-- Data.Nat.Properties.m+n≮m
d_m'43'n'8814'm_3530 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'43'n'8814'm_3530 = erased
-- Data.Nat.Properties.*-suc
d_'42''45'suc_3542 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_3542 = erased
-- Data.Nat.Properties.*-identityˡ
d_'42''45'identity'737'_3554 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_3554 = erased
-- Data.Nat.Properties.*-identityʳ
d_'42''45'identity'691'_3558 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_3558 = erased
-- Data.Nat.Properties.*-identity
d_'42''45'identity_3562 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_3562
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-zeroˡ
d_'42''45'zero'737'_3564 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_3564 = erased
-- Data.Nat.Properties.*-zeroʳ
d_'42''45'zero'691'_3566 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_3566 = erased
-- Data.Nat.Properties.*-zero
d_'42''45'zero_3570 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_3570
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-comm
d_'42''45'comm_3572 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_3572 = erased
-- Data.Nat.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_3582 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_3582 = erased
-- Data.Nat.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_3596 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_3596 = erased
-- Data.Nat.Properties.*-distrib-+
d_'42''45'distrib'45''43'_3598 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_3598
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-assoc
d_'42''45'assoc_3600 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_3600 = erased
-- Data.Nat.Properties.*-isMagma
d_'42''45'isMagma_3614 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_3614
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Nat.Properties.*-isSemigroup
d_'42''45'isSemigroup_3616 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_3616
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'42''45'isMagma_3614) erased
-- Data.Nat.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_3618 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_3618
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_10991
      (coe d_'42''45'isSemigroup_3616) erased
-- Data.Nat.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_3620 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'1'45'isMonoid_3620
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'42''45'isSemigroup_3616) (coe d_'42''45'identity_3562)
-- Data.Nat.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_3622 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'1'45'isCommutativeMonoid_3622
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'42''45'1'45'isMonoid_3620) erased
-- Data.Nat.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_3624 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'43''45''42''45'isSemiring_3624
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
         (coe d_'43''45'0'45'isCommutativeMonoid_3194) erased erased
         (coe d_'42''45'identity_3562) (coe d_'42''45'distrib'45''43'_3598))
      (coe d_'42''45'zero_3570)
-- Data.Nat.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_3626 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'43''45''42''45'isCommutativeSemiring_3626
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe d_'43''45''42''45'isSemiring_3624) erased
-- Data.Nat.Properties.*-magma
d_'42''45'magma_3628 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'42''45'magma_3628
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193 mulInt
      d_'42''45'isMagma_3614
-- Data.Nat.Properties.*-semigroup
d_'42''45'semigroup_3630 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'42''45'semigroup_3630
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611 mulInt
      d_'42''45'isSemigroup_3616
-- Data.Nat.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_3632 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'42''45'commutativeSemigroup_3632
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_10829
      mulInt d_'42''45'isCommutativeSemigroup_3618
-- Data.Nat.Properties.*-1-monoid
d_'42''45'1'45'monoid_3634 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'42''45'1'45'monoid_3634
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391 mulInt
      (1 :: Integer) d_'42''45'1'45'isMonoid_3620
-- Data.Nat.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_3636 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'42''45'1'45'commutativeMonoid_3636
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      mulInt (1 :: Integer) d_'42''45'1'45'isCommutativeMonoid_3622
-- Data.Nat.Properties.+-*-semiring
d_'43''45''42''45'semiring_3638 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_'43''45''42''45'semiring_3638
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_36311 addInt
      mulInt (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isSemiring_3624
-- Data.Nat.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_3640 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'43''45''42''45'commutativeSemiring_3640
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_39235
      addInt mulInt (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isCommutativeSemiring_3626
-- Data.Nat.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_3650 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_3650 = erased
-- Data.Nat.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_3672 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_3672 = erased
-- Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3692 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3692 v0 ~v1 ~v2
  = du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3692 v0
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3692 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3692 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m*n≢0
d_m'42'n'8802'0_3710 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0_3710 ~v0 ~v1 ~v2 ~v3 = du_m'42'n'8802'0_3710
du_m'42'n'8802'0_3710 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0_3710
  = coe
      MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.m*n≢0⇒m≢0
d_m'42'n'8802'0'8658'm'8802'0_3720 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0'8658'm'8802'0_3720 ~v0 ~v1 ~v2
  = du_m'42'n'8802'0'8658'm'8802'0_3720
du_m'42'n'8802'0'8658'm'8802'0_3720 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0'8658'm'8802'0_3720
  = coe
      MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.m*n≢0⇒n≢0
d_m'42'n'8802'0'8658'n'8802'0_3726 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'42'n'8802'0'8658'n'8802'0_3726 ~v0 ~v1 ~v2
  = du_m'42'n'8802'0'8658'n'8802'0_3726
du_m'42'n'8802'0'8658'n'8802'0_3726 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'42'n'8802'0'8658'n'8802'0_3726
  = coe du_m'42'n'8802'0'8658'm'8802'0_3720
-- Data.Nat.Properties.m*n≡0⇒m≡0
d_m'42'n'8801'0'8658'm'8801'0_3742 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'0'8658'm'8801'0_3742 = erased
-- Data.Nat.Properties.m*n≡1⇒m≡1
d_m'42'n'8801'1'8658'm'8801'1_3750 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'm'8801'1_3750 = erased
-- Data.Nat.Properties.m*n≡1⇒n≡1
d_m'42'n'8801'1'8658'n'8801'1_3764 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'n'8801'1_3764 = erased
-- Data.Nat.Properties.[m*n]*[o*p]≡[m*o]*[n*p]
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_3780 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_3780
  = erased
-- Data.Nat.Properties.m≢0∧n>1⇒m*n>1
d_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_3868 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
d_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_3868 ~v0 ~v1 ~v2 ~v3
  = du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_3868
du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_3868 ::
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_3868
  = coe
      MAlonzo.Code.Data.Nat.Base.C_NonTrivial'46'constructor_5677
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Properties.n≢0∧m>1⇒m*n>1
d_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_3882 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152 ->
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
d_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_3882 ~v0 ~v1 ~v2 ~v3
  = du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_3882
du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_3882 ::
  MAlonzo.Code.Data.Nat.Base.T_NonTrivial_152
du_n'8802'0'8743'm'62'1'8658'm'42'n'62'1_3882
  = coe du_m'8802'0'8743'n'62'1'8658'm'42'n'62'1_3868
-- Data.Nat.Properties.*-cancelʳ-≤
d_'42''45'cancel'691''45''8804'_3900 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'691''45''8804'_3900 v0 ~v1 ~v2 ~v3 ~v4
  = du_'42''45'cancel'691''45''8804'_3900 v0
du_'42''45'cancel'691''45''8804'_3900 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'691''45''8804'_3900 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_'42''45'cancel'691''45''8804'_3900 (coe v1)))
-- Data.Nat.Properties.*-cancelˡ-≤
d_'42''45'cancel'737''45''8804'_3916 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'737''45''8804'_3916 v0 ~v1 ~v2 ~v3
  = du_'42''45'cancel'737''45''8804'_3916 v0
du_'42''45'cancel'737''45''8804'_3916 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'737''45''8804'_3916 v0 v1
  = coe du_'42''45'cancel'691''45''8804'_3900 (coe v0)
-- Data.Nat.Properties.*-mono-≤
d_'42''45'mono'45''8804'_3932 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'45''8804'_3932 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''8804'_3932 v1 v3 v4 v5
du_'42''45'mono'45''8804'_3932 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'45''8804'_3932 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'43''45'mono'45''8804'_3400 (coe mulInt (coe v7) (coe v1))
                (coe v3)
                (coe
                   du_'42''45'mono'45''8804'_3932 (coe v7) (coe v1) (coe v6)
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-≤
d_'42''45'mono'737''45''8804'_3942 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'737''45''8804'_3942 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804'_3942 v0 v2 v3
du_'42''45'mono'737''45''8804'_3942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'737''45''8804'_3942 v0 v1 v2
  = coe
      du_'42''45'mono'45''8804'_3932 (coe v1) (coe v0) (coe v2)
      (coe d_'8804''45'refl_2646 (coe v0))
-- Data.Nat.Properties.*-monoʳ-≤
d_'42''45'mono'691''45''8804'_3952 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'691''45''8804'_3952 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804'_3952 v0 v2 v3
du_'42''45'mono'691''45''8804'_3952 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'691''45''8804'_3952 v0 v1 v2
  = coe
      du_'42''45'mono'45''8804'_3932 (coe v0) (coe v1)
      (coe d_'8804''45'refl_2646 (coe v0)) (coe v2)
-- Data.Nat.Properties.*-mono-<
d_'42''45'mono'45''60'_3958 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'45''60'_3958 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''60'_3958 v1 v3 v4 v5
du_'42''45'mono'45''60'_3958 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'45''60'_3958 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe seq (coe v3) (coe du_0'60'1'43'n_2944)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                      -> coe
                           du_'43''45'mono'45''60'_3450
                           (mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12)
                           (coe
                              du_'42''45'mono'45''60'_3958
                              (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-<
d_'42''45'mono'737''45''60'_3972 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'737''45''60'_3972 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60'_3972 v0 v2 v3 v4
du_'42''45'mono'737''45''60'_3972 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'737''45''60'_3972 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26 -> coe du_0'60'1'43'n_2944
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
               -> let v10 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (coe
                       du_'43''45'mono'45''8804''45''60'_3440
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                          (\ v11 v12 -> v12) (\ v11 -> mulInt (coe v11) (coe v0)) v10
                          (subInt (coe v2) (coe (1 :: Integer))))
                       (coe d_'8804''45'refl_2646 (coe v0))
                       (coe
                          du_'42''45'mono'737''45''60'_3972 (coe v0) (coe v10)
                          (coe subInt (coe v2) (coe (1 :: Integer)))
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoʳ-<
d_'42''45'mono'691''45''60'_3986 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'mono'691''45''60'_3986 v0 ~v1 ~v2 v3 v4
  = du_'42''45'mono'691''45''60'_3986 v0 v3 v4
du_'42''45'mono'691''45''60'_3986 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'mono'691''45''60'_3986 v0 v1 v2
  = case coe v0 of
      1 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
               -> coe
                    du_'43''45'mono'45''8804'_3400 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
               -> coe
                    du_'43''45'mono'45''8804'_3400
                    (coe mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    (coe
                       du_'60''8658''8804'_2724
                       (coe
                          du_'42''45'mono'691''45''60'_3986
                          (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤m*n
d_m'8804'm'42'n_4000 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'm'42'n_4000 v0 v1 ~v2 = du_m'8804'm'42'n_4000 v0 v1
du_m'8804'm'42'n_4000 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'm'42'n_4000 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2680)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_2724 v4))
      v0 (mulInt (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v2 v3 v4 v5 v6 -> v6) v0 (mulInt (coe v0) (coe (1 :: Integer)))
         (mulInt (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_2680)
               (\ v2 v3 v4 v5 v6 -> coe du_'8804''45''60''45'trans_2856 v5 v6))
            (mulInt (coe v0) (coe (1 :: Integer))) (mulInt (coe v0) (coe v1))
            (mulInt (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2680))
               (coe mulInt (coe v0) (coe v1)))
            (coe
               du_'42''45'mono'691''45''8804'_3952 (coe v0) (coe v1)
               (coe du_0'60'1'43'n_2944)))
         erased)
-- Data.Nat.Properties.m≤n*m
d_m'8804'n'42'm_4012 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'42'm_4012 v0 v1 ~v2 = du_m'8804'n'42'm_4012 v0 v1
du_m'8804'n'42'm_4012 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'42'm_4012 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2680)
         (\ v2 v3 v4 -> coe du_'60''8658''8804'_2724 v4))
      v0 (mulInt (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_2680)
            (\ v2 v3 v4 v5 v6 -> coe du_'8804''45''60''45'trans_2856 v5 v6))
         v0 (mulInt (coe v0) (coe v1)) (mulInt (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6) (mulInt (coe v0) (coe v1))
            (mulInt (coe v1) (coe v0)) (mulInt (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2680))
               (coe mulInt (coe v1) (coe v0)))
            erased)
         (coe du_m'8804'm'42'n_4000 (coe v0) (coe v1)))
-- Data.Nat.Properties.m<m*n
d_m'60'm'42'n_4024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'm'42'n_4024 v0 v1 ~v2 v3 = du_m'60'm'42'n_4024 v0 v1 v3
du_m'60'm'42'n_4024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'm'42'n_4024 v0 v1 v2
  = let v3 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
           -> coe
                seq (coe v6)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                   (coe v0) (coe mulInt (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                         (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_2850 v8 v10 v11)
                         (coe
                            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                         (\ v7 v8 v9 v10 v11 ->
                            coe du_'60''45''8804''45'trans_2862 v10 v11))
                      v0 (addInt (coe v1) (coe v3)) (mulInt (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe d_'8804''45'isPreorder_2680)
                            (\ v7 v8 v9 v10 v11 ->
                               coe du_'8804''45''60''45'trans_2856 v10 v11))
                         (addInt (coe v1) (coe v3))
                         (addInt (coe v1) (coe mulInt (coe v3) (coe v1)))
                         (mulInt (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe d_'8804''45'isPreorder_2680))
                            (coe mulInt (coe v0) (coe v1)))
                         (coe
                            du_'43''45'mono'691''45''8804'_3424 (coe v1)
                            (coe mulInt (coe v3) (coe v1))
                            (coe du_m'8804'm'42'n_4000 (coe v3) (coe v1))))
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                         (coe
                            MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                            (coe du_m'8804'n'43'm_3364 (coe v3))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m<n⇒m<n*o
d_m'60'n'8658'm'60'n'42'o_4038 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'n'42'o_4038 ~v0 v1 v2 ~v3 v4
  = du_m'60'n'8658'm'60'n'42'o_4038 v1 v2 v4
du_m'60'n'8658'm'60'n'42'o_4038 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'n'42'o_4038 v0 v1 v2
  = coe
      du_'60''45''8804''45'trans_2862 (coe v2)
      (coe du_m'8804'm'42'n_4000 (coe v0) (coe v1))
-- Data.Nat.Properties.m<n⇒m<o*n
d_m'60'n'8658'm'60'o'42'n_4054 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'o'42'n_4054 v0 v1 v2 ~v3 v4
  = du_m'60'n'8658'm'60'o'42'n_4054 v0 v1 v2 v4
du_m'60'n'8658'm'60'o'42'n_4054 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'60'o'42'n_4054 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v4) (coe v0) (coe mulInt (coe v2) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_2850 v6 v8 v9)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
               (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2862 v8 v9))
            v0 (mulInt (coe v1) (coe v2)) (mulInt (coe v2) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v5 v6 v7 v8 v9 -> v9) (mulInt (coe v1) (coe v2))
               (mulInt (coe v2) (coe v1)) (mulInt (coe v2) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_2680))
                  (coe mulInt (coe v2) (coe v1)))
               erased)
            (coe du_m'60'n'8658'm'60'n'42'o_4038 (coe v1) (coe v2) (coe v3))))
-- Data.Nat.Properties.*-cancelʳ-<
d_'42''45'cancel'691''45''60'_4064 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'691''45''60'_4064 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60'_4064 v0 v1 v2
du_'42''45'cancel'691''45''60'_4064 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'42''45'cancel'691''45''60'_4064 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            coe
              (let v4 = subInt (coe v2) (coe (1 :: Integer)) in
               coe
                 (coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe
                       du_'42''45'cancel'691''45''60'_4064 (coe v0) (coe v3)
                       (coe v4)))) in
    coe
      (coe
         seq (coe v0)
         (case coe v1 of
            0 -> case coe v2 of
                   _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                       coe du_0'60'1'43'n_2944
                   _ -> coe v3
            _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                 coe
                   (case coe v2 of
                      _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                          let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                          coe
                            (coe
                               MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                               (coe
                                  du_'42''45'cancel'691''45''60'_4064 (coe v0) (coe v4) (coe v5)))
                      _ -> coe v3)))
-- Data.Nat.Properties.*-cancelˡ-<
d_'42''45'cancel'737''45''60'_4080 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'42''45'cancel'737''45''60'_4080 v0 v1 v2 v3
  = coe
      du_'42''45'cancel'691''45''60'_4064 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Properties.*-cancel-<
d_'42''45'cancel'45''60'_4096 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'cancel'45''60'_4096
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'cancel'737''45''60'_4080)
      (\ v0 v1 v2 v3 -> coe du_'42''45'cancel'691''45''60'_4064 v0 v1 v2)
-- Data.Nat.Properties.^-identityʳ
d_'94''45'identity'691'_4098 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_4098 = erased
-- Data.Nat.Properties.^-zeroˡ
d_'94''45'zero'737'_4102 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_4102 = erased
-- Data.Nat.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_4112 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_4112 = erased
-- Data.Nat.Properties.^-semigroup-morphism
d_'94''45'semigroup'45'morphism_4130 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
d_'94''45'semigroup'45'morphism_4130 ~v0
  = du_'94''45'semigroup'45'morphism_4130
du_'94''45'semigroup'45'morphism_4130 ::
  MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
du_'94''45'semigroup'45'morphism_4130
  = coe
      MAlonzo.Code.Algebra.Morphism.C_IsSemigroupMorphism'46'constructor_1081
      erased erased
-- Data.Nat.Properties.^-monoid-morphism
d_'94''45'monoid'45'morphism_4138 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_306
d_'94''45'monoid'45'morphism_4138 ~v0
  = du_'94''45'monoid'45'morphism_4138
du_'94''45'monoid'45'morphism_4138 ::
  MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_306
du_'94''45'monoid'45'morphism_4138
  = coe
      MAlonzo.Code.Algebra.Morphism.C_IsMonoidMorphism'46'constructor_2137
      (coe du_'94''45'semigroup'45'morphism_4130) erased
-- Data.Nat.Properties.^-*-assoc
d_'94''45''42''45'assoc_4146 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_4146 = erased
-- Data.Nat.Properties.m^n≡0⇒m≡0
d_m'94'n'8801'0'8658'm'8801'0_4168 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'94'n'8801'0'8658'm'8801'0_4168 = erased
-- Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4180 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4180 ~v0 v1 ~v2
  = du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4180 v1
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4180 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_4180 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m^n≢0
d_m'94'n'8802'0_4196 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_m'94'n'8802'0_4196 v0 v1 ~v2 = du_m'94'n'8802'0_4196 v0 v1
du_m'94'n'8802'0_4196 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_m'94'n'8802'0_4196 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v1))
-- Data.Nat.Properties.m^n>0
d_m'94'n'62'0_4208 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'94'n'62'0_4208 ~v0 ~v1 ~v2 = du_m'94'n'62'0_4208
du_m'94'n'62'0_4208 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'94'n'62'0_4208
  = coe MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero'8315''185'_146
-- Data.Nat.Properties.^-monoˡ-≤
d_'94''45'mono'737''45''8804'_4218 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'737''45''8804'_4218 v0 ~v1 v2 v3
  = du_'94''45'mono'737''45''8804'_4218 v0 v2 v3
du_'94''45'mono'737''45''8804'_4218 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'737''45''8804'_4218 v0 v1 v2
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'42''45'mono'45''8804'_3932 (coe v1)
                (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v1) (coe v3))
                (coe v2)
                (coe
                   du_'94''45'mono'737''45''8804'_4218 (coe v3) (coe v1) (coe v2)))
-- Data.Nat.Properties.^-monoʳ-≤
d_'94''45'mono'691''45''8804'_4232 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'691''45''8804'_4232 v0 ~v1 v2 v3 v4
  = du_'94''45'mono'691''45''8804'_4232 v0 v2 v3 v4
du_'94''45'mono'691''45''8804'_4232 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'691''45''8804'_4232 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             du_n'8802'0'8658'n'62'0_2960
             (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v2))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
        -> let v7 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v8 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (coe
                   du_'42''45'mono'691''45''8804'_3952 (coe v0)
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                      (\ v9 v10 -> v10)
                      (MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0)) v7 v8)
                   (coe
                      du_'94''45'mono'691''45''8804'_4232 (coe v0) (coe v7) (coe v8)
                      (coe v6))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.^-monoˡ-<
d_'94''45'mono'737''45''60'_4248 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'737''45''60'_4248 v0 ~v1 v2 v3 v4
  = du_'94''45'mono'737''45''60'_4248 v0 v2 v3 v4
du_'94''45'mono'737''45''60'_4248 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'94''45'mono'737''45''60'_4248 v0 v1 v2 v3
  = case coe v0 of
      1 -> coe
             du_'42''45'mono'737''45''60'_3972 (coe (1 :: Integer)) (coe v1)
             (coe v2) (coe v3)
      _ -> coe
             du_'42''45'mono'45''60'_3958 (coe v2)
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                (\ v4 v5 -> v5)
                (\ v4 ->
                   MAlonzo.Code.Data.Nat.Base.d__'94'__272
                     (coe v4) (coe subInt (coe v0) (coe (1 :: Integer))))
                v1 v2)
             (coe v3)
             (coe
                du_'94''45'mono'737''45''60'_4248
                (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1) (coe v2)
                (coe v3))
-- Data.Nat.Properties.^-monoʳ-<
d_'94''45'mono'691''45''60'_4260 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'94''45'mono'691''45''60'_4260 v0 v1 v2 v3 v4
  = case coe v2 of
      0 -> let v5 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                  -> coe
                       seq (coe v8)
                       (coe
                          du_'42''45'mono'45''8804'_3932 (coe v0)
                          (coe MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0) (coe v5))
                          (coe v1) (coe du_m'94'n'62'0_4208))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (let v6 = subInt (coe v3) (coe (1 :: Integer)) in
              coe
                (case coe v4 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                     -> coe
                          du_'42''45'mono'691''45''60'_3986 (coe v0)
                          (coe
                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                             (\ v10 v11 -> v11)
                             (MAlonzo.Code.Data.Nat.Base.d__'94'__272 (coe v0)) v5 v6)
                          (coe
                             d_'94''45'mono'691''45''60'_4260 (coe v0) (coe v1) (coe v5)
                             (coe v6) (coe v9))
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_4278 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_4278 = erased
-- Data.Nat.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_4284 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_4284 = erased
-- Data.Nat.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_4294 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_4294 = erased
-- Data.Nat.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_4300 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_4300 = erased
-- Data.Nat.Properties.⊓-operator
d_'8851''45'operator_4310 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98
d_'8851''45'operator_4310
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1121
      (coe MAlonzo.Code.Data.Nat.Base.d__'8851'__232) erased erased
-- Data.Nat.Properties.⊔-operator
d_'8852''45'operator_4312 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_'8852''45'operator_4312
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1659
      (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__204) erased erased
-- Data.Nat.Properties.⊔≡⊔′
d_'8852''8801''8852''8242'_4318 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''8801''8852''8242'_4318 = erased
-- Data.Nat.Properties.⊓≡⊓′
d_'8851''8801''8851''8242'_4344 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''8801''8851''8242'_4344 = erased
-- Data.Nat.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_4368 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_4368 = erased
-- Data.Nat.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_4370 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_4370 = erased
-- Data.Nat.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_4372 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_4372 = erased
-- Data.Nat.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_4374 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_4374 = erased
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_4376 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x_4376
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_4378 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'x'8851'z'8804'y_4378
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_4380 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'z'8851'x'8804'y_4380
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_4382 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'x'8851'z'8804'y_4382
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_4384 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8658'z'8851'x'8804'y_4384
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_4386 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'y_4386
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_4388 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'z_4388
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_4390 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'y_4390
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_4392 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'x'8658'x'8804'y_4392
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_4394 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'y'8658'y'8804'x_4394
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_4396 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x_4396
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_4398 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'x'8852'y_4398
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3188
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_4400 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8804'y_4400
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_4402 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'x'8658'x'8804'y_4402
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_4404 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8851'y'8776'y'8658'y'8804'x_4404
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_4406 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'y_4406
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_4408 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_x'8804'y'8851'z'8658'x'8804'z_4408
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_4410 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_4410 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_4412 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_4412 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_4414 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_4414
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2922
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_4416 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_4416 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_4418 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_4418
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2924
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_4426 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_4426
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3008
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_4428 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_4428 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_4430 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_4430 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_4432 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'glb_4432
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_4434 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_4434 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_4442 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_4442
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2904
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_4444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_4444
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2906
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_4446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_4446
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2900
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_4450 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_4450
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2908
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_4452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_4452
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_4454 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_4454
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2918
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_4456 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''8804'_4456
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_4460 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'691''45''8804'_4460
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3136
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_4462 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'737''45''8804'_4462
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3126
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_4466 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_4466
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2858
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_4468 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_4468
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2926
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_4470 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_4470
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2920
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_4472 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_4472 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_4480 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_4480
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3088
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_4482 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_4482 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_4484 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_4484 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_4486 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_4486
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2922
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_4488 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_4488 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_4490 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_4490
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2924
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_4498 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_4498
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3040
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_4500 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_4500 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_4502 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_4502 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_4504 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_4504 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_4512 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_4512
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2904
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_4514 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_4514
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2906
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_4516 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_4516
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2900
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_4520 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_4520
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2908
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_4522 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_4522
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_4524 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'glb_4524
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_4526 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_4526
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2918
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_4528 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''8804'_4528
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_4532 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'691''45''8804'_4532
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3136
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_4534 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'737''45''8804'_4534
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3126
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_4536 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_4536
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2858
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_4538 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_4538
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2926
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_4540 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_4540
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2920
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_4542 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_4542 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_4550 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_4550
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3086
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_4554 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2530
d_'8851''45'isSemilattice_4554
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_4556 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_4556
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_4558 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8851''45''8852''45'distributiveLattice_4558
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_806
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_4560 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2904
d_'8851''45''8852''45'isDistributiveLattice_4560
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_796
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_4562 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2830
d_'8851''45''8852''45'isLattice_4562
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_794
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_4564 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8851''45''8852''45'lattice_4564
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_802
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_4566 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2530
d_'8851''45'isSemilattice_4566
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_4568 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_4568
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_4570 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8852''45''8851''45'distributiveLattice_4570
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_804
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_4572 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2904
d_'8852''45''8851''45'isDistributiveLattice_4572
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_798
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_4574 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2830
d_'8852''45''8851''45'isLattice_4574
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_792
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_4576 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8852''45''8851''45'lattice_4576
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_800
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312)
-- Data.Nat.Properties.⊔-identityˡ
d_'8852''45'identity'737'_4578 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'737'_4578 = erased
-- Data.Nat.Properties.⊔-identityʳ
d_'8852''45'identity'691'_4580 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'691'_4580 = erased
-- Data.Nat.Properties.⊔-identity
d_'8852''45'identity_4584 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'identity_4584
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-0-isMonoid
d_'8852''45'0'45'isMonoid_4586 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8852''45'0'45'isMonoid_4586
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (let v0 = d_'8804''45'totalPreorder_2692 in
       coe
         (let v1 = d_'8852''45'operator_4312 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                  (coe v1)))))
      (coe d_'8852''45'identity_4584)
-- Data.Nat.Properties.⊔-0-isCommutativeMonoid
d_'8852''45'0'45'isCommutativeMonoid_4588 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'8852''45'0'45'isCommutativeMonoid_4588
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'8852''45'0'45'isMonoid_4586)
      (let v0 = d_'8804''45'totalPreorder_2692 in
       coe
         (let v1 = d_'8852''45'operator_4312 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2726
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                  (coe v1)))))
-- Data.Nat.Properties.⊔-0-monoid
d_'8852''45'0'45'monoid_4590 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'8852''45'0'45'monoid_4590
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (0 :: Integer)
      d_'8852''45'0'45'isMonoid_4586
-- Data.Nat.Properties.⊔-0-commutativeMonoid
d_'8852''45'0'45'commutativeMonoid_4592 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'8852''45'0'45'commutativeMonoid_4592
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (0 :: Integer)
      d_'8852''45'0'45'isCommutativeMonoid_4588
-- Data.Nat.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_4600 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_4600 = erased
-- Data.Nat.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_4610 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_4610 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_4620 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_4620 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_4630 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_4630 = erased
-- Data.Nat.Properties.m<n⇒m<n⊔o
d_m'60'n'8658'm'60'n'8852'o_4636 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'n'8852'o_4636 v0 v1
  = let v2 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v3 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v2))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v3))
            (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties.m<n⇒m<o⊔n
d_m'60'n'8658'm'60'o'8852'n_4640 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'60'o'8852'n_4640 v0 v1
  = let v2 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v3 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v2))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v3))
            (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties.m⊔n<o⇒m<o
d_m'8852'n'60'o'8658'm'60'o_4648 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'60'o'8658'm'60'o_4648 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'm'60'o_4648 v0 v1 v3
du_m'8852'n'60'o'8658'm'60'o_4648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8852'n'60'o'8658'm'60'o_4648 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_2856
      (let v3 = d_'8804''45'totalPreorder_2692 in
       coe
         (let v4 = d_'8852''45'operator_4312 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                  (coe v4))
               (coe v0) (coe v1))))
      (coe v2)
-- Data.Nat.Properties.m⊔n<o⇒n<o
d_m'8852'n'60'o'8658'n'60'o_4662 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'60'o'8658'n'60'o_4662 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'n'60'o_4662 v0 v1 v3
du_m'8852'n'60'o'8658'n'60'o_4662 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8852'n'60'o'8658'n'60'o_4662 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_2856
      (let v3 = d_'8804''45'totalPreorder_2692 in
       coe
         (let v4 = d_'8852''45'operator_4312 in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                  (coe v4))
               (coe v0) (coe v1))))
      (coe v2)
-- Data.Nat.Properties.⊔-mono-<
d_'8852''45'mono'45''60'_4670 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'mono'45''60'_4670 v0 v1 v2 v3
  = let v4 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v5 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v4))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v5))
            (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v3)
            (coe addInt (coe (1 :: Integer)) (coe v2))))
-- Data.Nat.Properties.⊔-pres-<m
d_'8852''45'pres'45''60'm_4672 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'pres'45''60'm_4672 v0 v1 v2 v3 v4
  = coe d_'8852''45'mono'45''60'_4670 v0 v1 v2 v1 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊔
d_'43''45'distrib'737''45''8852'_4682 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8852'_4682 = erased
-- Data.Nat.Properties.+-distribʳ-⊔
d_'43''45'distrib'691''45''8852'_4694 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8852'_4694 = erased
-- Data.Nat.Properties.+-distrib-⊔
d_'43''45'distrib'45''8852'_4696 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8852'_4696
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊔n≤m+n
d_m'8852'n'8804'm'43'n_4702 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8852'n'8804'm'43'n_4702 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_156
                         d_'8852''45'operator_4312 v0 v1 v2)))
              (coe
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_150
                         d_'8852''45'operator_4312 v0 v1 v2)))
              (coe d_'8804''45'total_2660 (coe v1) (coe v0)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_m'8804'm'43'n_3352 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe du_m'8804'n'43'm_3364 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-⊔
d_'42''45'distrib'737''45''8852'_4732 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852'_4732 = erased
-- Data.Nat.Properties.*-distribʳ-⊔
d_'42''45'distrib'691''45''8852'_4754 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852'_4754 = erased
-- Data.Nat.Properties.*-distrib-⊔
d_'42''45'distrib'45''8852'_4756 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8852'_4756
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-zeroˡ
d_'8851''45'zero'737'_4758 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_4758 = erased
-- Data.Nat.Properties.⊓-zeroʳ
d_'8851''45'zero'691'_4760 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_4760 = erased
-- Data.Nat.Properties.⊓-zero
d_'8851''45'zero_4764 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_4764
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne
d_'8852''45''8851''45'isSemiringWithoutOne_4766 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_'8852''45''8851''45'isSemiringWithoutOne_4766
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutOne'46'constructor_33087
      (coe d_'8852''45'0'45'isCommutativeMonoid_4588) erased
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_2814
         (coe d_'8804''45'totalPreorder_2692)
         (coe d_'8851''45'operator_4310))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3008
         (coe d_'8804''45'totalPreorder_2692)
         (coe d_'8851''45'operator_4310) (coe d_'8852''45'operator_4312))
      (coe d_'8851''45'zero_4764)
-- Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_4768 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_4768
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiringWithoutOne'46'constructor_36895
      (coe d_'8852''45''8851''45'isSemiringWithoutOne_4766)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_2726
         (coe d_'8804''45'totalPreorder_2692)
         (coe d_'8851''45'operator_4310))
-- Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne
d_'8852''45''8851''45'commutativeSemiringWithoutOne_4770 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiringWithoutOne_1744
d_'8852''45''8851''45'commutativeSemiringWithoutOne_4770
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiringWithoutOne'46'constructor_31487
      MAlonzo.Code.Data.Nat.Base.d__'8852'__204
      MAlonzo.Code.Data.Nat.Base.d__'8851'__232 (0 :: Integer)
      d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_4768
-- Data.Nat.Properties.m<n⇒m⊓o<n
d_m'60'n'8658'm'8851'o'60'n_4774 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'm'8851'o'60'n_4774 v0 ~v1 v2 v3
  = du_m'60'n'8658'm'8851'o'60'n_4774 v0 v2 v3
du_m'60'n'8658'm'8851'o'60'n_4774 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'm'8851'o'60'n_4774 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_2856
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
         (coe d_'8804''45'totalPreorder_2692)
         (coe d_'8851''45'operator_4310) (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.m<n⇒o⊓m<n
d_m'60'n'8658'o'8851'm'60'n_4782 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'o'8851'm'60'n_4782 v0 ~v1 v2 v3
  = du_m'60'n'8658'o'8851'm'60'n_4782 v0 v2 v3
du_m'60'n'8658'o'8851'm'60'n_4782 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'o'8851'm'60'n_4782 v0 v1 v2
  = coe
      du_'8804''45''60''45'trans_2856
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
         (coe d_'8804''45'totalPreorder_2692)
         (coe d_'8851''45'operator_4310) (coe v1) (coe v0))
      (coe v2)
-- Data.Nat.Properties.m<n⊓o⇒m<n
d_m'60'n'8851'o'8658'm'60'n_4792 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8851'o'8658'm'60'n_4792 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m<n⊓o⇒m<o
d_m'60'n'8851'o'8658'm'60'o_4798 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8851'o'8658'm'60'o_4798 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.⊓-mono-<
d_'8851''45'mono'45''60'_4800 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'mono'45''60'_4800 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
      (coe d_'8804''45'totalPreorder_2692)
      (coe d_'8851''45'operator_4310)
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
      (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3)
-- Data.Nat.Properties.⊓-pres-m<
d_'8851''45'pres'45'm'60'_4802 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'pres'45'm'60'_4802 v0 v1 v2 v3 v4
  = coe d_'8851''45'mono'45''60'_4800 v0 v1 v0 v2 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊓
d_'43''45'distrib'737''45''8851'_4812 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8851'_4812 = erased
-- Data.Nat.Properties.+-distribʳ-⊓
d_'43''45'distrib'691''45''8851'_4824 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8851'_4824 = erased
-- Data.Nat.Properties.+-distrib-⊓
d_'43''45'distrib'45''8851'_4826 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8851'_4826
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊓n≤m+n
d_m'8851'n'8804'm'43'n_4832 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8851'n'8804'm'43'n_4832 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
              (coe
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_120
                         d_'8851''45'operator_4310 v0 v1 v2)))
              (coe
                 (\ v2 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_126
                         d_'8851''45'operator_4310 v0 v1 v2)))
              (coe d_'8804''45'total_2660 (coe v0) (coe v1)) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe du_m'8804'm'43'n_3352 (coe v0)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe du_m'8804'n'43'm_3364 (coe v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-⊓
d_'42''45'distrib'737''45''8851'_4862 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851'_4862 = erased
-- Data.Nat.Properties.*-distribʳ-⊓
d_'42''45'distrib'691''45''8851'_4884 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851'_4884 = erased
-- Data.Nat.Properties.*-distrib-⊓
d_'42''45'distrib'45''8851'_4886 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8851'_4886
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.0∸n≡0
d_0'8760'n'8801'0_4888 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8760'n'8801'0_4888 = erased
-- Data.Nat.Properties.n∸n≡0
d_n'8760'n'8801'0_4892 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8760'n'8801'0_4892 = erased
-- Data.Nat.Properties.pred[m∸n]≡m∸[1+n]
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_4900 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_4900 = erased
-- Data.Nat.Properties.m∸n≤m
d_m'8760'n'8804'm_4914 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804'm_4914 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_2646
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe
                       d_'8804''45'refl_2646
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 (0 :: Integer) v1)
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_'8804''45'trans_2654
                          (coe d_m'8760'n'8804'm_4914 (coe v3) (coe v2))
                          (coe d_n'8804'1'43'n_2714 (coe v3))))
-- Data.Nat.Properties.m≮m∸n
d_m'8814'm'8760'n_4928 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'8814'm'8760'n_4928 = erased
-- Data.Nat.Properties.1+m≢m∸n
d_1'43'm'8802'm'8760'n_4940 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_1'43'm'8802'm'8760'n_4940 = erased
-- Data.Nat.Properties.∸-mono
d_'8760''45'mono_4948 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono_4948 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5)
              (coe
                 du_'8804''45'trans_2654
                 (coe d_m'8760'n'8804'm_4914 (coe v0) (coe v2)) (coe v4)) in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
           -> case coe v5 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe
                       du_'8804''45'trans_2654
                       (coe d_m'8760'n'8804'm_4914 (coe v0) (coe v2))
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v10
                  -> case coe v2 of
                       _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                           case coe v3 of
                             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                                 coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                             _ -> coe v6
                       _ -> coe v6
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
           -> let v10
                    = seq
                        (coe v5)
                        (coe
                           du_'8804''45'trans_2654
                           (coe d_m'8760'n'8804'm_4914 (coe v0) (coe v2))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)) in
              coe
                (case coe v0 of
                   _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
                       let v11 = subInt (coe v0) (coe (1 :: Integer)) in
                       coe
                         (let v12
                                = seq
                                    (coe v5)
                                    (coe
                                       du_'8804''45'trans_2654
                                       (coe d_m'8760'n'8804'm_4914 (coe v0) (coe v2))
                                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)) in
                          coe
                            (case coe v1 of
                               _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                                   let v13 = subInt (coe v1) (coe (1 :: Integer)) in
                                   coe
                                     (case coe v5 of
                                        MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                                          -> coe
                                               du_'8804''45'trans_2654
                                               (coe d_m'8760'n'8804'm_4914 (coe v0) (coe v2))
                                               (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)
                                        MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v16
                                          -> case coe v2 of
                                               _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                                                   let v17 = subInt (coe v2) (coe (1 :: Integer)) in
                                                   coe
                                                     (case coe v3 of
                                                        _ | coe
                                                              geqInt (coe v3)
                                                              (coe (1 :: Integer)) ->
                                                            let v18
                                                                  = subInt
                                                                      (coe v3)
                                                                      (coe (1 :: Integer)) in
                                                            coe
                                                              (coe
                                                                 d_'8760''45'mono_4948 (coe v11)
                                                                 (coe v13) (coe v17) (coe v18)
                                                                 (coe v9) (coe v16))
                                                        _ -> coe v12)
                                               _ -> coe v12
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                               _ -> coe v12))
                   _ -> coe v10)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∸-monoˡ-≤
d_'8760''45'mono'737''45''8804'_4962 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'737''45''8804'_4962 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_4948 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe d_'8804''45'refl_2646 (coe v2))
-- Data.Nat.Properties.∸-monoʳ-≤
d_'8760''45'mono'691''45''8804'_4970 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'691''45''8804'_4970 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_4948 (coe v2) (coe v2) (coe v1) (coe v0)
      (coe d_'8804''45'refl_2646 (coe v2)) (coe v3)
-- Data.Nat.Properties.∸-monoˡ-<
d_'8760''45'mono'737''45''60'_4980 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'737''45''60'_4980 ~v0 v1 ~v2 v3 v4
  = du_'8760''45'mono'737''45''60'_4980 v1 v3 v4
du_'8760''45'mono'737''45''60'_4980 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'mono'737''45''60'_4980 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
                  -> case coe v2 of
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                         -> coe
                              du_'8760''45'mono'737''45''60'_4980 (coe v3) (coe v6) (coe v9)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∸-monoʳ-<
d_'8760''45'mono'691''45''60'_5006 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'mono'691''45''60'_5006 v0 v1 v2 v3 v4
  = let v5 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (case coe v2 of
         0 -> coe
                seq (coe v3)
                (coe
                   seq (coe v4)
                   (coe
                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                      (d_m'8760'n'8804'm_4914
                         (coe subInt (coe v0) (coe (1 :: Integer))) (coe v5))))
         _ -> let v6 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                     -> case coe v4 of
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v12
                            -> let v13 = subInt (coe v0) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    d_'8760''45'mono'691''45''60'_5006 (coe v13) (coe v5) (coe v6)
                                    (coe v9) (coe v12))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.Properties.∸-cancelʳ-≤
d_'8760''45'cancel'691''45''8804'_5028 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'cancel'691''45''8804'_5028 ~v0 v1 ~v2 v3 ~v4
  = du_'8760''45'cancel'691''45''8804'_5028 v1 v3
du_'8760''45'cancel'691''45''8804'_5028 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'cancel'691''45''8804'_5028 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> case coe v0 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
             _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_'8760''45'cancel'691''45''8804'_5028 (coe v5) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∸-cancelʳ-<
d_'8760''45'cancel'691''45''60'_5048 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8760''45'cancel'691''45''60'_5048 v0 v1 ~v2 ~v3
  = du_'8760''45'cancel'691''45''60'_5048 v0 v1
du_'8760''45'cancel'691''45''60'_5048 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8760''45'cancel'691''45''60'_5048 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe du_0'60'1'43'n_2944
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe du_'8760''45'cancel'691''45''60'_5048 (coe v2) (coe v3))))
-- Data.Nat.Properties.∸-cancelˡ-≡
d_'8760''45'cancel'737''45''8801'_5068 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'737''45''8801'_5068 = erased
-- Data.Nat.Properties.∸-cancelʳ-≡
d_'8760''45'cancel'691''45''8801'_5084 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'691''45''8801'_5084 = erased
-- Data.Nat.Properties.m∸n≡0⇒m≤n
d_m'8760'n'8801'0'8658'm'8804'n_5094 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8801'0'8658'm'8804'n_5094 v0 ~v1 ~v2
  = du_m'8760'n'8801'0'8658'm'8804'n_5094 v0
du_m'8760'n'8801'0'8658'm'8804'n_5094 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8760'n'8801'0'8658'm'8804'n_5094 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe du_m'8760'n'8801'0'8658'm'8804'n_5094 (coe v1)))
-- Data.Nat.Properties.m≤n⇒m∸n≡0
d_m'8804'n'8658'm'8760'n'8801'0_5102 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8760'n'8801'0_5102 = erased
-- Data.Nat.Properties.m<n⇒0<n∸m
d_m'60'n'8658'0'60'n'8760'm_5108 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'60'n'8658'0'60'n'8760'm_5108 v0 ~v1 v2
  = du_m'60'n'8658'0'60'n'8760'm_5108 v0 v2
du_m'60'n'8658'0'60'n'8760'm_5108 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'60'n'8658'0'60'n'8760'm_5108 v0 v1
  = case coe v0 of
      0 -> coe du_0'60'1'43'n_2944
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe du_m'60'n'8658'0'60'n'8760'm_5108 (coe v2) (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m∸n≢0⇒n<m
d_m'8760'n'8802'0'8658'n'60'm_5118 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8802'0'8658'n'60'm_5118 v0 v1 ~v2
  = du_m'8760'n'8802'0'8658'n'60'm_5118 v0 v1
du_m'8760'n'8802'0'8658'n'60'm_5118 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8760'n'8802'0'8658'n'60'm_5118 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
              (\ v2 ->
                 coe
                   du_'8804''7495''8658''8804'_2616
                   (coe addInt (coe (1 :: Integer)) (coe v1)))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
                 (coe
                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                    (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v0))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then case coe v4 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5 -> coe v5
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v4)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m>n⇒m∸n≢0
d_m'62'n'8658'm'8760'n'8802'0_5146 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'62'n'8658'm'8760'n'8802'0_5146 = erased
-- Data.Nat.Properties.m≤n⇒n∸m≤n
d_m'8804'n'8658'n'8760'm'8804'n_5152 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'8658'n'8760'm'8804'n_5152 ~v0 v1 v2
  = du_m'8804'n'8658'n'8760'm'8804'n_5152 v1 v2
du_m'8804'n'8658'n'8760'm'8804'n_5152 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'n'8658'n'8760'm'8804'n_5152 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe
             d_'8804''45'refl_2646
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_m'8804'n'8658'n'8760'm'8804'n_5152 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-∸-comm
d_'43''45''8760''45'comm_5162 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'comm_5162 = erased
-- Data.Nat.Properties.∸-+-assoc
d_'8760''45''43''45'assoc_5180 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45''43''45'assoc_5180 = erased
-- Data.Nat.Properties.+-∸-assoc
d_'43''45''8760''45'assoc_5204 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'assoc_5204 = erased
-- Data.Nat.Properties.m+n≤o⇒m≤o∸n
d_m'43'n'8804'o'8658'm'8804'o'8760'n_5226 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'43'n'8804'o'8658'm'8804'o'8760'n_5226 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o'8760'n_5226 v0 v3
du_m'43'n'8804'o'8658'm'8804'o'8760'n_5226 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'43'n'8804'o'8658'm'8804'o'8760'n_5226 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe du_m'43'n'8804'o'8658'm'8804'o'8760'n_5226 (coe v2) (coe v5))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.m≤o∸n⇒m+n≤o
d_m'8804'o'8760'n'8658'm'43'n'8804'o_5254 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'o'8760'n'8658'm'43'n'8804'o_5254 ~v0 ~v1 ~v2 v3 v4
  = du_m'8804'o'8760'n'8658'm'43'n'8804'o_5254 v3 v4
du_m'8804'o'8760'n'8658'm'43'n'8804'o_5254 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_m'8804'o'8760'n'8658'm'43'n'8804'o_5254 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26 -> coe v1
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe du_m'8804'o'8760'n'8658'm'43'n'8804'o_5254 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤n+m∸n
d_m'8804'n'43'm'8760'n_5280 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43'm'8760'n_5280 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe d_'8804''45'refl_2646 (coe v0)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (d_m'8804'n'43'm'8760'n_5280 (coe v2) (coe v3))))
-- Data.Nat.Properties.m+n∸n≡m
d_m'43'n'8760'n'8801'm_5294 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'n'8801'm_5294 = erased
-- Data.Nat.Properties.m+n∸m≡n
d_m'43'n'8760'm'8801'n_5306 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'm'8801'n_5306 = erased
-- Data.Nat.Properties.m+[n∸m]≡n
d_m'43''91'n'8760'm'93''8801'n_5314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43''91'n'8760'm'93''8801'n_5314 = erased
-- Data.Nat.Properties.m∸n+n≡m
d_m'8760'n'43'n'8801'm_5328 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760'n'43'n'8801'm_5328 = erased
-- Data.Nat.Properties.m∸[m∸n]≡n
d_m'8760''91'm'8760'n'93''8801'n_5340 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760''91'm'8760'n'93''8801'n_5340 = erased
-- Data.Nat.Properties.[m+n]∸[m+o]≡n∸o
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_5356 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_5356 = erased
-- Data.Nat.Properties.*-distribʳ-∸
d_'42''45'distrib'691''45''8760'_5368 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8760'_5368 = erased
-- Data.Nat.Properties.*-distribˡ-∸
d_'42''45'distrib'737''45''8760'_5388 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8760'_5388 = erased
-- Data.Nat.Properties.*-distrib-∸
d_'42''45'distrib'45''8760'_5390 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8760'_5390
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.even≢odd
d_even'8802'odd_5396 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_even'8802'odd_5396 = erased
-- Data.Nat.Properties.m⊓n+n∸m≡n
d_m'8851'n'43'n'8760'm'8801'n_5412 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8851'n'43'n'8760'm'8801'n_5412 = erased
-- Data.Nat.Properties.[m∸n]⊓[n∸m]≡0
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_5426 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_5426 = erased
-- Data.Nat.Properties.∸-distribˡ-⊓-⊔
d_'8760''45'distrib'737''45''8851''45''8852'_5442 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8851''45''8852'_5442 = erased
-- Data.Nat.Properties.∸-distribʳ-⊓
d_'8760''45'distrib'691''45''8851'_5450 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8851'_5450 = erased
-- Data.Nat.Properties.∸-distribˡ-⊔-⊓
d_'8760''45'distrib'737''45''8852''45''8851'_5464 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8852''45''8851'_5464 = erased
-- Data.Nat.Properties.∸-distribʳ-⊔
d_'8760''45'distrib'691''45''8852'_5472 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8852'_5472 = erased
-- Data.Nat.Properties.pred[n]≤n
d_pred'91'n'93''8804'n_5480 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'91'n'93''8804'n_5480 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d_n'8804'1'43'n_2714 (coe v1))
-- Data.Nat.Properties.≤pred⇒≤
d_'8804'pred'8658''8804'_5484 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804'pred'8658''8804'_5484 ~v0 v1 v2
  = du_'8804'pred'8658''8804'_5484 v1 v2
du_'8804'pred'8658''8804'_5484 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804'pred'8658''8804'_5484 v0 v1 = coe seq (coe v0) (coe v1)
-- Data.Nat.Properties.≤⇒pred≤
d_'8804''8658'pred'8804'_5492 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8658'pred'8804'_5492 v0 ~v1 v2
  = du_'8804''8658'pred'8804'_5492 v0 v2
du_'8804''8658'pred'8804'_5492 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8658'pred'8804'_5492 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8804''45'trans_2654 (coe d_n'8804'1'43'n_2714 (coe v2))
                (coe v1))
-- Data.Nat.Properties.<⇒≤pred
d_'60''8658''8804'pred_5500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8658''8804'pred_5500 ~v0 ~v1 v2
  = du_'60''8658''8804'pred_5500 v2
du_'60''8658''8804'pred_5500 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8658''8804'pred_5500 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.suc-pred
d_suc'45'pred_5508 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_5508 = erased
-- Data.Nat.Properties.pred-mono-≤
d_pred'45'mono'45''8804'_5512 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono'45''8804'_5512 v0 ~v1 v2
  = du_pred'45'mono'45''8804'_5512 v0 v2
du_pred'45'mono'45''8804'_5512 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'45'mono'45''8804'_5512 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> coe
             MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v1)
-- Data.Nat.Properties.pred-mono-<
d_pred'45'mono'45''60'_5516 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono'45''60'_5516 v0 v1 ~v2
  = du_pred'45'mono'45''60'_5516 v0 v1
du_pred'45'mono'45''60'_5516 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_pred'45'mono'45''60'_5516 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> case coe v1 of
             0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
-- Data.Nat.Properties.m≡n⇒∣m-n∣≡0
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_5518 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_5518 = erased
-- Data.Nat.Properties.∣m-n∣≡0⇒m≡n
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_5522 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_5522 = erased
-- Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_5532 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_5532 = erased
-- Data.Nat.Properties.m≤n⇒∣m-n∣≡n∸m
d_m'8804'n'8658''8739'm'45'n'8739''8801'n'8760'm_5538 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'm'45'n'8739''8801'n'8760'm_5538 = erased
-- Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5544 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5544 v0 v1 ~v2
  = du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5544 v0 v1
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5544 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5544 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe
                             du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_5544 (coe v2)
                             (coe v3))))
-- Data.Nat.Properties.∣n-n∣≡0
d_'8739'n'45'n'8739''8801'0_5560 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'45'n'8739''8801'0_5560 = erased
-- Data.Nat.Properties.∣m-m+n∣≡n
d_'8739'm'45'm'43'n'8739''8801'n_5568 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'm'43'n'8739''8801'n_5568 = erased
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o∣
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_5582 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_5582
  = erased
-- Data.Nat.Properties.m∸n≤∣m-n∣
d_m'8760'n'8804''8739'm'45'n'8739'_5598 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8760'n'8804''8739'm'45'n'8739'_5598 v0 v1
  = let v2 = d_'8804''45'total_2660 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe
                d_'8804''45'refl_2646
                (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.∣m-n∣≤m⊔n
d_'8739'm'45'n'8739''8804'm'8852'n_5628 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8804'm'8852'n_5628 v0 v1
  = case coe v0 of
      0 -> coe
             d_'8804''45'refl_2646
             (coe
                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                (coe (0 :: Integer)) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       d_'8804''45'refl_2646
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                          (coe (0 :: Integer)))
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe d_'8739'm'45'n'8739''8804'm'8852'n_5628 (coe v2) (coe v3)))
-- Data.Nat.Properties.∣-∣-identityˡ
d_'8739''45''8739''45'identity'737'_5638 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'737'_5638 = erased
-- Data.Nat.Properties.∣-∣-identityʳ
d_'8739''45''8739''45'identity'691'_5642 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'691'_5642 = erased
-- Data.Nat.Properties.∣-∣-identity
d_'8739''45''8739''45'identity_5646 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8739''45''8739''45'identity_5646
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.∣-∣-comm
d_'8739''45''8739''45'comm_5648 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'comm_5648 = erased
-- Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_5662 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_5662 v0
                                                                      v1
  = let v2 = d_'8804''45'total_2660 (coe v0) (coe v1) in
    coe
      (case coe v2 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                (let v4
                       = coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                      (coe v4)
                      (coe
                         MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                         (coe v1))
                      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                         (\ v5 v6 v7 v8 v9 -> v9)
                         (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                            (coe v0) (coe v1))
                         (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                            (coe v1) (coe v0))
                         (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                            (\ v5 v6 v7 v8 v9 -> v9)
                            (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                               (coe v1) (coe v0))
                            (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                            (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_2680))
                               (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0))
                            erased)
                         erased)))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-distribˡ-∣-∣-aux
d_'42''45'distrib'737''45''8739''45''8739''45'aux_5690 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739''45'aux_5690 = erased
-- Data.Nat.Properties.*-distribˡ-∣-∣
d_'42''45'distrib'737''45''8739''45''8739'_5702 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739'_5702 = erased
-- Data.Nat.Properties.*-distribʳ-∣-∣
d_'42''45'distrib'691''45''8739''45''8739'_5732 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8739''45''8739'_5732 = erased
-- Data.Nat.Properties.*-distrib-∣-∣
d_'42''45'distrib'45''8739''45''8739'_5734 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8739''45''8739'_5734
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m≤n+∣n-m∣
d_m'8804'n'43''8739'n'45'm'8739'_5740 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43''8739'n'45'm'8739'_5740 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe d_'8804''45'refl_2646 (coe v0)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (d_m'8804'n'43''8739'n'45'm'8739'_5740 (coe v2) (coe v3))))
-- Data.Nat.Properties.m≤n+∣m-n∣
d_m'8804'n'43''8739'm'45'n'8739'_5754 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804'n'43''8739'm'45'n'8739'_5754 v0 v1
  = coe d_m'8804'n'43''8739'n'45'm'8739'_5740 (coe v0) (coe v1)
-- Data.Nat.Properties.m≤∣m-n∣+n
d_m'8804''8739'm'45'n'8739''43'n_5768 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_m'8804''8739'm'45'n'8739''43'n_5768 v0 v1
  = coe d_m'8804'n'43''8739'm'45'n'8739'_5754 (coe v0) (coe v1)
-- Data.Nat.Properties.∣-∣-triangle
d_'8739''45''8739''45'triangle_5776 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739''45''8739''45'triangle_5776 v0 v1 v2
  = case coe v0 of
      0 -> coe d_m'8804'n'43''8739'n'45'm'8739'_5740 (coe v2) (coe v1)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                          (coe d_'8804''45'isPreorder_2680)
                          (\ v4 v5 v6 -> coe du_'60''8658''8804'_2724 v6))
                       (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                          (coe v0) (coe v2))
                       (addInt
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                             (coe (0 :: Integer)) (coe v2))
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                             (coe (0 :: Integer))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                             (coe d_'8804''45'isPreorder_2680)
                             (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2856 v7 v8))
                          (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                             (coe v0) (coe v2))
                          (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v2))
                          (addInt
                             (coe
                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                (coe (0 :: Integer)) (coe v2))
                             (coe
                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                                (coe (0 :: Integer))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                (coe d_'8804''45'isPreorder_2680)
                                (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2856 v7 v8))
                             (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v2))
                             (addInt (coe v0) (coe v2))
                             (addInt
                                (coe
                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                   (coe (0 :: Integer)) (coe v2))
                                (coe
                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                                   (coe (0 :: Integer))))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v4 v5 v6 v7 v8 -> v8) (addInt (coe v0) (coe v2))
                                (addInt
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                                      (coe (0 :: Integer)))
                                   (coe v2))
                                (addInt
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                      (coe (0 :: Integer)) (coe v2))
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                                      (coe (0 :: Integer))))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                      (coe d_'8804''45'isPreorder_2680))
                                   (coe
                                      addInt
                                      (coe
                                         MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                         (coe v0) (coe (0 :: Integer)))
                                      (coe v2)))
                                erased)
                             (d_m'8852'n'8804'm'43'n_4702 (coe v0) (coe v2)))
                          (d_'8739'm'45'n'8739''8804'm'8852'n_5628 (coe v0) (coe v2)))
                _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v2 of
                          0 -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_2680)
                                    (\ v5 v6 v7 -> coe du_'60''8658''8804'_2724 v7))
                                 (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                    (coe v0) (coe (0 :: Integer)))
                                 (addInt
                                    (coe
                                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v0)
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280 (coe v1)
                                       (coe (0 :: Integer))))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                    (\ v5 v6 v7 v8 v9 -> v9)
                                    (MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                       (coe v0) (coe (0 :: Integer)))
                                    v0
                                    (addInt
                                       (coe
                                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                          (coe v0) (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                          (coe v1) (coe (0 :: Integer))))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe d_'8804''45'isPreorder_2680)
                                          (\ v5 v6 v7 v8 v9 ->
                                             coe du_'8804''45''60''45'trans_2856 v8 v9))
                                       v0
                                       (addInt
                                          (coe
                                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                             (coe v0) (coe v1))
                                          (coe v1))
                                       (addInt
                                          (coe
                                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                             (coe v0) (coe v1))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                             (coe v1) (coe (0 :: Integer))))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                          (\ v5 v6 v7 v8 v9 -> v9)
                                          (addInt
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                (coe v0) (coe v1))
                                             (coe v1))
                                          (addInt
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                (coe v1) (coe (0 :: Integer))))
                                          (addInt
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                (coe v1) (coe (0 :: Integer))))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_2680))
                                             (coe
                                                addInt
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                   (coe v0) (coe v1))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
                                                   (coe v1) (coe (0 :: Integer)))))
                                          erased)
                                       (d_m'8804''8739'm'45'n'8739''43'n_5768 (coe v0) (coe v1)))
                                    erased)
                          _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    d_'8739''45''8739''45'triangle_5776 (coe v3) (coe v4)
                                    (coe v5))))
-- Data.Nat.Properties.∣-∣≡∣-∣′
d_'8739''45''8739''8801''8739''45''8739''8242'_5808 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''8801''8739''45''8739''8242'_5808 = erased
-- Data.Nat.Properties.∣-∣-isProtoMetric
d_'8739''45''8739''45'isProtoMetric_5830 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsProtoMetric_30
d_'8739''45''8739''45'isProtoMetric_5830
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsProtoMetric'46'constructor_2109
      (coe d_'8804''45'isPartialOrder_2684)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Nat.Properties.∣-∣-isPreMetric
d_'8739''45''8739''45'isPreMetric_5832 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsPreMetric_102
d_'8739''45''8739''45'isPreMetric_5832
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsPreMetric'46'constructor_6335
      (coe d_'8739''45''8739''45'isProtoMetric_5830) erased
-- Data.Nat.Properties.∣-∣-isQuasiSemiMetric
d_'8739''45''8739''45'isQuasiSemiMetric_5834 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsQuasiSemiMetric_174
d_'8739''45''8739''45'isQuasiSemiMetric_5834
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsQuasiSemiMetric'46'constructor_10097
      (coe d_'8739''45''8739''45'isPreMetric_5832) erased
-- Data.Nat.Properties.∣-∣-isSemiMetric
d_'8739''45''8739''45'isSemiMetric_5836 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsSemiMetric_250
d_'8739''45''8739''45'isSemiMetric_5836
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsSemiMetric'46'constructor_13989
      (coe d_'8739''45''8739''45'isQuasiSemiMetric_5834) erased
-- Data.Nat.Properties.∣-∣-isMetric
d_'8739''45''8739''45'isMetric_5838 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsGeneralMetric_332
d_'8739''45''8739''45'isMetric_5838
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsGeneralMetric'46'constructor_18237
      (coe d_'8739''45''8739''45'isSemiMetric_5836)
      (coe d_'8739''45''8739''45'triangle_5776)
-- Data.Nat.Properties.∣-∣-quasiSemiMetric
d_'8739''45''8739''45'quasiSemiMetric_5840 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_QuasiSemiMetric_186
d_'8739''45''8739''45'quasiSemiMetric_5840
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_QuasiSemiMetric'46'constructor_3231
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isQuasiSemiMetric_5834
-- Data.Nat.Properties.∣-∣-semiMetric
d_'8739''45''8739''45'semiMetric_5842 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_SemiMetric_284
d_'8739''45''8739''45'semiMetric_5842
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_SemiMetric'46'constructor_4955
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isSemiMetric_5836
-- Data.Nat.Properties.∣-∣-preMetric
d_'8739''45''8739''45'preMetric_5844 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_PreMetric_96
d_'8739''45''8739''45'preMetric_5844
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_PreMetric'46'constructor_1617
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isPreMetric_5832
-- Data.Nat.Properties.∣-∣-metric
d_'8739''45''8739''45'metric_5846 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_Metric_388
d_'8739''45''8739''45'metric_5846
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_Metric'46'constructor_6749
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_280
      d_'8739''45''8739''45'isMetric_5838
-- Data.Nat.Properties.⌊n/2⌋-mono
d_'8970'n'47'2'8971''45'mono_5848 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''45'mono_5848 ~v0 ~v1 v2
  = du_'8970'n'47'2'8971''45'mono_5848 v2
du_'8970'n'47'2'8971''45'mono_5848 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8970'n'47'2'8971''45'mono_5848 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                    (coe du_'8970'n'47'2'8971''45'mono_5848 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.⌈n/2⌉-mono
d_'8968'n'47'2'8969''45'mono_5852 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''45'mono_5852 ~v0 ~v1 v2
  = du_'8968'n'47'2'8969''45'mono_5852 v2
du_'8968'n'47'2'8969''45'mono_5852 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8968'n'47'2'8969''45'mono_5852 v0
  = coe
      du_'8970'n'47'2'8971''45'mono_5848
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v0)
-- Data.Nat.Properties.⌊n/2⌋≤⌈n/2⌉
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_5858 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_5858 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_5858 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋+⌈n/2⌉≡n
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_5864 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_5864 = erased
-- Data.Nat.Properties.⌊n/2⌋≤n
d_'8970'n'47'2'8971''8804'n_5870 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''8804'n_5870 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804'n_5870 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋<n
d_'8970'n'47'2'8971''60'n_5876 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8970'n'47'2'8971''60'n_5876 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                   (d_'8970'n'47'2'8971''8804'n_5870 (coe v1))))
-- Data.Nat.Properties.n≡⌊n+n/2⌋
d_n'8801''8970'n'43'n'47'2'8971'_5882 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801''8970'n'43'n'47'2'8971'_5882 = erased
-- Data.Nat.Properties.⌈n/2⌉≤n
d_'8968'n'47'2'8969''8804'n_5890 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''8804'n_5890 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (d_'8970'n'47'2'8971''8804'n_5870 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉<n
d_'8968'n'47'2'8969''60'n_5896 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8968'n'47'2'8969''60'n_5896 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
      (d_'8970'n'47'2'8971''60'n_5876 (coe v0))
-- Data.Nat.Properties.n≡⌈n+n/2⌉
d_n'8801''8968'n'43'n'47'2'8969'_5902 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801''8968'n'43'n'47'2'8969'_5902 = erased
-- Data.Nat.Properties.1≤n!
d_1'8804'n'33'_5910 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_1'8804'n'33'_5910 v0
  = case coe v0 of
      0 -> coe d_'8804''45'refl_2646 (coe (1 :: Integer))
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                du_'42''45'mono'45''8804'_3932 (coe v0)
                (coe MAlonzo.Code.Data.Nat.Base.d__'33'_332 (coe v1))
                (coe du_m'8804'm'43'n_3352 (coe (1 :: Integer)))
                (coe d_1'8804'n'33'_5910 (coe v1)))
-- Data.Nat.Properties._!≢0
d__'33''8802'0_5916 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d__'33''8802'0_5916 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero_136
      (coe d_1'8804'n'33'_5910 (coe v0))
-- Data.Nat.Properties._!*_!≢0
d__'33''42'_'33''8802'0_5924 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d__'33''42'_'33''8802'0_5924 ~v0 ~v1
  = du__'33''42'_'33''8802'0_5924
du__'33''42'_'33''8802'0_5924 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du__'33''42'_'33''8802'0_5924 = coe du_m'42'n'8802'0_3710
-- Data.Nat.Properties.≤′-trans
d_'8804''8242''45'trans_5930 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8804''8242''45'trans_5930 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''8242''45'trans_5930 v3 v4
du_'8804''8242''45'trans_5930 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'8804''8242''45'trans_5930 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342 -> coe v0
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
             (coe du_'8804''8242''45'trans_5930 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.z≤′n
d_z'8804''8242'n_5938 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_z'8804''8242'n_5938 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_z'8804''8242'n_5938 (coe v1)))
-- Data.Nat.Properties.s≤′s
d_s'8804''8242's_5942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_s'8804''8242's_5942 ~v0 ~v1 v2 = du_s'8804''8242's_5942 v2
du_s'8804''8242's_5942 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_s'8804''8242's_5942 v0 = coe v0
-- Data.Nat.Properties.≤′⇒≤
d_'8804''8242''8658''8804'_5946 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8242''8658''8804'_5946 v0 ~v1 v2
  = du_'8804''8242''8658''8804'_5946 v0 v2
du_'8804''8242''8658''8804'_5946 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8242''8658''8804'_5946 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
        -> coe d_'8804''45'refl_2646 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe du_'8804''8242''8658''8804'_5946 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤⇒≤′
d_'8804''8658''8804''8242'_5950 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8804''8658''8804''8242'_5950 ~v0 v1 v2
  = du_'8804''8658''8804''8242'_5950 v1 v2
du_'8804''8658''8804''8242'_5950 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'8804''8658''8804''8242'_5950 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
        -> coe d_z'8804''8242'n_5938 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_'8804''8658''8804''8242'_5950 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤′-step-injective
d_'8804''8242''45'step'45'injective_5958 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8242''45'step'45'injective_5958 = erased
-- Data.Nat.Properties.z<′s
d_z'60''8242's_5960 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_z'60''8242's_5960 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_z'60''8242's_5960 (coe v1)))
-- Data.Nat.Properties.s<′s
d_s'60''8242's_5964 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_s'60''8242's_5964 ~v0 ~v1 v2 = du_s'60''8242's_5964 v2
du_s'60''8242's_5964 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_s'60''8242's_5964 v0 = coe v0
-- Data.Nat.Properties.<⇒<′
d_'60''8658''60''8242'_5968 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'60''8658''60''8242'_5968 ~v0 v1 v2
  = du_'60''8658''60''8242'_5968 v1 v2
du_'60''8658''60''8242'_5968 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_'60''8658''60''8242'_5968 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                  -> coe d_z'60''8242's_5960 (coe v5)
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                  -> coe
                       du_'60''8658''60''8242'_5968
                       (coe subInt (coe v0) (coe (1 :: Integer)))
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<′⇒<
d_'60''8242''8658''60'_5972 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''8242''8658''60'_5972 v0 ~v1 v2
  = du_'60''8242''8658''60'_5972 v0 v2
du_'60''8242''8658''60'_5972 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'60''8242''8658''60'_5972 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
        -> coe d_n'60'1'43'n_2948 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v3
        -> coe
             du_m'60'n'8658'm'60'1'43'n_2932
             (coe du_'60''8242''8658''60'_5972 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m<1+n⇒m<n∨m≡n′
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n'8242'_5976 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'60'1'43'n'8658'm'60'n'8744'm'8801'n'8242'_5976 v0 v1 v2
  = let v3
          = coe
              du_'60''8658''60''8242'_5968
              (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v2) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
         MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348 v5
           -> coe
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                (coe du_'60''8242''8658''60'_5972 (coe v0) (coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties._≤′?_
d__'8804''8242''63'__5990 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8242''63'__5990 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (coe du_'8804''8658''8804''8242'_5950 (coe v1))
      (coe d__'8804''63'__2672 (coe v0) (coe v1))
-- Data.Nat.Properties._<′?_
d__'60''8242''63'__5996 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8242''63'__5996 v0 v1
  = coe
      d__'8804''8242''63'__5990
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.Properties._≥′?_
d__'8805''8242''63'__6002 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8242''63'__6002 v0 v1
  = coe d__'8804''8242''63'__5990 (coe v1) (coe v0)
-- Data.Nat.Properties._>′?_
d__'62''8242''63'__6004 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8242''63'__6004 v0 v1
  = coe d__'60''8242''63'__5996 (coe v1) (coe v0)
-- Data.Nat.Properties.m≤′m+n
d_m'8804''8242'm'43'n_6010 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_m'8804''8242'm'43'n_6010 v0 v1
  = coe
      du_'8804''8658''8804''8242'_5950 (coe addInt (coe v0) (coe v1))
      (coe du_m'8804'm'43'n_3352 (coe v0))
-- Data.Nat.Properties.n≤′m+n
d_n'8804''8242'm'43'n_6020 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_n'8804''8242'm'43'n_6020 v0 ~v1 = du_n'8804''8242'm'43'n_6020 v0
du_n'8804''8242'm'43'n_6020 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
du_n'8804''8242'm'43'n_6020 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (coe du_n'8804''8242'm'43'n_6020 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉≤′n
d_'8968'n'47'2'8969''8804''8242'n_6030 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8968'n'47'2'8969''8804''8242'n_6030 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_'8968'n'47'2'8969''8804''8242'n_6030 (coe v1)))
-- Data.Nat.Properties.⌊n/2⌋≤′n
d_'8970'n'47'2'8971''8804''8242'n_6036 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__338
d_'8970'n'47'2'8971''8804''8242'n_6036 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_342
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_348
                (d_'8968'n'47'2'8969''8804''8242'n_6030 (coe v1)))
-- Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_6044 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_6044
  = erased
-- Data.Nat.Properties.m<ᵇ1+m+n
d_m'60''7495'1'43'm'43'n_6056 :: Integer -> Integer -> AgdaAny
d_m'60''7495'1'43'm'43'n_6056 v0 ~v1
  = du_m'60''7495'1'43'm'43'n_6056 v0
du_m'60''7495'1'43'm'43'n_6056 :: Integer -> AgdaAny
du_m'60''7495'1'43'm'43'n_6056 v0
  = coe
      du_'60''8658''60''7495'_2598
      (coe
         du_m'8804'm'43'n_3352 (coe addInt (coe (1 :: Integer)) (coe v0)))
-- Data.Nat.Properties.<ᵇ⇒<″
d_'60''7495''8658''60''8243'_6060 ::
  Integer ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26
d_'60''7495''8658''60''8243'_6060 v0 v1 ~v2
  = du_'60''7495''8658''60''8243'_6060 v0 v1
du_'60''7495''8658''60''8243'_6060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26
du_'60''7495''8658''60''8243'_6060 v0 v1
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
         (addInt (coe (1 :: Integer)) (coe v0)))
      erased
-- Data.Nat.Properties.<″⇒<ᵇ
d_'60''8243''8658''60''7495'_6072 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  AgdaAny
d_'60''8243''8658''60''7495'_6072 v0 ~v1 v2
  = du_'60''8243''8658''60''7495'_6072 v0 v2
du_'60''8243''8658''60''7495'_6072 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  AgdaAny
du_'60''8243''8658''60''7495'_6072 v0 v1
  = coe
      seq (coe v1)
      (coe
         du_'60''8658''60''7495'_2598
         (coe
            du_m'8804'm'43'n_3352 (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties.≤″-proof
d_'8804''8243''45'proof_6086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'proof_6086 = erased
-- Data.Nat.Properties.≤″⇒≤
d_'8804''8243''8658''8804'_6090 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8243''8658''8804'_6090 v0 ~v1 v2
  = du_'8804''8243''8658''8804'_6090 v0 v2
du_'8804''8243''8658''8804'_6090 ::
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8243''8658''8804'_6090 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40 v3 v4
                  -> coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                       (coe
                          du_'8804''8243''8658''8804'_6090 (coe v2)
                          (coe
                             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40 (coe v3)
                             erased))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.≤⇒≤″
d_'8804''8658''8804''8243'_6098 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26
d_'8804''8658''8804''8243'_6098 v0 v1 ~v2
  = du_'8804''8658''8804''8243'_6098 v0 v1
du_'8804''8658''8804''8243'_6098 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26
du_'8804''8658''8804''8243'_6098 v0 v1
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0) erased
-- Data.Nat.Properties._<″?_
d__'60''8243''63'__6100 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8243''63'__6100 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (\ v2 -> coe du_'60''7495''8658''60''8243'_6060 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤″?_
d__'8804''8243''63'__6106 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8243''63'__6106 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40 (coe v1)
                   erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__'60''8243''63'__6100 (coe v2) (coe v1))
-- Data.Nat.Properties._≥″?_
d__'8805''8243''63'__6114 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8243''63'__6114 v0 v1
  = coe d__'8804''8243''63'__6106 (coe v1) (coe v0)
-- Data.Nat.Properties._>″?_
d__'62''8243''63'__6116 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8243''63'__6116 v0 v1
  = coe d__'60''8243''63'__6100 (coe v1) (coe v0)
-- Data.Nat.Properties.≤″-irrelevant
d_'8804''8243''45'irrelevant_6118 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'irrelevant_6118 = erased
-- Data.Nat.Properties.<″-irrelevant
d_'60''8243''45'irrelevant_6130 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''8243''45'irrelevant_6130 = erased
-- Data.Nat.Properties.>″-irrelevant
d_'62''8243''45'irrelevant_6132 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''8243''45'irrelevant_6132 = erased
-- Data.Nat.Properties.≥″-irrelevant
d_'8805''8243''45'irrelevant_6134 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8805''8243''45'irrelevant_6134 = erased
-- Data.Nat.Properties.≤‴⇒≤″
d_'8804''8244''8658''8804''8243'_6140 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26
d_'8804''8244''8658''8804''8243'_6140 ~v0 ~v1 v2
  = du_'8804''8244''8658''8804''8243'_6140 v2
du_'8804''8244''8658''8804''8243'_6140 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26
du_'8804''8244''8658''8804''8243'_6140 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'refl_434
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40
             (coe (0 :: Integer)) erased
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_440 v3
        -> coe
             MAlonzo.Code.Algebra.Definitions.RawMagma.C__'44'__40
             (coe
                addInt (coe (1 :: Integer))
                (coe
                   MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_36
                   (coe du_'8804''8244''8658''8804''8243'_6140 (coe v3))))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤‴m+k
d_m'8804''8244'm'43'k_6154 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
d_m'8804''8244'm'43'k_6154 ~v0 ~v1 v2 ~v3
  = du_m'8804''8244'm'43'k_6154 v2
du_m'8804''8244'm'43'k_6154 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
du_m'8804''8244'm'43'k_6154 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'refl_434
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_440
                (coe du_m'8804''8244'm'43'k_6154 (coe v1)))
-- Data.Nat.Properties.≤″⇒≤‴
d_'8804''8243''8658''8804''8244'_6170 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
d_'8804''8243''8658''8804''8244'_6170 ~v0 ~v1 v2
  = du_'8804''8243''8658''8804''8244'_6170 v2
du_'8804''8243''8658''8804''8244'_6170 ::
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''737'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
du_'8804''8243''8658''8804''8244'_6170 v0
  = coe
      du_m'8804''8244'm'43'k_6154
      (coe
         MAlonzo.Code.Algebra.Definitions.RawMagma.d_quotient_36 (coe v0))
-- Data.Nat.Properties.0≤‴n
d_0'8804''8244'n_6174 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
d_0'8804''8244'n_6174 v0 = coe du_m'8804''8244'm'43'k_6154 (coe v0)
-- Data.Nat.Properties.<ᵇ⇒<‴
d_'60''7495''8658''60''8244'_6176 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
d_'60''7495''8658''60''8244'_6176 v0 v1 ~v2
  = du_'60''7495''8658''60''8244'_6176 v0 v1
du_'60''7495''8658''60''8244'_6176 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
du_'60''7495''8658''60''8244'_6176 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_6170
      (coe du_'60''7495''8658''60''8243'_6060 (coe v0) (coe v1))
-- Data.Nat.Properties.<‴⇒<ᵇ
d_'60''8244''8658''60''7495'_6184 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430 -> AgdaAny
d_'60''8244''8658''60''7495'_6184 v0 ~v1 v2
  = du_'60''8244''8658''60''7495'_6184 v0 v2
du_'60''8244''8658''60''7495'_6184 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430 -> AgdaAny
du_'60''8244''8658''60''7495'_6184 v0 v1
  = coe
      du_'60''8243''8658''60''7495'_6072 (coe v0)
      (coe du_'8804''8244''8658''8804''8243'_6140 (coe v1))
-- Data.Nat.Properties._<‴?_
d__'60''8244''63'__6188 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''8244''63'__6188 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (\ v2 -> coe du_'60''7495''8658''60''8244'_6176 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤‴?_
d__'8804''8244''63'__6194 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''8244''63'__6194 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe d_0'8804''8244'n_6174 (coe v1)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__'60''8244''63'__6188 (coe v2) (coe v1))
-- Data.Nat.Properties._≥‴?_
d__'8805''8244''63'__6202 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''8244''63'__6202 v0 v1
  = coe d__'8804''8244''63'__6194 (coe v1) (coe v0)
-- Data.Nat.Properties._>‴?_
d__'62''8244''63'__6204 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''8244''63'__6204 v0 v1
  = coe d__'60''8244''63'__6188 (coe v1) (coe v0)
-- Data.Nat.Properties.≤⇒≤‴
d_'8804''8658''8804''8244'_6206 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
d_'8804''8658''8804''8244'_6206 v0 v1 ~v2
  = du_'8804''8658''8804''8244'_6206 v0 v1
du_'8804''8658''8804''8244'_6206 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430
du_'8804''8658''8804''8244'_6206 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_6170
      (coe du_'8804''8658''8804''8243'_6098 (coe v0) (coe v1))
-- Data.Nat.Properties.≤‴⇒≤
d_'8804''8244''8658''8804'_6208 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''8244''8658''8804'_6208 v0 ~v1 v2
  = du_'8804''8244''8658''8804'_6208 v0 v2
du_'8804''8244''8658''8804'_6208 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__430 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''8244''8658''8804'_6208 v0 v1
  = coe
      du_'8804''8243''8658''8804'_6090 (coe v0)
      (coe du_'8804''8244''8658''8804''8243'_6140 (coe v1))
-- Data.Nat.Properties.eq?
d_eq'63'_6214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Injection_776 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_eq'63'_6214 ~v0 ~v1 v2 = du_eq'63'_6214 v2
du_eq'63'_6214 ::
  MAlonzo.Code.Function.Bundles.T_Injection_776 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_eq'63'_6214 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_via'45'injection_160
      (coe v0) (coe d__'8799'__2558)
-- Data.Nat.Properties._.anyUpTo?
d_anyUpTo'63'_6232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_anyUpTo'63'_6232 ~v0 ~v1 v2 v3 = du_anyUpTo'63'_6232 v2 v3
du_anyUpTo'63'_6232 ::
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_anyUpTo'63'_6232 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v0 v2 in
              coe
                (let v4 = coe du_anyUpTo'63'_6232 (coe v0) (coe v2) in
                 coe
                   (let v5
                          = case coe v4 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                                -> coe
                                     seq (coe v5)
                                     (case coe v6 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                          -> case coe v7 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                                 -> coe
                                                      seq (coe v9)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                         (coe v6))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError)
                              _ -> MAlonzo.RTE.mazUnreachableError in
                    coe
                      (case coe v3 of
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                           -> let v8
                                    = case coe v4 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                          -> case coe v8 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                 -> case coe v9 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                                        -> case coe v10 of
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                                               -> coe seq (coe v12) (coe v4)
                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                      _ -> coe v5
                                               _ -> coe v5
                                        _ -> MAlonzo.RTE.mazUnreachableError in
                              coe
                                (if coe v6
                                   then let v9
                                              = case coe v4 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                                    -> case coe v9 of
                                                         MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                           -> case coe v10 of
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                                  -> case coe v11 of
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                                                         -> coe
                                                                              seq (coe v13) (coe v4)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> coe v8
                                                         _ -> coe v8
                                                  _ -> MAlonzo.RTE.mazUnreachableError in
                                        coe
                                          (case coe v7 of
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                               -> coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                    (coe v6)
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v2)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe d_'8804''45'refl_2646 (coe v1))
                                                             (coe v10))))
                                             _ -> coe v9)
                                   else (case coe v4 of
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                             -> if coe v9
                                                  then case coe v10 of
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                           -> case coe v11 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                                                  -> coe seq (coe v13) (coe v4)
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> coe v8
                                                  else (case coe v7 of
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                            -> case coe v10 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                   -> coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                        (coe v9)
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                 _ -> coe v8
                                                          _ -> coe v8)
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                         _ -> MAlonzo.RTE.mazUnreachableError))))
-- Data.Nat.Properties._._.¬Pn<1+v
d_'172'Pn'60'1'43'v_6266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'172'Pn'60'1'43'v_6266 = erased
-- Data.Nat.Properties._.allUpTo?
d_allUpTo'63'_6296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allUpTo'63'_6296 ~v0 ~v1 v2 v3 = du_allUpTo'63'_6296 v2 v3
du_allUpTo'63'_6296 ::
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_allUpTo'63'_6296 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v3 = coe v0 v2 in
              coe
                (let v4 = coe du_allUpTo'63'_6296 (coe v0) (coe v2) in
                 coe
                   (let v5
                          = case coe v4 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                                -> coe
                                     seq (coe v5)
                                     (coe
                                        seq (coe v6)
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                              _ -> MAlonzo.RTE.mazUnreachableError in
                    coe
                      (case coe v3 of
                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                           -> let v8
                                    = case coe v4 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                          -> case coe v8 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                 -> case coe v9 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                        -> coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                             (coe v8)
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                      _ -> coe v5
                                               _ -> coe v5
                                        _ -> MAlonzo.RTE.mazUnreachableError in
                              coe
                                (if coe v6
                                   then case coe v4 of
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                            -> if coe v9
                                                 then case coe v7 of
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                          -> case coe v10 of
                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                                 -> coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                      (coe v9)
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                         (coe
                                                                            du_Pn'60'1'43'v_6328
                                                                            (coe v2) (coe v11)
                                                                            (coe v12)))
                                                               _ -> coe v8
                                                        _ -> coe v8
                                                 else (case coe v10 of
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                           -> coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe v9)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                         _ -> coe v8)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   else (let v9
                                               = case coe v4 of
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                                     -> case coe v9 of
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                            -> case coe v10 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                                   -> coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                        (coe v9)
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                 _ -> coe v8
                                                          _ -> coe v8
                                                   _ -> MAlonzo.RTE.mazUnreachableError in
                                         coe
                                           (case coe v7 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                -> coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                              _ -> coe v9)))
                         _ -> MAlonzo.RTE.mazUnreachableError))))
-- Data.Nat.Properties._._.Pn<1+v
d_Pn'60'1'43'v_6328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (Integer -> ()) ->
  (Integer ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  AgdaAny ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
d_Pn'60'1'43'v_6328 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_Pn'60'1'43'v_6328 v3 v4 v5 v6 v7
du_Pn'60'1'43'v_6328 ::
  Integer ->
  AgdaAny ->
  (Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> AgdaAny
du_Pn'60'1'43'v_6328 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                     erased
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
                        (coe eqInt (coe v3) (coe v0))) in
           coe
             (case coe v8 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                  -> if coe v9
                       then coe seq (coe v10) (coe v1)
                       else coe
                              seq (coe v10)
                              (coe
                                 v2 v3 (coe du_'8804''8743''8802''8658''60'_2788 (coe v0) (coe v7)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒o<n
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_6354 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_6354 v0 v1 v2
  = coe
      du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_3002 v0 v1
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒o≤n
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_6362 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_6362 v0 v1 v2
  = coe
      du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_3030 v0 v1
-- Data.Nat.Properties.*-+-isSemiring
d_'42''45''43''45'isSemiring_6364 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'42''45''43''45'isSemiring_6364
  = coe d_'43''45''42''45'isSemiring_3624
-- Data.Nat.Properties.*-+-isCommutativeSemiring
d_'42''45''43''45'isCommutativeSemiring_6366 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'42''45''43''45'isCommutativeSemiring_6366
  = coe d_'43''45''42''45'isCommutativeSemiring_3626
-- Data.Nat.Properties.*-+-semiring
d_'42''45''43''45'semiring_6368 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_'42''45''43''45'semiring_6368
  = coe d_'43''45''42''45'semiring_3638
-- Data.Nat.Properties.*-+-commutativeSemiring
d_'42''45''43''45'commutativeSemiring_6370 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'42''45''43''45'commutativeSemiring_6370
  = coe d_'43''45''42''45'commutativeSemiring_3640
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_6372 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_6372 = erased
-- Data.Nat.Properties.m≤n⇒n⊔m≡n
d_m'8804'n'8658'n'8852'm'8801'n_6374 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8852'm'8801'n_6374 = erased
-- Data.Nat.Properties.m≤n⇒n⊓m≡m
d_m'8804'n'8658'n'8851'm'8801'm_6376 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8851'm'8801'm_6376 = erased
-- Data.Nat.Properties.n⊔m≡m⇒n≤m
d_n'8852'm'8801'm'8658'n'8804'm_6378 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8852'm'8801'm'8658'n'8804'm_6378
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.n⊔m≡n⇒m≤n
d_n'8852'm'8801'n'8658'm'8804'n_6380 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8852'm'8801'n'8658'm'8804'n_6380
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.n≤m⊔n
d_n'8804'm'8852'n_6382 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_n'8804'm'8852'n_6382
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊔-least
d_'8852''45'least_6384 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'least_6384
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-greatest
d_'8851''45'greatest_6386 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'greatest_6386
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊔-pres-≤m
d_'8852''45'pres'45''8804'm_6388 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8852''45'pres'45''8804'm_6388
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8852''45'operator_4312 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Nat.Properties.⊓-pres-m≤
d_'8851''45'pres'45'm'8804'_6390 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8851''45'pres'45'm'8804'_6390
  = let v0 = d_'8804''45'totalPreorder_2692 in
    coe
      (let v1 = d_'8851''45'operator_4310 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe v0) (coe v1)))
-- Data.Nat.Properties.⊔-abs-⊓
d_'8852''45'abs'45''8851'_6392 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'abs'45''8851'_6392 = erased
-- Data.Nat.Properties.⊓-abs-⊔
d_'8851''45'abs'45''8852'_6394 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'abs'45''8852'_6394 = erased
-- Data.Nat.Properties.suc[pred[n]]≡n
d_suc'91'pred'91'n'93''93''8801'n_6396 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'91'pred'91'n'93''93''8801'n_6396 = erased
-- Data.Nat.Properties.≤-step
d_'8804''45'step_6402 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'step_6402 ~v0 ~v1 v2 = du_'8804''45'step_6402 v2
du_'8804''45'step_6402 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'step_6402 v0 = coe v0
-- Data.Nat.Properties.≤-stepsˡ
d_'8804''45'steps'737'_6404 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'steps'737'_6404 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'737'_6404 v3
du_'8804''45'steps'737'_6404 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'steps'737'_6404 v0 = coe v0
-- Data.Nat.Properties.≤-stepsʳ
d_'8804''45'steps'691'_6406 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8804''45'steps'691'_6406 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'691'_6406 v3
du_'8804''45'steps'691'_6406 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8804''45'steps'691'_6406 v0 = coe v0
-- Data.Nat.Properties.<-step
d_'60''45'step_6408 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'step_6408 v0 v1 v2
  = coe du_m'60'n'8658'm'60'1'43'n_2932 v2
-- Data.Nat.Properties.pred-mono
d_pred'45'mono_6410 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_pred'45'mono_6410 v0 v1 v2
  = coe du_pred'45'mono'45''8804'_5512 v0 v2
-- Data.Nat.Properties.<-transʳ
d_'60''45'trans'691'_6412 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans'691'_6412 v0 v1 v2 v3 v4
  = coe du_'8804''45''60''45'trans_2856 v3 v4
-- Data.Nat.Properties.<-transˡ
d_'60''45'trans'737'_6414 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'60''45'trans'737'_6414 v0 v1 v2 v3 v4
  = coe du_'60''45''8804''45'trans_2862 v3 v4
