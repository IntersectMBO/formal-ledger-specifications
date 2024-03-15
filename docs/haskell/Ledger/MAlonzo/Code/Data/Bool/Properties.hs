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

module MAlonzo.Code.Data.Bool.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Bool.Properties._._Absorbs_
d__Absorbs__8 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__Absorbs__8 = erased
-- Data.Bool.Properties._._DistributesOver_
d__DistributesOver__10 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__DistributesOver__10 = erased
-- Data.Bool.Properties._._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Bool.Properties._._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Bool.Properties._._IdempotentOn_
d__IdempotentOn__16 :: (Bool -> Bool -> Bool) -> Bool -> ()
d__IdempotentOn__16 = erased
-- Data.Bool.Properties._.Absorptive
d_Absorptive_20 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Absorptive_20 = erased
-- Data.Bool.Properties._.Associative
d_Associative_30 :: (Bool -> Bool -> Bool) -> ()
d_Associative_30 = erased
-- Data.Bool.Properties._.Commutative
d_Commutative_34 :: (Bool -> Bool -> Bool) -> ()
d_Commutative_34 = erased
-- Data.Bool.Properties._.Conical
d_Conical_40 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Conical_40 = erased
-- Data.Bool.Properties._.Idempotent
d_Idempotent_44 :: (Bool -> Bool -> Bool) -> ()
d_Idempotent_44 = erased
-- Data.Bool.Properties._.Identity
d_Identity_50 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Identity_50 = erased
-- Data.Bool.Properties._.Inverse
d_Inverse_54 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Inverse_54 = erased
-- Data.Bool.Properties._.Involutive
d_Involutive_58 :: (Bool -> Bool) -> ()
d_Involutive_58 = erased
-- Data.Bool.Properties._.LeftConical
d_LeftConical_68 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftConical_68 = erased
-- Data.Bool.Properties._.LeftIdentity
d_LeftIdentity_76 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftIdentity_76 = erased
-- Data.Bool.Properties._.LeftInverse
d_LeftInverse_78 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftInverse_78 = erased
-- Data.Bool.Properties._.LeftZero
d_LeftZero_84 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftZero_84 = erased
-- Data.Bool.Properties._.RightConical
d_RightConical_98 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightConical_98 = erased
-- Data.Bool.Properties._.RightIdentity
d_RightIdentity_106 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightIdentity_106 = erased
-- Data.Bool.Properties._.RightInverse
d_RightInverse_108 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightInverse_108 = erased
-- Data.Bool.Properties._.RightZero
d_RightZero_114 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightZero_114 = erased
-- Data.Bool.Properties._.Selective
d_Selective_116 :: (Bool -> Bool -> Bool) -> ()
d_Selective_116 = erased
-- Data.Bool.Properties._.Zero
d_Zero_134 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Zero_134 = erased
-- Data.Bool.Properties._.IsAbelianGroup
d_IsAbelianGroup_138 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_140 a0 = ()
-- Data.Bool.Properties._.IsBand
d_IsBand_142 a0 = ()
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_144 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_146 a0 = ()
-- Data.Bool.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_148 a0 a1 = ()
-- Data.Bool.Properties._.IsCommutativeRing
d_IsCommutativeRing_150 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_152 a0 = ()
-- Data.Bool.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_154 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_156 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_158 a0 = ()
-- Data.Bool.Properties._.IsGroup
d_IsGroup_160 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_162 a0 a1 = ()
-- Data.Bool.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_164 a0 = ()
-- Data.Bool.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_166 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_168 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_170 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_172 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_174 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsLoop
d_IsLoop_176 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsMagma
d_IsMagma_178 a0 = ()
-- Data.Bool.Properties._.IsMedialMagma
d_IsMedialMagma_180 a0 = ()
-- Data.Bool.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_182 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsMonoid
d_IsMonoid_184 a0 a1 = ()
-- Data.Bool.Properties._.IsMoufangLoop
d_IsMoufangLoop_186 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsNearSemiring
d_IsNearSemiring_188 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsNearring
d_IsNearring_190 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_192 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsQuasigroup
d_IsQuasigroup_194 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsQuasiring
d_IsQuasiring_196 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsRightBolLoop
d_IsRightBolLoop_198 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsRing
d_IsRing_200 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_202 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_204 a0 = ()
-- Data.Bool.Properties._.IsSemigroup
d_IsSemigroup_206 a0 = ()
-- Data.Bool.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_208 a0 = ()
-- Data.Bool.Properties._.IsSemiring
d_IsSemiring_210 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_212 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_214 a0 a1 a2 = ()
-- Data.Bool.Properties._.IsUnitalMagma
d_IsUnitalMagma_216 a0 a1 = ()
-- Data.Bool.Properties._.IsAbelianGroup.assoc
d_assoc_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_222 = erased
-- Data.Bool.Properties._.IsAbelianGroup.comm
d_comm_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_224 = erased
-- Data.Bool.Properties._.IsAbelianGroup.identity
d_identity_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Bool.Properties._.IsAbelianGroup.inverse
d_inverse_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Bool.Properties._.IsAbelianGroup.isEquivalence
d_isEquivalence_244 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_906
               (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))))
-- Data.Bool.Properties._.IsAbelianGroup.isGroup
d_isGroup_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_246 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)
-- Data.Bool.Properties._.IsAbelianGroup.isMagma
d_isMagma_252 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_252 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))))
-- Data.Bool.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Bool.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Bool.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_276 = erased
-- Data.Bool.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_278 = erased
-- Data.Bool.Properties._.IsAlternativeMagma.alter
d_alter_286 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_286 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_262 (coe v0)
-- Data.Bool.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0))
-- Data.Bool.Properties._.IsAlternativeMagma.isMagma
d_isMagma_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_294 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0)
-- Data.Bool.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_308 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_308 = erased
-- Data.Bool.Properties._.IsBand.assoc
d_assoc_316 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_316 = erased
-- Data.Bool.Properties._.IsBand.idem
d_idem_318 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_318 = erased
-- Data.Bool.Properties._.IsBand.isEquivalence
d_isEquivalence_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)))
-- Data.Bool.Properties._.IsBand.isMagma
d_isMagma_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0))
-- Data.Bool.Properties._.IsBand.isSemigroup
d_isSemigroup_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)
-- Data.Bool.Properties._.IsBand.∙-cong
d_'8729''45'cong_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_338 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_346 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool ->
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_348 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_350 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_352 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.*-identity
d_'42''45'identity_358 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_358 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
               (coe v0))))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_376 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_378 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_380 = erased
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.identity
d_identity_386 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_386 v0
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_394 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
               (coe v0))))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isMagma
d_isMagma_398 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_398 v0
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isMonoid
d_isMonoid_400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_400 v0
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
d_isSemigroup_402 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_402 v0
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.distrib
d_distrib_406 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
               (coe v0))))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
      (coe v0)
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
d_isEquivalence_416 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_416 v0
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
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
         (coe v0))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_424 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
            (coe v0)))
-- Data.Bool.Properties._.IsCancellativeCommutativeSemiring.zero
d_zero_438 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
            (coe v0)))
-- Data.Bool.Properties._.IsCommutativeMagma.comm
d_comm_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_446 = erased
-- Data.Bool.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_448 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMagma.isMagma
d_isMagma_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_450 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0)
-- Data.Bool.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_464 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_464 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.assoc
d_assoc_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_472 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.comm
d_comm_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_474 = erased
-- Data.Bool.Properties._.IsCommutativeMonoid.identity
d_identity_476 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMonoid.isEquivalence
d_isEquivalence_486 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))))
-- Data.Bool.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_488 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)
-- Data.Bool.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Bool.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_508 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_518 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_520 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_522 = erased
-- Data.Bool.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.assoc
d_assoc_546 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_546 = erased
-- Data.Bool.Properties._.IsCommutativeRing.comm
d_comm_548 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_548 = erased
-- Data.Bool.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_550 = erased
-- Data.Bool.Properties._.IsCommutativeRing.identity
d_identity_556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)))))
-- Data.Bool.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.isGroup
d_isGroup_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_570 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeRing.isMagma
d_isMagma_576 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_576 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))))))
-- Data.Bool.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))))
-- Data.Bool.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_580 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)))))
-- Data.Bool.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_584 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_584 = erased
-- Data.Bool.Properties._.IsCommutativeRing.inverse
d_inverse_586 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))))
-- Data.Bool.Properties._.IsCommutativeRing.distrib
d_distrib_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2512
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Bool.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_602 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)))))))
-- Data.Bool.Properties._.IsCommutativeRing.isRing
d_isRing_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_608 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)
-- Data.Bool.Properties._.IsCommutativeRing.zero
d_zero_630 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2514
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemigroup.assoc
d_assoc_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_638 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.comm
d_comm_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_640 = erased
-- Data.Bool.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_644 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_662 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_670 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_670 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_672 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_674 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_680 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.assoc
d_assoc_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_698 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.comm
d_comm_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_700 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_702 = erased
-- Data.Bool.Properties._.IsCommutativeSemiring.identity
d_identity_708 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))
-- Data.Bool.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_716 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_720 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_720 v0
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))))
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))
-- Data.Bool.Properties._.IsCommutativeSemiring.distrib
d_distrib_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_736 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_736 v0
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
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_742 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiring.zero
d_zero_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_770 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_772 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_774 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_788 = erased
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_796 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
            (coe v0)))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1170
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_808 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
      (coe v0)
-- Data.Bool.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_822 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1172
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Bool.Properties._.IsFlexibleMagma.flex
d_flex_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_830 = erased
-- Data.Bool.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_832 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Bool.Properties._.IsFlexibleMagma.isMagma
d_isMagma_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_834 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Bool.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_848 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_848 = erased
-- Data.Bool.Properties._.IsGroup.assoc
d_assoc_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_858 = erased
-- Data.Bool.Properties._.IsGroup.identity
d_identity_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Bool.Properties._.IsGroup.inverse
d_inverse_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_866 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_908 (coe v0)
-- Data.Bool.Properties._.IsGroup.isEquivalence
d_isEquivalence_872 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))))
-- Data.Bool.Properties._.IsGroup.isMagma
d_isMagma_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_878 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)))
-- Data.Bool.Properties._.IsGroup.isMonoid
d_isMonoid_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_880 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)
-- Data.Bool.Properties._.IsGroup.isSemigroup
d_isSemigroup_884 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Bool.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_902 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_902 = erased
-- Data.Bool.Properties._.IsGroup.∙-cong
d_'8729''45'cong_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_904 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_912 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_912 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_914 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_916 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_916 = erased
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_918 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_918 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_928 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_932 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_932 v0
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
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_934 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_940 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_954 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.idem
d_idem_962 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_962 = erased
-- Data.Bool.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Bool.Properties._.IsIdempotentMagma.isMagma
d_isMagma_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_966 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Bool.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_980 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_980 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_988 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_988 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_990 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_996 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.assoc
d_assoc_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1008 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.comm
d_comm_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1010 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1012 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1018 = erased
-- Data.Bool.Properties._.IsIdempotentSemiring.identity
d_identity_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))
-- Data.Bool.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1032 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1032 v0
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1034 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))))
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1036 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))
-- Data.Bool.Properties._.IsIdempotentSemiring.distrib
d_distrib_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Bool.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1046 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1046 v0
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
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1052 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1052 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)
-- Data.Bool.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Bool.Properties._.IsIdempotentSemiring.zero
d_zero_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Bool.Properties._.IsInvertibleMagma.inverse
d_inverse_1076 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1076 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_796 (coe v0)
-- Data.Bool.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1082 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0))
-- Data.Bool.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1084 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0)
-- Data.Bool.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1098 = erased
-- Data.Bool.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1100 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1100 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1108 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1108 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_846 (coe v0)
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1114 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1120 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1120 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_794
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_794
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1140 = erased
-- Data.Bool.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1142 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1142 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1150 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1152 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1158 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1158 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Bool.Properties._.IsKleeneAlgebra.assoc
d_assoc_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1170 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.comm
d_comm_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1172 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1174 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1180 = erased
-- Data.Bool.Properties._.IsKleeneAlgebra.identity
d_identity_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1182 v0
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
-- Data.Bool.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1190 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Bool.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1194 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1194 v0
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1196 v0
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1198 v0
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
-- Data.Bool.Properties._.IsKleeneAlgebra.distrib
d_distrib_1202 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Bool.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1208 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1208 v0
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
-- Data.Bool.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768
d_isIdempotentSemiring_1210 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
      (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1216 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
         (coe v0))
-- Data.Bool.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1218 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
            (coe v0)))
-- Data.Bool.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1228 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_1902 (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1234 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1234 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_1900 (coe v0)
-- Data.Bool.Properties._.IsKleeneAlgebra.zero
d_zero_1244 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1244 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
            (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1252 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1252 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1258 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.identity
d_identity_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Bool.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1270 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))))
-- Data.Bool.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1272 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)
-- Data.Bool.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Bool.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1280 = erased
-- Data.Bool.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1282 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1292 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Bool.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1304 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1304 = erased
-- Data.Bool.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1312 = erased
-- Data.Bool.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1318 = erased
-- Data.Bool.Properties._.IsLoop.identity
d_identity_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1324 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_2870 (coe v0)
-- Data.Bool.Properties._.IsLoop.isEquivalence
d_isEquivalence_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)))
-- Data.Bool.Properties._.IsLoop.isMagma
d_isMagma_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Bool.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1336 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)
-- Data.Bool.Properties._.IsLoop.leftDivides
d_leftDivides_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Bool.Properties._.IsLoop.rightDivides
d_rightDivides_1348 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1348 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Bool.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1360 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1360 = erased
-- Data.Bool.Properties._.IsMagma.isEquivalence
d_isEquivalence_1368 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1368 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v0)
-- Data.Bool.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1382 = erased
-- Data.Bool.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0))
-- Data.Bool.Properties._.IsMedialMagma.isMagma
d_isMagma_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1392 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0)
-- Data.Bool.Properties._.IsMedialMagma.medial
d_medial_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  Bool ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1396 = erased
-- Data.Bool.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1408 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1408 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1416 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1416 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1422 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1422 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.identity
d_identity_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Bool.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1434 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))))
-- Data.Bool.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1436 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)
-- Data.Bool.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Bool.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1450 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1450 = erased
-- Data.Bool.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Bool.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1468 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1468 = erased
-- Data.Bool.Properties._.IsMonoid.assoc
d_assoc_1476 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1476 = erased
-- Data.Bool.Properties._.IsMonoid.identity
d_identity_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1478 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_616 (coe v0)
-- Data.Bool.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1484 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)))
-- Data.Bool.Properties._.IsMonoid.isMagma
d_isMagma_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0))
-- Data.Bool.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1490 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)
-- Data.Bool.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1504 = erased
-- Data.Bool.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1512 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1512 = erased
-- Data.Bool.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1518 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1518 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identical
d_identical_1524 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1524 = erased
-- Data.Bool.Properties._.IsMoufangLoop.identity
d_identity_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_2946
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))
-- Data.Bool.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1532 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1532 v0
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
-- Data.Bool.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932
d_isLeftBolLoop_1534 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)
-- Data.Bool.Properties._.IsMoufangLoop.isLoop
d_isLoop_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_2946
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))
-- Data.Bool.Properties._.IsMoufangLoop.isMagma
d_isMagma_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Bool.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1542 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_2946
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))
-- Data.Bool.Properties._.IsMoufangLoop.leftBol
d_leftBol_1544 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1544 = erased
-- Data.Bool.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1546 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Bool.Properties._.IsMoufangLoop.rightBol
d_rightBol_1556 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1556 = erased
-- Data.Bool.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Bool.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1570 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1570 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1578 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1578 = erased
-- Data.Bool.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1580 = erased
-- Data.Bool.Properties._.IsNearSemiring.assoc
d_assoc_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1590 = erased
-- Data.Bool.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1592 = erased
-- Data.Bool.Properties._.IsNearSemiring.identity
d_identity_1598 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Bool.Properties._.IsNearSemiring.isMagma
d_isMagma_1604 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)))
-- Data.Bool.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)
-- Data.Bool.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Bool.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1612 = erased
-- Data.Bool.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))))
-- Data.Bool.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1628 = erased
-- Data.Bool.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1632 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1632 = erased
-- Data.Bool.Properties._.IsNearring.*-cong
d_'42''45'cong_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1634 = erased
-- Data.Bool.Properties._.IsNearring.*-identity
d_'42''45'identity_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Bool.Properties._.IsNearring.assoc
d_assoc_1652 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1652 = erased
-- Data.Bool.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1654 = erased
-- Data.Bool.Properties._.IsNearring.identity
d_identity_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)))
-- Data.Bool.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2388 (coe v0)
-- Data.Bool.Properties._.IsNearring.isMagma
d_isMagma_1672 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))))
-- Data.Bool.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Bool.Properties._.IsNearring.isSemigroup
d_isSemigroup_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)))
-- Data.Bool.Properties._.IsNearring.distrib
d_distrib_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2038
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Bool.Properties._.IsNearring.isEquivalence
d_isEquivalence_1690 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1690 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)))))
-- Data.Bool.Properties._.IsNearring.isQuasiring
d_isQuasiring_1694 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008
d_isQuasiring_1694 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)
-- Data.Bool.Properties._.IsNearring.zero
d_zero_1706 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1706 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2040
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Bool.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1712 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1712 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1718 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1724 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2264 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.assoc
d_assoc_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1734 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.comm
d_comm_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1736 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1738 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.identity
d_identity_1744 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
               (coe v0))))
-- Data.Bool.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_1750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
      (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_1758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
         (coe v0))
-- Data.Bool.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1764 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
                  (coe v0)))))
-- Data.Bool.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_1766 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
            (coe v0)))
-- Data.Bool.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_1768 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
               (coe v0))))
-- Data.Bool.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1772 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1772 = erased
-- Data.Bool.Properties._.IsNonAssociativeRing.inverse
d_inverse_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1774 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
            (coe v0)))
-- Data.Bool.Properties._.IsNonAssociativeRing.distrib
d_distrib_1780 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1780 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2266 (coe v0)
-- Data.Bool.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_1786 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1786 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
                     (coe v0))))))
-- Data.Bool.Properties._.IsNonAssociativeRing.zero
d_zero_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1804 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2268 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1812 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1812 = erased
-- Data.Bool.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1818 = erased
-- Data.Bool.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0))
-- Data.Bool.Properties._.IsQuasigroup.isMagma
d_isMagma_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1826 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1830 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2796 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1840 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1840 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2798 (coe v0)
-- Data.Bool.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1852 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1852 = erased
-- Data.Bool.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1860 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1860 = erased
-- Data.Bool.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1862 = erased
-- Data.Bool.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.assoc
d_assoc_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1880 = erased
-- Data.Bool.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1882 = erased
-- Data.Bool.Properties._.IsQuasiring.identity
d_identity_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Bool.Properties._.IsQuasiring.isMagma
d_isMagma_1894 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1894 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)))
-- Data.Bool.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1898 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Bool.Properties._.IsQuasiring.distrib
d_distrib_1902 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1902 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2038 (coe v0)
-- Data.Bool.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_1912 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1912 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))))
-- Data.Bool.Properties._.IsQuasiring.zero
d_zero_1926 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1926 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2040 (coe v0)
-- Data.Bool.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_1934 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1934 = erased
-- Data.Bool.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1940 = erased
-- Data.Bool.Properties._.IsRightBolLoop.identity
d_identity_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Bool.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_1952 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1952 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))))
-- Data.Bool.Properties._.IsRightBolLoop.isLoop
d_isLoop_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1954 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)
-- Data.Bool.Properties._.IsRightBolLoop.isMagma
d_isMagma_1956 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_1960 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Bool.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.rightBol
d_rightBol_1972 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1972 = erased
-- Data.Bool.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Bool.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1986 = erased
-- Data.Bool.Properties._.IsRing.*-assoc
d_'42''45'assoc_1996 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1996 = erased
-- Data.Bool.Properties._.IsRing.*-cong
d_'42''45'cong_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1998 = erased
-- Data.Bool.Properties._.IsRing.*-identity
d_'42''45'identity_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2004 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510 (coe v0)
-- Data.Bool.Properties._.IsRing.assoc
d_assoc_2016 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2016 = erased
-- Data.Bool.Properties._.IsRing.comm
d_comm_2018 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2018 = erased
-- Data.Bool.Properties._.IsRing.∙-cong
d_'8729''45'cong_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2020 = erased
-- Data.Bool.Properties._.IsRing.identity
d_identity_2026 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2026 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe v0))))
-- Data.Bool.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2032 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe v0)
-- Data.Bool.Properties._.IsRing.isGroup
d_isGroup_2040 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe v0))
-- Data.Bool.Properties._.IsRing.isMagma
d_isMagma_2046 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2046 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                  (coe v0)))))
-- Data.Bool.Properties._.IsRing.isMonoid
d_isMonoid_2048 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2048 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe v0)))
-- Data.Bool.Properties._.IsRing.isSemigroup
d_isSemigroup_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
               (coe v0))))
-- Data.Bool.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2054 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2054 = erased
-- Data.Bool.Properties._.IsRing.inverse
d_inverse_2056 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2056 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
            (coe v0)))
-- Data.Bool.Properties._.IsRing.distrib
d_distrib_2062 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2062 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2512 (coe v0)
-- Data.Bool.Properties._.IsRing.isEquivalence
d_isEquivalence_2068 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2068 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
                     (coe v0))))))
-- Data.Bool.Properties._.IsRing.zero
d_zero_2094 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2094 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2514 (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2104 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2104 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2106 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.assoc
d_assoc_2116 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2116 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.comm
d_comm_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2118 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2120 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.identity
d_identity_2126 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
               (coe v0))))
-- Data.Bool.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2132 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
      (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
         (coe v0))
-- Data.Bool.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2146 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2146 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_906
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_992
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
                  (coe v0)))))
-- Data.Bool.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2148 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2148 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
            (coe v0)))
-- Data.Bool.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2150 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
               (coe v0))))
-- Data.Bool.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2154 = erased
-- Data.Bool.Properties._.IsRingWithoutOne.inverse
d_inverse_2156 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
            (coe v0)))
-- Data.Bool.Properties._.IsRingWithoutOne.distrib
d_distrib_2162 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2162 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2140 (coe v0)
-- Data.Bool.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2168 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2168 v0
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
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
                     (coe v0))))))
-- Data.Bool.Properties._.IsRingWithoutOne.zero
d_zero_2186 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2186 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2142 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0))
-- Data.Bool.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2196 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.sel
d_sel_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2204 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0)
-- Data.Bool.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2212 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2212 = erased
-- Data.Bool.Properties._.IsSemigroup.assoc
d_assoc_2220 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2220 = erased
-- Data.Bool.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2222 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0))
-- Data.Bool.Properties._.IsSemigroup.isMagma
d_isMagma_2224 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2224 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0)
-- Data.Bool.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2238 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2238 = erased
-- Data.Bool.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0))
-- Data.Bool.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2248 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2248 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0)
-- Data.Bool.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2256 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2256 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_374 (coe v0)
-- Data.Bool.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2268 = erased
-- Data.Bool.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2276 = erased
-- Data.Bool.Properties._.IsSemiring.*-cong
d_'42''45'cong_2278 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2278 = erased
-- Data.Bool.Properties._.IsSemiring.*-identity
d_'42''45'identity_2284 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.assoc
d_assoc_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2296 = erased
-- Data.Bool.Properties._.IsSemiring.comm
d_comm_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2298 = erased
-- Data.Bool.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2300 = erased
-- Data.Bool.Properties._.IsSemiring.identity
d_identity_2306 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2306 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v0))))
-- Data.Bool.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2314 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.isMagma
d_isMagma_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2318 v0
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
-- Data.Bool.Properties._.IsSemiring.isMonoid
d_isMonoid_2320 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe v0)))
-- Data.Bool.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v0))))
-- Data.Bool.Properties._.IsSemiring.distrib
d_distrib_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Bool.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2332 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2332 v0
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
-- Data.Bool.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2338 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe v0)
-- Data.Bool.Properties._.IsSemiring.zero
d_zero_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2352 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1434 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2360 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2362 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2368 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2380 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2382 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2382 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2384 = erased
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2390 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe v0)))
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2398 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe v0))))
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe v0))
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe v0)))
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2410 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2410 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1344 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2416 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2416 v0
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
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2436 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2436 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2438 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2438 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.comm
d_comm_2448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2448 = erased
-- Data.Bool.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe v0))
-- Data.Bool.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1170 (coe v0)
-- Data.Bool.Properties._.IsSemiringWithoutOne.zero
d_zero_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2480 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1172 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.identity
d_identity_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2488 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_572 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2494 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0))
-- Data.Bool.Properties._.IsUnitalMagma.isMagma
d_isMagma_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2496 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0)
-- Data.Bool.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2510 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2510 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra
d_IsBooleanAlgebra_2518 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsBoundedJoinSemilattice
d_IsBoundedJoinSemilattice_2520 ::
  (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedJoinSemilattice_2520 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice
d_IsBoundedMeetSemilattice_2522 ::
  (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedMeetSemilattice_2522 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice
d_IsBoundedSemilattice_2524 :: (Bool -> Bool -> Bool) -> Bool -> ()
d_IsBoundedSemilattice_2524 = erased
-- Data.Bool.Properties._.IsDistributiveLattice
d_IsDistributiveLattice_2526 a0 a1 = ()
-- Data.Bool.Properties._.IsJoinSemilattice
d_IsJoinSemilattice_2528 :: (Bool -> Bool -> Bool) -> ()
d_IsJoinSemilattice_2528 = erased
-- Data.Bool.Properties._.IsLattice
d_IsLattice_2530 a0 a1 = ()
-- Data.Bool.Properties._.IsMeetSemilattice
d_IsMeetSemilattice_2532 :: (Bool -> Bool -> Bool) -> ()
d_IsMeetSemilattice_2532 = erased
-- Data.Bool.Properties._.IsSemilattice
d_IsSemilattice_2534 a0 = ()
-- Data.Bool.Properties._.IsBooleanAlgebra.absorptive
d_absorptive_2538 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2538 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2862
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
            (coe v0)))
-- Data.Bool.Properties._.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_2540 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_isDistributiveLattice_2540 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.isEquivalence
d_isEquivalence_2542 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2542 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
            (coe v0)))
-- Data.Bool.Properties._.IsBooleanAlgebra.isLattice
d_isLattice_2544 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_isLattice_2544 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.¬-cong
d_'172''45'cong_2556 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'cong_2556 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-assoc
d_'8743''45'assoc_2560 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_2560 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-comm
d_'8743''45'comm_2562 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_2562 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-complement
d_'8743''45'complement_2564 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_2564 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'complement_3000
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-cong
d_'8743''45'cong_2570 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_2570 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∧-distrib-∨
d_'8743''45'distrib'45''8744'_2576 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_2576 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_2916
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
         (coe v0))
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-assoc
d_'8744''45'assoc_2584 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_2584 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-comm
d_'8744''45'comm_2586 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_2586 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-complement
d_'8744''45'complement_2588 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_2588 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'complement_2998
      (coe v0)
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-cong
d_'8744''45'cong_2594 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_2594 = erased
-- Data.Bool.Properties._.IsBooleanAlgebra.∨-distrib-∧
d_'8744''45'distrib'45''8743'_2600 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_2600 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_2914
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isDistributiveLattice_2996
         (coe v0))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.assoc
d_assoc_2608 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2608 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.comm
d_comm_2610 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2610 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.idem
d_idem_2612 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2612 = erased
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.identity
d_identity_2614 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isBand
d_isBand_2620 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2620 ~v0 ~v1 v2 = du_isBand_2620 v2
du_isBand_2620 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2620 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isEquivalence
d_isEquivalence_2622 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2622 ~v0 ~v1 v2 = du_isEquivalence_2622 v2
du_isEquivalence_2622 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2622 v0
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
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isSemilattice
d_isSemilattice_2624 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_isSemilattice_2624 ~v0 ~v1 v2 = du_isSemilattice_2624 v2
du_isSemilattice_2624 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_isSemilattice_2624 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_isSemilattice_2712
      (coe v0)
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isMagma
d_isMagma_2626 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2626 ~v0 ~v1 v2 = du_isMagma_2626 v2
du_isMagma_2626 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.isSemigroup
d_isSemigroup_2630 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2630 ~v0 ~v1 v2 = du_isSemigroup_2630 v2
du_isSemigroup_2630 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedJoinSemilattice.∙-cong
d_'8729''45'cong_2642 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2642 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.assoc
d_assoc_2650 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2650 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.comm
d_comm_2652 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2652 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.idem
d_idem_2654 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2654 = erased
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.identity
d_identity_2656 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2656 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isBand
d_isBand_2662 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2662 ~v0 ~v1 v2 = du_isBand_2662 v2
du_isBand_2662 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_2662 v0
  = coe MAlonzo.Code.Algebra.Structures.du_isBand_772 (coe v0)
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isEquivalence
d_isEquivalence_2664 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2664 ~v0 ~v1 v2 = du_isEquivalence_2664 v2
du_isEquivalence_2664 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2664 v0
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
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isMagma
d_isMagma_2666 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2666 ~v0 ~v1 v2 = du_isMagma_2666 v2
du_isMagma_2666 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isSemilattice
d_isSemilattice_2668 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_isSemilattice_2668 ~v0 ~v1 v2 = du_isSemilattice_2668 v2
du_isSemilattice_2668 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
du_isSemilattice_2668 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_isSemilattice_2712
      (coe v0)
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.isSemigroup
d_isSemigroup_2672 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2672 ~v0 ~v1 v2 = du_isSemigroup_2672 v2
du_isSemigroup_2672 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedMeetSemilattice.∙-cong
d_'8729''45'cong_2684 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2684 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.assoc
d_assoc_2692 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2692 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.comm
d_comm_2694 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2694 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.idem
d_idem_2696 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2696 = erased
-- Data.Bool.Properties._.IsBoundedSemilattice.identity
d_identity_2698 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedSemilattice.isCommutativeMonoid
d_isCommutativeMonoid_2708 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Data.Bool.Properties._.IsBoundedSemilattice.isEquivalence
d_isEquivalence_2712 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2712 v0
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
-- Data.Bool.Properties._.IsBoundedSemilattice.isMagma
d_isMagma_2714 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2714 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Data.Bool.Properties._.IsBoundedSemilattice.isMonoid
d_isMonoid_2716 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Data.Bool.Properties._.IsBoundedSemilattice.isSemigroup
d_isSemigroup_2720 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Bool.Properties._.IsBoundedSemilattice.isSemilattice
d_isSemilattice_2722 ::
  (Bool -> Bool -> Bool) ->
  Bool ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_isSemilattice_2722 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.du_isSemilattice_2712 v2
-- Data.Bool.Properties._.IsBoundedSemilattice.∙-cong
d_'8729''45'cong_2736 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2736 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.absorptive
d_absorptive_2744 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2744 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2862
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Data.Bool.Properties._.IsDistributiveLattice.isEquivalence
d_isEquivalence_2746 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2746 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0))
-- Data.Bool.Properties._.IsDistributiveLattice.isLattice
d_isLattice_2748 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_isLattice_2748 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isLattice_2912 (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.∧-assoc
d_'8743''45'assoc_2762 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_2762 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-comm
d_'8743''45'comm_2764 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_2764 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-cong
d_'8743''45'cong_2766 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_2766 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_2772 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_2772 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8743''45'distrib'45''8744'_2916
      (coe v0)
-- Data.Bool.Properties._.IsDistributiveLattice.∨-assoc
d_'8744''45'assoc_2780 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_2780 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-comm
d_'8744''45'comm_2782 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_2782 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-cong
d_'8744''45'cong_2784 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_2784 = erased
-- Data.Bool.Properties._.IsDistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_2790 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_2790 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_'8744''45'distrib'45''8743'_2914
      (coe v0)
-- Data.Bool.Properties._.IsJoinSemilattice.assoc
d_assoc_2798 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2798 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.comm
d_comm_2800 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2800 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.idem
d_idem_2802 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2802 = erased
-- Data.Bool.Properties._.IsJoinSemilattice.isBand
d_isBand_2804 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2804 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0)
-- Data.Bool.Properties._.IsJoinSemilattice.isEquivalence
d_isEquivalence_2806 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2806 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0))))
-- Data.Bool.Properties._.IsJoinSemilattice.isMagma
d_isMagma_2808 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0)))
-- Data.Bool.Properties._.IsJoinSemilattice.isSemigroup
d_isSemigroup_2812 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0))
-- Data.Bool.Properties._.IsJoinSemilattice.∙-cong
d_'8729''45'cong_2824 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2824 = erased
-- Data.Bool.Properties._.IsLattice.absorptive
d_absorptive_2832 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2832 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_absorptive_2862 (coe v0)
-- Data.Bool.Properties._.IsLattice.isEquivalence
d_isEquivalence_2834 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2834 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isEquivalence_2848
      (coe v0)
-- Data.Bool.Properties._.IsLattice.∧-assoc
d_'8743''45'assoc_2848 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_2848 = erased
-- Data.Bool.Properties._.IsLattice.∧-comm
d_'8743''45'comm_2850 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_2850 = erased
-- Data.Bool.Properties._.IsLattice.∧-cong
d_'8743''45'cong_2852 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'cong_2852 = erased
-- Data.Bool.Properties._.IsLattice.∨-assoc
d_'8744''45'assoc_2860 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_2860 = erased
-- Data.Bool.Properties._.IsLattice.∨-comm
d_'8744''45'comm_2862 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_2862 = erased
-- Data.Bool.Properties._.IsLattice.∨-cong
d_'8744''45'cong_2864 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'cong_2864 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.assoc
d_assoc_2872 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2872 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.comm
d_comm_2874 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2874 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.idem
d_idem_2876 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2876 = erased
-- Data.Bool.Properties._.IsMeetSemilattice.isBand
d_isBand_2878 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2878 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0)
-- Data.Bool.Properties._.IsMeetSemilattice.isEquivalence
d_isEquivalence_2880 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0))))
-- Data.Bool.Properties._.IsMeetSemilattice.isMagma
d_isMagma_2882 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2882 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0)))
-- Data.Bool.Properties._.IsMeetSemilattice.isSemigroup
d_isSemigroup_2886 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2886 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0))
-- Data.Bool.Properties._.IsMeetSemilattice.∙-cong
d_'8729''45'cong_2898 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2898 = erased
-- Data.Bool.Properties._.IsSemilattice.assoc
d_assoc_2906 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2906 = erased
-- Data.Bool.Properties._.IsSemilattice.comm
d_comm_2908 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2908 = erased
-- Data.Bool.Properties._.IsSemilattice.idem
d_idem_2910 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_2910 = erased
-- Data.Bool.Properties._.IsSemilattice.isBand
d_isBand_2912 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_2912 v0
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0)
-- Data.Bool.Properties._.IsSemilattice.isEquivalence
d_isEquivalence_2914 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
            (coe
               MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0))))
-- Data.Bool.Properties._.IsSemilattice.isMagma
d_isMagma_2916 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2916 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
         (coe
            MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0)))
-- Data.Bool.Properties._.IsSemilattice.isSemigroup
d_isSemigroup_2920 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_484
      (coe
         MAlonzo.Code.Algebra.Lattice.Structures.d_isBand_2534 (coe v0))
-- Data.Bool.Properties._.IsSemilattice.∙-cong
d_'8729''45'cong_2932 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526 ->
  Bool ->
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2932 = erased
-- Data.Bool.Properties._≟_
d__'8799'__2946 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2946 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
             else coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe v1) (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                     (coe v0) (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
              else coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased))
-- Data.Bool.Properties.≡-setoid
d_'8801''45'setoid_2948 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2948
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Bool.Properties.≡-decSetoid
d_'8801''45'decSetoid_2950 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2950
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2946)
-- Data.Bool.Properties.≤-reflexive
d_'8804''45'reflexive_2952 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'reflexive_2952 ~v0 ~v1 ~v2
  = du_'8804''45'reflexive_2952
du_'8804''45'reflexive_2952 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'reflexive_2952
  = coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-refl
d_'8804''45'refl_2954 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'refl_2954 ~v0 = du_'8804''45'refl_2954
du_'8804''45'refl_2954 :: MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'refl_2954 = coe du_'8804''45'reflexive_2952
-- Data.Bool.Properties.≤-trans
d_'8804''45'trans_2956 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'trans_2956 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_2956 v3 v4
du_'8804''45'trans_2956 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'trans_2956 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
        -> coe seq (coe v1) (coe v0)
      MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Bool.Properties.≤-antisym
d_'8804''45'antisym_2960 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_2960 = erased
-- Data.Bool.Properties.≤-minimum
d_'8804''45'minimum_2962 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'minimum_2962 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
      else coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-maximum
d_'8804''45'maximum_2964 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'maximum_2964 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
      else coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
-- Data.Bool.Properties.≤-total
d_'8804''45'total_2966 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_2966 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe d_'8804''45'maximum_2964 (coe v1))
      else coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe d_'8804''45'minimum_2962 (coe v1))
-- Data.Bool.Properties._≤?_
d__'8804''63'__2972 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__2972 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe v1)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16))
             else coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe v1) (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      else coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe d_'8804''45'minimum_2962 (coe v1)))
-- Data.Bool.Properties.≤-irrelevant
d_'8804''45'irrelevant_2976 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_2976 = erased
-- Data.Bool.Properties.≤-isPreorder
d_'8804''45'isPreorder_2978 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_2978
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_2952)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_2956 v3 v4)
-- Data.Bool.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_2980 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_2980
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_2978) erased
-- Data.Bool.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_2982 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_2982
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe d_'8804''45'isPartialOrder_2980) (coe d_'8804''45'total_2966)
-- Data.Bool.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_2984 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_2984
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe d_'8804''45'isTotalOrder_2982) (coe d__'8799'__2946)
      (coe d__'8804''63'__2972)
-- Data.Bool.Properties.≤-poset
d_'8804''45'poset_2986 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8804''45'poset_2986
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6347
      d_'8804''45'isPartialOrder_2980
-- Data.Bool.Properties.≤-preorder
d_'8804''45'preorder_2988 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_2988
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      d_'8804''45'isPreorder_2978
-- Data.Bool.Properties.≤-totalOrder
d_'8804''45'totalOrder_2990 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_'8804''45'totalOrder_2990
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_15657
      d_'8804''45'isTotalOrder_2982
-- Data.Bool.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_2992 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_2992
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      d_'8804''45'isDecTotalOrder_2984
-- Data.Bool.Properties.<-irrefl
d_'60''45'irrefl_2994 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_2994 = erased
-- Data.Bool.Properties.<-asym
d_'60''45'asym_2996 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_2996 = erased
-- Data.Bool.Properties.<-trans
d_'60''45'trans_2998 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans_2998 = erased
-- Data.Bool.Properties.<-transʳ
d_'60''45'trans'691'_3000 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'691'_3000 = erased
-- Data.Bool.Properties.<-transˡ
d_'60''45'trans'737'_3002 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'737'_3002 = erased
-- Data.Bool.Properties.<-cmp
d_'60''45'cmp_3004 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3004 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
             else coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 erased
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 erased
              else coe
                     MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased)
-- Data.Bool.Properties._<?_
d__'60''63'__3006 ::
  Bool ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3006 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                     (coe v1)
                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)
              else coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                     (coe v1)
                     (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Data.Bool.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_3008 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_3008
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Bool.Properties.<-irrelevant
d_'60''45'irrelevant_3014 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3014 = erased
-- Data.Bool.Properties.<-wellFounded
d_'60''45'wellFounded_3016 ::
  Bool -> MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'60''45'wellFounded_3016 = erased
-- Data.Bool.Properties._.<-acc
d_'60''45'acc_3026 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_'60''45'acc_3026 = erased
-- Data.Bool.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3028 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_3028
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased d_'60''45'resp'8322''45''8801'_3008
-- Data.Bool.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3030 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_3030
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24885
      (coe d_'60''45'isStrictPartialOrder_3028) (coe d_'60''45'cmp_3004)
-- Data.Bool.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3032 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_3032
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder_3028
-- Data.Bool.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3034 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_3034
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_20945
      d_'60''45'isStrictTotalOrder_3030
-- Data.Bool.Properties.∨-assoc
d_'8744''45'assoc_3036 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_3036 = erased
-- Data.Bool.Properties.∨-comm
d_'8744''45'comm_3046 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_3046 = erased
-- Data.Bool.Properties.∨-identityˡ
d_'8744''45'identity'737'_3048 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'737'_3048 = erased
-- Data.Bool.Properties.∨-identityʳ
d_'8744''45'identity'691'_3050 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'691'_3050 = erased
-- Data.Bool.Properties.∨-identity
d_'8744''45'identity_3052 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_3052
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-zeroˡ
d_'8744''45'zero'737'_3054 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'737'_3054 = erased
-- Data.Bool.Properties.∨-zeroʳ
d_'8744''45'zero'691'_3056 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'691'_3056 = erased
-- Data.Bool.Properties.∨-zero
d_'8744''45'zero_3058 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_3058
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-inverseˡ
d_'8744''45'inverse'737'_3060 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'737'_3060 = erased
-- Data.Bool.Properties.∨-inverseʳ
d_'8744''45'inverse'691'_3062 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'691'_3062 = erased
-- Data.Bool.Properties.∨-inverse
d_'8744''45'inverse_3066 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'inverse_3066
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-idem
d_'8744''45'idem_3068 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'idem_3068 = erased
-- Data.Bool.Properties.∨-sel
d_'8744''45'sel_3070 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8744''45'sel_3070 v0 ~v1 = du_'8744''45'sel_3070 v0
du_'8744''45'sel_3070 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8744''45'sel_3070 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Bool.Properties.∨-conicalˡ
d_'8744''45'conical'737'_3076 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'conical'737'_3076 = erased
-- Data.Bool.Properties.∨-conicalʳ
d_'8744''45'conical'691'_3078 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'conical'691'_3078 = erased
-- Data.Bool.Properties.∨-conical
d_'8744''45'conical_3080 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'conical_3080
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-isMagma
d_'8744''45'isMagma_3082 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8744''45'isMagma_3082
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Bool.Properties.∨-magma
d_'8744''45'magma_3084 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8744''45'magma_3084
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isMagma_3082
-- Data.Bool.Properties.∨-isSemigroup
d_'8744''45'isSemigroup_3086 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8744''45'isSemigroup_3086
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'8744''45'isMagma_3082) erased
-- Data.Bool.Properties.∨-semigroup
d_'8744''45'semigroup_3088 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8744''45'semigroup_3088
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemigroup_3086
-- Data.Bool.Properties.∨-isBand
d_'8744''45'isBand_3090 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8744''45'isBand_3090
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_10105
      (coe d_'8744''45'isSemigroup_3086) erased
-- Data.Bool.Properties.∨-band
d_'8744''45'band_3092 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8744''45'band_3092
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_9687
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isBand_3090
-- Data.Bool.Properties.∨-isSemilattice
d_'8744''45'isSemilattice_3094 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8744''45'isSemilattice_3094
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsSemilattice'46'constructor_32583
      (coe d_'8744''45'isBand_3090) erased
-- Data.Bool.Properties.∨-semilattice
d_'8744''45'semilattice_3096 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8744''45'semilattice_3096
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Semilattice'46'constructor_193
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemilattice_3094
-- Data.Bool.Properties.∨-isMonoid
d_'8744''45'isMonoid_3098 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8744''45'isMonoid_3098
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'8744''45'isSemigroup_3086) (coe d_'8744''45'identity_3052)
-- Data.Bool.Properties.∨-isCommutativeMonoid
d_'8744''45'isCommutativeMonoid_3100 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'8744''45'isCommutativeMonoid_3100
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'8744''45'isMonoid_3098) erased
-- Data.Bool.Properties.∨-commutativeMonoid
d_'8744''45'commutativeMonoid_3102 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'8744''45'commutativeMonoid_3102
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isCommutativeMonoid_3100
-- Data.Bool.Properties.∨-isIdempotentCommutativeMonoid
d_'8744''45'isIdempotentCommutativeMonoid_3104 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714
d_'8744''45'isIdempotentCommutativeMonoid_3104
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_16935
      (coe d_'8744''45'isCommutativeMonoid_3100) erased
-- Data.Bool.Properties.∨-idempotentCommutativeMonoid
d_'8744''45'idempotentCommutativeMonoid_3106 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_916
d_'8744''45'idempotentCommutativeMonoid_3106
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_16947
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isIdempotentCommutativeMonoid_3104
-- Data.Bool.Properties.∧-assoc
d_'8743''45'assoc_3108 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_3108 = erased
-- Data.Bool.Properties.∧-comm
d_'8743''45'comm_3118 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_3118 = erased
-- Data.Bool.Properties.∧-identityˡ
d_'8743''45'identity'737'_3120 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'737'_3120 = erased
-- Data.Bool.Properties.∧-identityʳ
d_'8743''45'identity'691'_3122 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'691'_3122 = erased
-- Data.Bool.Properties.∧-identity
d_'8743''45'identity_3124 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_3124
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-zeroˡ
d_'8743''45'zero'737'_3126 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'737'_3126 = erased
-- Data.Bool.Properties.∧-zeroʳ
d_'8743''45'zero'691'_3128 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'691'_3128 = erased
-- Data.Bool.Properties.∧-zero
d_'8743''45'zero_3130 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_3130
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-inverseˡ
d_'8743''45'inverse'737'_3132 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'737'_3132 = erased
-- Data.Bool.Properties.∧-inverseʳ
d_'8743''45'inverse'691'_3134 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'691'_3134 = erased
-- Data.Bool.Properties.∧-inverse
d_'8743''45'inverse_3138 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'inverse_3138
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-idem
d_'8743''45'idem_3140 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'idem_3140 = erased
-- Data.Bool.Properties.∧-sel
d_'8743''45'sel_3142 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8743''45'sel_3142 v0 ~v1 = du_'8743''45'sel_3142 v0
du_'8743''45'sel_3142 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8743''45'sel_3142 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
-- Data.Bool.Properties.∧-conicalˡ
d_'8743''45'conical'737'_3148 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'conical'737'_3148 = erased
-- Data.Bool.Properties.∧-conicalʳ
d_'8743''45'conical'691'_3150 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'conical'691'_3150 = erased
-- Data.Bool.Properties.∧-conical
d_'8743''45'conical_3152 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'conical_3152
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_3154 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_3154 = erased
-- Data.Bool.Properties.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_3164 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_3164 = erased
-- Data.Bool.Properties.∧-distrib-∨
d_'8743''45'distrib'45''8744'_3172 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_3172
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_3174 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_3174 = erased
-- Data.Bool.Properties.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3184 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_3184 = erased
-- Data.Bool.Properties.∨-distrib-∧
d_'8744''45'distrib'45''8743'_3192 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_3192
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-abs-∨
d_'8743''45'abs'45''8744'_3194 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'abs'45''8744'_3194 = erased
-- Data.Bool.Properties.∨-abs-∧
d_'8744''45'abs'45''8743'_3200 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'abs'45''8743'_3200 = erased
-- Data.Bool.Properties.∨-∧-absorptive
d_'8744''45''8743''45'absorptive_3206 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'absorptive_3206
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-isMagma
d_'8743''45'isMagma_3208 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8743''45'isMagma_3208
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Bool.Properties.∧-magma
d_'8743''45'magma_3210 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8743''45'magma_3210
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isMagma_3208
-- Data.Bool.Properties.∧-isSemigroup
d_'8743''45'isSemigroup_3212 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8743''45'isSemigroup_3212
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'8743''45'isMagma_3208) erased
-- Data.Bool.Properties.∧-semigroup
d_'8743''45'semigroup_3214 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8743''45'semigroup_3214
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemigroup_3212
-- Data.Bool.Properties.∧-isBand
d_'8743''45'isBand_3216 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8743''45'isBand_3216
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_10105
      (coe d_'8743''45'isSemigroup_3212) erased
-- Data.Bool.Properties.∧-band
d_'8743''45'band_3218 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8743''45'band_3218
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_9687
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isBand_3216
-- Data.Bool.Properties.∧-isSemilattice
d_'8743''45'isSemilattice_3220 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8743''45'isSemilattice_3220
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsSemilattice'46'constructor_32583
      (coe d_'8743''45'isBand_3216) erased
-- Data.Bool.Properties.∧-semilattice
d_'8743''45'semilattice_3222 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8743''45'semilattice_3222
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Semilattice'46'constructor_193
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemilattice_3220
-- Data.Bool.Properties.∧-isMonoid
d_'8743''45'isMonoid_3224 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'8743''45'isMonoid_3224
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'8743''45'isSemigroup_3212) (coe d_'8743''45'identity_3124)
-- Data.Bool.Properties.∧-isCommutativeMonoid
d_'8743''45'isCommutativeMonoid_3226 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'8743''45'isCommutativeMonoid_3226
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'8743''45'isMonoid_3224) erased
-- Data.Bool.Properties.∧-commutativeMonoid
d_'8743''45'commutativeMonoid_3228 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'8743''45'commutativeMonoid_3228
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isCommutativeMonoid_3226
-- Data.Bool.Properties.∧-isIdempotentCommutativeMonoid
d_'8743''45'isIdempotentCommutativeMonoid_3230 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714
d_'8743''45'isIdempotentCommutativeMonoid_3230
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_16935
      (coe d_'8743''45'isCommutativeMonoid_3226) erased
-- Data.Bool.Properties.∧-idempotentCommutativeMonoid
d_'8743''45'idempotentCommutativeMonoid_3232 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_916
d_'8743''45'idempotentCommutativeMonoid_3232
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_16947
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isIdempotentCommutativeMonoid_3230
-- Data.Bool.Properties.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_3234 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'8744''45''8743''45'isSemiring_3234
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
         (coe d_'8744''45'isCommutativeMonoid_3100) erased erased
         (coe d_'8743''45'identity_3124)
         (coe d_'8743''45'distrib'45''8744'_3172))
      (coe d_'8743''45'zero_3130)
-- Data.Bool.Properties.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_3236 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'8744''45''8743''45'isCommutativeSemiring_3236
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe d_'8744''45''8743''45'isSemiring_3234) erased
-- Data.Bool.Properties.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_3238 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'8744''45''8743''45'commutativeSemiring_3238
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_39235
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8744''45''8743''45'isCommutativeSemiring_3236
-- Data.Bool.Properties.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_3240 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'8743''45''8744''45'isSemiring_3240
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
         (coe d_'8743''45'isCommutativeMonoid_3226) erased erased
         (coe d_'8744''45'identity_3052)
         (coe d_'8744''45'distrib'45''8743'_3192))
      (coe d_'8744''45'zero_3058)
-- Data.Bool.Properties.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_3242 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'8743''45''8744''45'isCommutativeSemiring_3242
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe d_'8743''45''8744''45'isSemiring_3240) erased
-- Data.Bool.Properties.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_3244 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'8743''45''8744''45'commutativeSemiring_3244
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_39235
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8743''45''8744''45'isCommutativeSemiring_3242
-- Data.Bool.Properties.∨-∧-isLattice
d_'8744''45''8743''45'isLattice_3246 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8744''45''8743''45'isLattice_3246
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsLattice'46'constructor_35597
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased erased erased erased erased erased
      (coe d_'8744''45''8743''45'absorptive_3206)
-- Data.Bool.Properties.∨-∧-lattice
d_'8744''45''8743''45'lattice_3248 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8744''45''8743''45'lattice_3248
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_Lattice'46'constructor_7961
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isLattice_3246
-- Data.Bool.Properties.∨-∧-isDistributiveLattice
d_'8744''45''8743''45'isDistributiveLattice_3250 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8744''45''8743''45'isDistributiveLattice_3250
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsDistributiveLattice'46'constructor_39691
      (coe d_'8744''45''8743''45'isLattice_3246)
      (coe d_'8744''45'distrib'45''8743'_3192)
      (coe d_'8743''45'distrib'45''8744'_3172)
-- Data.Bool.Properties.∨-∧-distributiveLattice
d_'8744''45''8743''45'distributiveLattice_3252 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8744''45''8743''45'distributiveLattice_3252
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_DistributiveLattice'46'constructor_9531
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isDistributiveLattice_3250
-- Data.Bool.Properties.∨-∧-isBooleanAlgebra
d_'8744''45''8743''45'isBooleanAlgebra_3254 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsBooleanAlgebra_2976
d_'8744''45''8743''45'isBooleanAlgebra_3254
  = coe
      MAlonzo.Code.Algebra.Lattice.Structures.C_IsBooleanAlgebra'46'constructor_42757
      (coe d_'8744''45''8743''45'isDistributiveLattice_3250)
      (coe d_'8744''45'inverse_3066) (coe d_'8743''45'inverse_3138)
      erased
-- Data.Bool.Properties.∨-∧-booleanAlgebra
d_'8744''45''8743''45'booleanAlgebra_3256 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_BooleanAlgebra_680
d_'8744''45''8743''45'booleanAlgebra_3256
  = coe
      MAlonzo.Code.Algebra.Lattice.Bundles.C_BooleanAlgebra'46'constructor_11505
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d_not_22
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45''8743''45'isBooleanAlgebra_3254
-- Data.Bool.Properties.not-involutive
d_not'45'involutive_3258 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'involutive_3258 = erased
-- Data.Bool.Properties.not-injective
d_not'45'injective_3264 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'injective_3264 = erased
-- Data.Bool.Properties.not-¬
d_not'45''172'_3274 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_not'45''172'_3274 = erased
-- Data.Bool.Properties.¬-not
d_'172''45'not_3280 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'not_3280 = erased
-- Data.Bool.Properties.xor-is-ok
d_xor'45'is'45'ok_3290 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'is'45'ok_3290 = erased
-- Data.Bool.Properties.true-xor
d_true'45'xor_3298 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_true'45'xor_3298 = erased
-- Data.Bool.Properties.xor-same
d_xor'45'same_3302 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'same_3302 = erased
-- Data.Bool.Properties.not-distribˡ-xor
d_not'45'distrib'737''45'xor_3308 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'distrib'737''45'xor_3308 = erased
-- Data.Bool.Properties.not-distribʳ-xor
d_not'45'distrib'691''45'xor_3318 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'distrib'691''45'xor_3318 = erased
-- Data.Bool.Properties.xor-assoc
d_xor'45'assoc_3324 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'assoc_3324 = erased
-- Data.Bool.Properties.xor-comm
d_xor'45'comm_3334 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'comm_3334 = erased
-- Data.Bool.Properties.xor-identityˡ
d_xor'45'identity'737'_3336 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'identity'737'_3336 = erased
-- Data.Bool.Properties.xor-identityʳ
d_xor'45'identity'691'_3338 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'identity'691'_3338 = erased
-- Data.Bool.Properties.xor-identity
d_xor'45'identity_3340 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_xor'45'identity_3340
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.xor-inverseˡ
d_xor'45'inverse'737'_3342 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'inverse'737'_3342 = erased
-- Data.Bool.Properties.xor-inverseʳ
d_xor'45'inverse'691'_3344 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'inverse'691'_3344 = erased
-- Data.Bool.Properties.xor-inverse
d_xor'45'inverse_3348 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_xor'45'inverse_3348
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-distribˡ-xor
d_'8743''45'distrib'737''45'xor_3350 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45'xor_3350 = erased
-- Data.Bool.Properties.∧-distribʳ-xor
d_'8743''45'distrib'691''45'xor_3360 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45'xor_3360 = erased
-- Data.Bool.Properties.∧-distrib-xor
d_'8743''45'distrib'45'xor_3370 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45'xor_3370
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.xor-annihilates-not
d_xor'45'annihilates'45'not_3376 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'annihilates'45'not_3376 = erased
-- Data.Bool.Properties.xor-∧-commutativeRing
d_xor'45''8743''45'commutativeRing_3382 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
d_xor'45''8743''45'commutativeRing_3382
  = coe
      MAlonzo.Code.Algebra.Lattice.Properties.BooleanAlgebra.du_'8853''45''8743''45'commutativeRing_3522
      (coe d_'8744''45''8743''45'booleanAlgebra_3256)
      (coe MAlonzo.Code.Data.Bool.Base.d__xor__36) erased
-- Data.Bool.Properties.⇔→≡
d_'8660''8594''8801'_3654 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8660''8594''8801'_3654 = erased
-- Data.Bool.Properties.T-≡
d_T'45''8801'_3670 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_T'45''8801'_3670 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v2 -> v1)))
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased erased
-- Data.Bool.Properties.T-not-≡
d_T'45'not'45''8801'_3674 ::
  Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_T'45'not'45''8801'_3674 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased erased
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v2 -> v1)))
-- Data.Bool.Properties.T-∧
d_T'45''8743'_3680 ::
  Bool -> Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_T'45''8743'_3680 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                    (let v2
                           = coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                     coe (coe (\ v3 -> v2)))
                    (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                     coe (coe (\ v3 -> v2)))
             else coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                    (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      else coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
             (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Data.Bool.Properties.T-∨
d_T'45''8744'_3686 ::
  Bool -> Bool -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_T'45''8744'_3686 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
             (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
             (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (coe (\ v3 -> v2)))
      else (if coe v1
              then coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                     (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                      coe (coe (\ v3 -> v2)))
              else coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                     (coe
                        MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52 (coe (\ v2 -> v2))
                        (coe (\ v2 -> v2))))
-- Data.Bool.Properties.T-irrelevant
d_T'45'irrelevant_3688 ::
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_T'45'irrelevant_3688 = erased
-- Data.Bool.Properties.T?
d_T'63'_3690 ::
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_T'63'_3690 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
      (coe v0)
      (if coe v0
         then coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         else coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
-- Data.Bool.Properties.T?-diag
d_T'63''45'diag_3696 :: Bool -> AgdaAny -> AgdaAny
d_T'63''45'diag_3696 v0 ~v1 = du_T'63''45'diag_3696 v0
du_T'63''45'diag_3696 :: Bool -> AgdaAny
du_T'63''45'diag_3696 v0
  = coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Bool.Properties.if-float
d_if'45'float_3706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_if'45'float_3706 = erased
-- Data.Bool.Properties.push-function-into-if
d_push'45'function'45'into'45'if_3708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_push'45'function'45'into'45'if_3708 = erased
