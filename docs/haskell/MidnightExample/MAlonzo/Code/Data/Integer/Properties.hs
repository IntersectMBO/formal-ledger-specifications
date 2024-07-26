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

module MAlonzo.Code.Data.Integer.Properties where

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
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Bundles
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Lattice.Structures
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Integer.Properties._._DistributesOver_
d__DistributesOver__10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver__10 = erased
-- Data.Integer.Properties._._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Integer.Properties._._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Integer.Properties._.Associative
d_Associative_30 :: (Integer -> Integer -> Integer) -> ()
d_Associative_30 = erased
-- Data.Integer.Properties._.Commutative
d_Commutative_34 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_34 = erased
-- Data.Integer.Properties._.Identity
d_Identity_50 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_50 = erased
-- Data.Integer.Properties._.Inverse
d_Inverse_54 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_54 = erased
-- Data.Integer.Properties._.LeftIdentity
d_LeftIdentity_76 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_76 = erased
-- Data.Integer.Properties._.LeftInverse
d_LeftInverse_78 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_78 = erased
-- Data.Integer.Properties._.LeftZero
d_LeftZero_84 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_84 = erased
-- Data.Integer.Properties._.RightIdentity
d_RightIdentity_106 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_106 = erased
-- Data.Integer.Properties._.RightInverse
d_RightInverse_108 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_108 = erased
-- Data.Integer.Properties._.RightZero
d_RightZero_114 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_114 = erased
-- Data.Integer.Properties._.Zero
d_Zero_134 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_134 = erased
-- Data.Integer.Properties._.IsAbelianGroup
d_IsAbelianGroup_138 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_140 a0 = ()
-- Data.Integer.Properties._.IsBand
d_IsBand_142 a0 = ()
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_144 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_146 a0 = ()
-- Data.Integer.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_148 a0 a1 = ()
-- Data.Integer.Properties._.IsCommutativeRing
d_IsCommutativeRing_150 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_152 a0 = ()
-- Data.Integer.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_154 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_156 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_158 a0 = ()
-- Data.Integer.Properties._.IsGroup
d_IsGroup_160 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_162 a0 a1 = ()
-- Data.Integer.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_164 a0 = ()
-- Data.Integer.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_166 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_168 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_170 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_172 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_174 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsLoop
d_IsLoop_176 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsMagma
d_IsMagma_178 a0 = ()
-- Data.Integer.Properties._.IsMedialMagma
d_IsMedialMagma_180 a0 = ()
-- Data.Integer.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_182 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsMonoid
d_IsMonoid_184 a0 a1 = ()
-- Data.Integer.Properties._.IsMoufangLoop
d_IsMoufangLoop_186 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsNearSemiring
d_IsNearSemiring_188 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsNearring
d_IsNearring_190 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_192 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsQuasigroup
d_IsQuasigroup_194 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsQuasiring
d_IsQuasiring_196 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsRightBolLoop
d_IsRightBolLoop_198 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsRing
d_IsRing_200 a0 a1 a2 a3 a4 = ()
-- Data.Integer.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_202 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_204 a0 = ()
-- Data.Integer.Properties._.IsSemigroup
d_IsSemigroup_206 a0 = ()
-- Data.Integer.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_208 a0 = ()
-- Data.Integer.Properties._.IsSemiring
d_IsSemiring_210 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_212 a0 a1 a2 a3 = ()
-- Data.Integer.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_214 a0 a1 a2 = ()
-- Data.Integer.Properties._.IsUnitalMagma
d_IsUnitalMagma_216 a0 a1 = ()
-- Data.Integer.Properties._.IsAbelianGroup.assoc
d_assoc_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_222 = erased
-- Data.Integer.Properties._.IsAbelianGroup.comm
d_comm_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_224 = erased
-- Data.Integer.Properties._.IsAbelianGroup.identity
d_identity_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Integer.Properties._.IsAbelianGroup.inverse
d_inverse_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isEquivalence
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
-- Data.Integer.Properties._.IsAbelianGroup.isGroup
d_isGroup_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_246 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)
-- Data.Integer.Properties._.IsAbelianGroup.isMagma
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
-- Data.Integer.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Integer.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Integer.Properties._.IsAbelianGroup.setoid
d_setoid_266 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_266 ~v0 ~v1 ~v2 v3 = du_setoid_266 v3
du_setoid_266 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_266 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Data.Integer.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_276 = erased
-- Data.Integer.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_278 = erased
-- Data.Integer.Properties._.IsAlternativeMagma.alter
d_alter_286 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_286 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_262 (coe v0)
-- Data.Integer.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0))
-- Data.Integer.Properties._.IsAlternativeMagma.isMagma
d_isMagma_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_294 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0)
-- Data.Integer.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_308 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_308 = erased
-- Data.Integer.Properties._.IsBand.assoc
d_assoc_316 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_316 = erased
-- Data.Integer.Properties._.IsBand.idem
d_idem_318 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_318 = erased
-- Data.Integer.Properties._.IsBand.isEquivalence
d_isEquivalence_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)))
-- Data.Integer.Properties._.IsBand.isMagma
d_isMagma_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0))
-- Data.Integer.Properties._.IsBand.isSemigroup
d_isSemigroup_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)
-- Data.Integer.Properties._.IsBand.∙-cong
d_'8729''45'cong_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_338 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_346 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_348 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_350 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_352 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.*-identity
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_376 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_378 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_380 = erased
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.identity
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isMagma
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isMonoid
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.distrib
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
      (coe v0)
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
         (coe v0))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
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
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.setoid
d_setoid_432 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_432 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_432 v4
du_setoid_432 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_432 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Data.Integer.Properties._.IsCancellativeCommutativeSemiring.zero
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
-- Data.Integer.Properties._.IsCommutativeMagma.comm
d_comm_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_446 = erased
-- Data.Integer.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_448 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMagma.isMagma
d_isMagma_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_450 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0)
-- Data.Integer.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_464 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_464 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.assoc
d_assoc_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_472 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.comm
d_comm_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_474 = erased
-- Data.Integer.Properties._.IsCommutativeMonoid.identity
d_identity_476 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.isEquivalence
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
-- Data.Integer.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_488 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)
-- Data.Integer.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Integer.Properties._.IsCommutativeMonoid.setoid
d_setoid_502 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_502 ~v0 ~v1 v2 = du_setoid_502 v2
du_setoid_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_502 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Data.Integer.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_508 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_518 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_520 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_522 = erased
-- Data.Integer.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2506
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.assoc
d_assoc_546 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_546 = erased
-- Data.Integer.Properties._.IsCommutativeRing.comm
d_comm_548 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_548 = erased
-- Data.Integer.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_550 ::
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
d_'8729''45'cong_550 = erased
-- Data.Integer.Properties._.IsCommutativeRing.identity
d_identity_556 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_556 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_556 v5
du_identity_556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_556 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isGroup
d_isGroup_570 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_570 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_570 v5
du_isGroup_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_isGroup_570 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
            (coe v1)))
-- Data.Integer.Properties._.IsCommutativeRing.isMagma
d_isMagma_576 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_576 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_576 v5
du_isMagma_576 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_576 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_578 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_578 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_578 v5
du_isMonoid_578 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_isMonoid_578 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_580 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_580 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_580 v5
du_isSemigroup_580 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_580 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_584 ::
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
d_'8315''185''45'cong_584 = erased
-- Data.Integer.Properties._.IsCommutativeRing.inverse
d_inverse_586 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_586 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_586 v5
du_inverse_586 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_586 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.distrib
d_distrib_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2508
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_602 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_602 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_602 v5
du_isEquivalence_602 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_602 v0
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
-- Data.Integer.Properties._.IsCommutativeRing.isRing
d_isRing_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478
d_isRing_608 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0)
-- Data.Integer.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_610 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
d_isRingWithoutOne_610 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isRingWithoutOne_610 v5
du_isRingWithoutOne_610 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
du_isRingWithoutOne_610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Integer.Properties._.IsCommutativeRing.setoid
d_setoid_622 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_622 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_622 v5
du_setoid_622 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_622 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                    (coe v2) in
          coe
            (let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Data.Integer.Properties._.IsCommutativeSemigroup.assoc
d_assoc_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_640 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.comm
d_comm_642 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_642 = erased
-- Data.Integer.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_648 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_652 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_652 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_664 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_664 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_672 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_674 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_676 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_676 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.assoc
d_assoc_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_700 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.comm
d_comm_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_702 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_704 = erased
-- Data.Integer.Properties._.IsCommutativeSemiring.identity
d_identity_710 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_710 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))
-- Data.Integer.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.isMagma
d_isMagma_722 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_722 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isMonoid
d_isMonoid_724 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))))
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemigroup
d_isSemigroup_726 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))))
-- Data.Integer.Properties._.IsCommutativeSemiring.distrib
d_distrib_730 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiring.isEquivalence
d_isEquivalence_738 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_738 v0
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
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_744 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiring.setoid
d_setoid_754 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_754 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_754 v4
du_setoid_754 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_754 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Data.Integer.Properties._.IsCommutativeSemiring.zero
d_zero_760 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_772 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_774 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_776 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_790 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
d_isMonoid_798 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
            (coe v0)))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.Carrier
d_Carrier_800 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  ()
d_Carrier_800 = erased
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_802 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1170
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_810 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
      (coe v0)
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.setoid
d_setoid_818 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_818 ~v0 ~v1 ~v2 v3 = du_setoid_818 v3
du_setoid_818 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_818 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Data.Integer.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_824 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1172
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Integer.Properties._.IsFlexibleMagma.flex
d_flex_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_832 = erased
-- Data.Integer.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Integer.Properties._.IsFlexibleMagma.isMagma
d_isMagma_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_836 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Integer.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_850 = erased
-- Data.Integer.Properties._.IsGroup.assoc
d_assoc_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_860 = erased
-- Data.Integer.Properties._.IsGroup.identity
d_identity_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Integer.Properties._.IsGroup.inverse
d_inverse_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_868 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_908 (coe v0)
-- Data.Integer.Properties._.IsGroup.isEquivalence
d_isEquivalence_874 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))))
-- Data.Integer.Properties._.IsGroup.isMagma
d_isMagma_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)))
-- Data.Integer.Properties._.IsGroup.isMonoid
d_isMonoid_882 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_882 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)
-- Data.Integer.Properties._.IsGroup.isSemigroup
d_isSemigroup_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_886 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Integer.Properties._.IsGroup.setoid
d_setoid_894 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_894 ~v0 ~v1 ~v2 v3 = du_setoid_894 v3
du_setoid_894 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_894 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Data.Integer.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_904 = erased
-- Data.Integer.Properties._.IsGroup.∙-cong
d_'8729''45'cong_906 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_906 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_914 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_916 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_916 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_918 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_918 = erased
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.identity
d_identity_920 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_920 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
d_isEquivalence_934 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_934 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isMagma
d_isMagma_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
               (coe v0))))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_938 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
d_isSemigroup_942 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724
            (coe v0)))
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.setoid
d_setoid_950 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_950 ~v0 ~v1 v2 = du_setoid_950 v2
du_setoid_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_950 v0
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
-- Data.Integer.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_956 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.idem
d_idem_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_964 = erased
-- Data.Integer.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Integer.Properties._.IsIdempotentMagma.isMagma
d_isMagma_968 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_968 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Integer.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_982 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_982 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_990 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_992 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_992 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_998 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.assoc
d_assoc_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1010 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.comm
d_comm_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1012 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1014 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1020 = erased
-- Data.Integer.Properties._.IsIdempotentSemiring.identity
d_identity_1022 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))
-- Data.Integer.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.isMagma
d_isMagma_1034 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1034 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isMonoid
d_isMonoid_1036 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1036 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))))
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemigroup
d_isSemigroup_1038 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1038 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))))
-- Data.Integer.Properties._.IsIdempotentSemiring.distrib
d_distrib_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Integer.Properties._.IsIdempotentSemiring.isEquivalence
d_isEquivalence_1048 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1048 v0
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
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1054 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)
-- Data.Integer.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1056 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Integer.Properties._.IsIdempotentSemiring.setoid
d_setoid_1064 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1064 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1064 v4
du_setoid_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1064 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Data.Integer.Properties._.IsIdempotentSemiring.zero
d_zero_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Integer.Properties._.IsInvertibleMagma.inverse
d_inverse_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1078 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_796 (coe v0)
-- Data.Integer.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0))
-- Data.Integer.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1086 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0)
-- Data.Integer.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1100 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1100 = erased
-- Data.Integer.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1102 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1102 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1110 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_846 (coe v0)
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isEquivalence
d_isEquivalence_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_794
         (coe
            MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_794
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1142 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1142 = erased
-- Data.Integer.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1144 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1144 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1152 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1154 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.*-identity
d_'42''45'identity_1160 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1160 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.assoc
d_assoc_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1172 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.comm
d_comm_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1174 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1176 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1182 = erased
-- Data.Integer.Properties._.IsKleeneAlgebra.identity
d_identity_1184 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1184 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1192 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.isMagma
d_isMagma_1196 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1196 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isMonoid
d_isMonoid_1198 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1198 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemigroup
d_isSemigroup_1200 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1200 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.distrib
d_distrib_1204 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
            (coe
               MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
               (coe v0))))
-- Data.Integer.Properties._.IsKleeneAlgebra.isEquivalence
d_isEquivalence_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1210 v0
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
-- Data.Integer.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768
d_isIdempotentSemiring_1212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
      (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1218 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
         (coe v0))
-- Data.Integer.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1220 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1220 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
            (coe v0)))
-- Data.Integer.Properties._.IsKleeneAlgebra.setoid
d_setoid_1228 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1228 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1228 v5
du_setoid_1228 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1228 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                       (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v4) in
                coe
                  (let v6
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_168
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v6))))))))
-- Data.Integer.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_1902 (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1236 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_1900 (coe v0)
-- Data.Integer.Properties._.IsKleeneAlgebra.zero
d_zero_1246 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
         (coe
            MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
            (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1254 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1254 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1260 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1260 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.identity
d_identity_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Integer.Properties._.IsLeftBolLoop.isEquivalence
d_isEquivalence_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))))
-- Data.Integer.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1274 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)
-- Data.Integer.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Integer.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1282 = erased
-- Data.Integer.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1284 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1294 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Integer.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1306 = erased
-- Data.Integer.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1314 = erased
-- Data.Integer.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1320 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1320 = erased
-- Data.Integer.Properties._.IsLoop.identity
d_identity_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_2870 (coe v0)
-- Data.Integer.Properties._.IsLoop.isEquivalence
d_isEquivalence_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)))
-- Data.Integer.Properties._.IsLoop.isMagma
d_isMagma_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Integer.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1338 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)
-- Data.Integer.Properties._.IsLoop.leftDivides
d_leftDivides_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Integer.Properties._.IsLoop.rightDivides
d_rightDivides_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Integer.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1362 = erased
-- Data.Integer.Properties._.IsMagma.isEquivalence
d_isEquivalence_1370 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1370 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v0)
-- Data.Integer.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1384 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1384 = erased
-- Data.Integer.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0))
-- Data.Integer.Properties._.IsMedialMagma.isMagma
d_isMagma_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1394 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0)
-- Data.Integer.Properties._.IsMedialMagma.medial
d_medial_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1398 = erased
-- Data.Integer.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1410 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1410 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1418 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1418 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1424 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1424 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.identity
d_identity_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Integer.Properties._.IsMiddleBolLoop.isEquivalence
d_isEquivalence_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))))
-- Data.Integer.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1438 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)
-- Data.Integer.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1440 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Integer.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1452 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1452 = erased
-- Data.Integer.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Integer.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1470 = erased
-- Data.Integer.Properties._.IsMonoid.assoc
d_assoc_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1478 = erased
-- Data.Integer.Properties._.IsMonoid.identity
d_identity_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1480 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_616 (coe v0)
-- Data.Integer.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)))
-- Data.Integer.Properties._.IsMonoid.isMagma
d_isMagma_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0))
-- Data.Integer.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1492 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)
-- Data.Integer.Properties._.IsMonoid.setoid
d_setoid_1500 ::
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1500 ~v0 ~v1 v2 = du_setoid_1500 v2
du_setoid_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1500 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Structures.du_setoid_168
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v1)))
-- Data.Integer.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1506 = erased
-- Data.Integer.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1514 = erased
-- Data.Integer.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1520 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identical
d_identical_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1526 = erased
-- Data.Integer.Properties._.IsMoufangLoop.identity
d_identity_1528 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_2946
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))
-- Data.Integer.Properties._.IsMoufangLoop.isEquivalence
d_isEquivalence_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1534 v0
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
-- Data.Integer.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932
d_isLeftBolLoop_1536 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)
-- Data.Integer.Properties._.IsMoufangLoop.isLoop
d_isLoop_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_2946
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))
-- Data.Integer.Properties._.IsMoufangLoop.isMagma
d_isMagma_1540 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.isQuasigroup
d_isQuasigroup_1544 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLoop_2946
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)))
-- Data.Integer.Properties._.IsMoufangLoop.leftBol
d_leftBol_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1546 = erased
-- Data.Integer.Properties._.IsMoufangLoop.leftDivides
d_leftDivides_1548 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1548 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.rightBol
d_rightBol_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1558 = erased
-- Data.Integer.Properties._.IsMoufangLoop.rightDivides
d_rightDivides_1560 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLoop_2946
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))))
-- Data.Integer.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1572 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1572 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1580 = erased
-- Data.Integer.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1582 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1582 = erased
-- Data.Integer.Properties._.IsNearSemiring.assoc
d_assoc_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1592 = erased
-- Data.Integer.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1594 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1594 = erased
-- Data.Integer.Properties._.IsNearSemiring.identity
d_identity_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.isMagma
d_isMagma_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)))
-- Data.Integer.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)
-- Data.Integer.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Integer.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1614 = erased
-- Data.Integer.Properties._.IsNearSemiring.isEquivalence
d_isEquivalence_1616 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))))
-- Data.Integer.Properties._.IsNearSemiring.setoid
d_setoid_1624 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1624 ~v0 ~v1 ~v2 v3 = du_setoid_1624 v3
du_setoid_1624 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1624 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Data.Integer.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1630 = erased
-- Data.Integer.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1634 = erased
-- Data.Integer.Properties._.IsNearring.*-cong
d_'42''45'cong_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1636 = erased
-- Data.Integer.Properties._.IsNearring.*-identity
d_'42''45'identity_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Integer.Properties._.IsNearring.assoc
d_assoc_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1654 = erased
-- Data.Integer.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1656 = erased
-- Data.Integer.Properties._.IsNearring.identity
d_identity_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))
-- Data.Integer.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1668 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2386 (coe v0)
-- Data.Integer.Properties._.IsNearring.isMagma
d_isMagma_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
            (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))))
-- Data.Integer.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Integer.Properties._.IsNearring.isSemigroup
d_isSemigroup_1678 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1678 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))
-- Data.Integer.Properties._.IsNearring.distrib
d_distrib_1682 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2038
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Integer.Properties._.IsNearring.isEquivalence
d_isEquivalence_1692 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1692 v0
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
-- Data.Integer.Properties._.IsNearring.isQuasiring
d_isQuasiring_1696 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008
d_isQuasiring_1696 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)
-- Data.Integer.Properties._.IsNearring.setoid
d_setoid_1702 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1702 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1702 v5
du_setoid_1702 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1702 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Algebra.Structures.du_setoid_168
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v3)))))
-- Data.Integer.Properties._.IsNearring.zero
d_zero_1708 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2040
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Integer.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1714 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1714 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1720 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1726 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2262 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.assoc
d_assoc_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1736 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.comm
d_comm_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1738 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1740 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1740 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.identity
d_identity_1746 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
               (coe v0))))
-- Data.Integer.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_1752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
      (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1760 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_1760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
         (coe v0))
-- Data.Integer.Properties._.IsNonAssociativeRing.isMagma
d_isMagma_1766 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1766 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.isMonoid
d_isMonoid_1768 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_1768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
            (coe v0)))
-- Data.Integer.Properties._.IsNonAssociativeRing.isSemigroup
d_isSemigroup_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
               (coe v0))))
-- Data.Integer.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1774 = erased
-- Data.Integer.Properties._.IsNonAssociativeRing.inverse
d_inverse_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
            (coe v0)))
-- Data.Integer.Properties._.IsNonAssociativeRing.distrib
d_distrib_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1782 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2264 (coe v0)
-- Data.Integer.Properties._.IsNonAssociativeRing.isEquivalence
d_isEquivalence_1788 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1788 v0
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
-- Data.Integer.Properties._.IsNonAssociativeRing.setoid
d_setoid_1796 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1796 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_1796 v5
du_setoid_1796 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1796 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Data.Integer.Properties._.IsNonAssociativeRing.zero
d_zero_1806 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1806 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2266 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1814 = erased
-- Data.Integer.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1820 = erased
-- Data.Integer.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0))
-- Data.Integer.Properties._.IsQuasigroup.isMagma
d_isMagma_1828 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1828 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1832 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1832 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2796 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1842 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2798 (coe v0)
-- Data.Integer.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1854 = erased
-- Data.Integer.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1862 = erased
-- Data.Integer.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1864 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1864 = erased
-- Data.Integer.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1870 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1870 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.assoc
d_assoc_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1882 = erased
-- Data.Integer.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1884 = erased
-- Data.Integer.Properties._.IsQuasiring.identity
d_identity_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.isMagma
d_isMagma_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)))
-- Data.Integer.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1898 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_1900 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Integer.Properties._.IsQuasiring.distrib
d_distrib_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1904 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2038 (coe v0)
-- Data.Integer.Properties._.IsQuasiring.isEquivalence
d_isEquivalence_1914 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1914 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))))
-- Data.Integer.Properties._.IsQuasiring.setoid
d_setoid_1922 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1922 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_1922 v4
du_setoid_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1922 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Structures.du_setoid_168
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v2))))
-- Data.Integer.Properties._.IsQuasiring.zero
d_zero_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1928 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2040 (coe v0)
-- Data.Integer.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1936 = erased
-- Data.Integer.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1942 = erased
-- Data.Integer.Properties._.IsRightBolLoop.identity
d_identity_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1948 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Integer.Properties._.IsRightBolLoop.isEquivalence
d_isEquivalence_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe
            MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
            (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))))
-- Data.Integer.Properties._.IsRightBolLoop.isLoop
d_isLoop_1956 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1956 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)
-- Data.Integer.Properties._.IsRightBolLoop.isMagma
d_isMagma_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Integer.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.rightBol
d_rightBol_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1974 = erased
-- Data.Integer.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_1976 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Integer.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_1988 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1988 = erased
-- Data.Integer.Properties._.IsRing.*-assoc
d_'42''45'assoc_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1998 = erased
-- Data.Integer.Properties._.IsRing.*-cong
d_'42''45'cong_2000 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2000 = erased
-- Data.Integer.Properties._.IsRing.*-identity
d_'42''45'identity_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2506 (coe v0)
-- Data.Integer.Properties._.IsRing.assoc
d_assoc_2018 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2018 = erased
-- Data.Integer.Properties._.IsRing.comm
d_comm_2020 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2020 = erased
-- Data.Integer.Properties._.IsRing.∙-cong
d_'8729''45'cong_2022 ::
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
d_'8729''45'cong_2022 = erased
-- Data.Integer.Properties._.IsRing.identity
d_identity_2028 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2028 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_identity_2028 v5
du_identity_2028 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
               (coe v0))))
-- Data.Integer.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2034 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
      (coe v0)
-- Data.Integer.Properties._.IsRing.isGroup
d_isGroup_2042 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2042 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isGroup_2042 v5
du_isGroup_2042 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
du_isGroup_2042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
         (coe v0))
-- Data.Integer.Properties._.IsRing.isMagma
d_isMagma_2048 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2048 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMagma_2048 v5
du_isMagma_2048 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_2048 v0
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
-- Data.Integer.Properties._.IsRing.isMonoid
d_isMonoid_2050 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2050 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isMonoid_2050 v5
du_isMonoid_2050 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
du_isMonoid_2050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
            (coe v0)))
-- Data.Integer.Properties._.IsRing.isSemigroup
d_isSemigroup_2052 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2052 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isSemigroup_2052 v5
du_isSemigroup_2052 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_2052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
               (coe v0))))
-- Data.Integer.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2056 ::
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
d_'8315''185''45'cong_2056 = erased
-- Data.Integer.Properties._.IsRing.inverse
d_inverse_2058 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2058 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_inverse_2058 v5
du_inverse_2058 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2058 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
            (coe v0)))
-- Data.Integer.Properties._.IsRing.distrib
d_distrib_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2064 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2508 (coe v0)
-- Data.Integer.Properties._.IsRing.isEquivalence
d_isEquivalence_2070 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2070 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isEquivalence_2070 v5
du_isEquivalence_2070 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2070 v0
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
-- Data.Integer.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2076 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
d_isRingWithoutOne_2076 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510 v5
-- Data.Integer.Properties._.IsRing.setoid
d_setoid_2088 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2088 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_2088 v5
du_setoid_2088 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2088 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
                 (coe v1) in
       coe
         (let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_168
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v5)))))))
-- Data.Integer.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2108 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2108 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2110 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2110 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.assoc
d_assoc_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2120 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.comm
d_comm_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2122 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2124 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2124 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.identity
d_identity_2130 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
               (coe v0))))
-- Data.Integer.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2136 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
      (coe v0)
-- Data.Integer.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
         (coe v0))
-- Data.Integer.Properties._.IsRingWithoutOne.isMagma
d_isMagma_2150 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2150 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.isMonoid
d_isMonoid_2152 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
            (coe v0)))
-- Data.Integer.Properties._.IsRingWithoutOne.isSemigroup
d_isSemigroup_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_992
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
               (coe v0))))
-- Data.Integer.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2158 = erased
-- Data.Integer.Properties._.IsRingWithoutOne.inverse
d_inverse_2160 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2160 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_992
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
            (coe v0)))
-- Data.Integer.Properties._.IsRingWithoutOne.distrib
d_distrib_2166 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2166 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2138 (coe v0)
-- Data.Integer.Properties._.IsRingWithoutOne.isEquivalence
d_isEquivalence_2172 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2172 v0
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
-- Data.Integer.Properties._.IsRingWithoutOne.setoid
d_setoid_2180 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2180 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2180 v4
du_setoid_2180 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2180 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
              (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Data.Integer.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2198 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0))
-- Data.Integer.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2200 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2200 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0)
-- Data.Integer.Properties._.IsSelectiveMagma.sel
d_sel_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2208 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0)
-- Data.Integer.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2216 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2216 = erased
-- Data.Integer.Properties._.IsSemigroup.assoc
d_assoc_2224 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2224 = erased
-- Data.Integer.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0))
-- Data.Integer.Properties._.IsSemigroup.isMagma
d_isMagma_2228 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2228 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0)
-- Data.Integer.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2242 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2242 = erased
-- Data.Integer.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2250 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0))
-- Data.Integer.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2252 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2252 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0)
-- Data.Integer.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2260 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_374 (coe v0)
-- Data.Integer.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2272 = erased
-- Data.Integer.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2280 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2280 = erased
-- Data.Integer.Properties._.IsSemiring.*-cong
d_'42''45'cong_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2282 = erased
-- Data.Integer.Properties._.IsSemiring.*-identity
d_'42''45'identity_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.assoc
d_assoc_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2300 = erased
-- Data.Integer.Properties._.IsSemiring.comm
d_comm_2302 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2302 = erased
-- Data.Integer.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2304 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2304 = erased
-- Data.Integer.Properties._.IsSemiring.identity
d_identity_2310 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2310 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v0))))
-- Data.Integer.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.isMagma
d_isMagma_2322 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2322 v0
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
-- Data.Integer.Properties._.IsSemiring.isMonoid
d_isMonoid_2324 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
            (coe v0)))
-- Data.Integer.Properties._.IsSemiring.isSemigroup
d_isSemigroup_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
               (coe v0))))
-- Data.Integer.Properties._.IsSemiring.distrib
d_distrib_2330 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Integer.Properties._.IsSemiring.isEquivalence
d_isEquivalence_2336 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2336 v0
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
-- Data.Integer.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe v0)
-- Data.Integer.Properties._.IsSemiring.setoid
d_setoid_2350 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2350 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2350 v4
du_setoid_2350 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2350 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
              (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_168
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v4))))))
-- Data.Integer.Properties._.IsSemiring.zero
d_zero_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2356 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1434 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2364 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2364 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2366 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2372 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2372 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2384 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2386 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2388 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2388 = erased
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.identity
d_identity_2394 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
d_isMagma_2406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_664
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
               (coe v0))))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2408 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
d_isSemigroup_2410 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_2410 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_664
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
            (coe v0)))
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2414 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1344 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
d_isEquivalence_2420 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2420 v0
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
-- Data.Integer.Properties._.IsSemiringWithoutAnnihilatingZero.setoid
d_setoid_2428 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2428 ~v0 ~v1 ~v2 ~v3 v4 = du_setoid_2428 v4
du_setoid_2428 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2428 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2440 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2440 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2442 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.comm
d_comm_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2452 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe v0))
-- Data.Integer.Properties._.IsSemiringWithoutOne.Carrier
d_Carrier_2462 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 -> ()
d_Carrier_2462 = erased
-- Data.Integer.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2464 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2464 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1170 (coe v0)
-- Data.Integer.Properties._.IsSemiringWithoutOne.setoid
d_setoid_2478 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  Integer ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2478 ~v0 ~v1 ~v2 v3 = du_setoid_2478 v3
du_setoid_2478 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2478 v0
  = let v1
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
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
-- Data.Integer.Properties._.IsSemiringWithoutOne.zero
d_zero_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1172 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.identity
d_identity_2492 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2492 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_572 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2498 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2498 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0))
-- Data.Integer.Properties._.IsUnitalMagma.isMagma
d_isMagma_2500 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2500 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0)
-- Data.Integer.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2514 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2514 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₀
d_Homomorphic'8320'_2522 ::
  (Integer -> Integer) -> Integer -> Integer -> ()
d_Homomorphic'8320'_2522 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₁
d_Homomorphic'8321'_2524 ::
  (Integer -> Integer) ->
  (Integer -> Integer) -> (Integer -> Integer) -> ()
d_Homomorphic'8321'_2524 = erased
-- Data.Integer.Properties.ℤtoℕ.Homomorphic₂
d_Homomorphic'8322'_2526 ::
  (Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Homomorphic'8322'_2526 = erased
-- Data.Integer.Properties.ℤtoℕ.Morphism
d_Morphism_2528 :: ()
d_Morphism_2528 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₀
d_Homomorphic'8320'_2532 ::
  (Integer -> Integer) -> Integer -> Integer -> ()
d_Homomorphic'8320'_2532 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₁
d_Homomorphic'8321'_2534 ::
  (Integer -> Integer) ->
  (Integer -> Integer) -> (Integer -> Integer) -> ()
d_Homomorphic'8321'_2534 = erased
-- Data.Integer.Properties.ℕtoℤ.Homomorphic₂
d_Homomorphic'8322'_2536 ::
  (Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Homomorphic'8322'_2536 = erased
-- Data.Integer.Properties.ℕtoℤ.Morphism
d_Morphism_2538 :: ()
d_Morphism_2538 = erased
-- Data.Integer.Properties.+-injective
d_'43''45'injective_2556 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'injective_2556 = erased
-- Data.Integer.Properties.-[1+-injective
d_'45''91'1'43''45'injective_2558 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''91'1'43''45'injective_2558 = erased
-- Data.Integer.Properties.+[1+-injective
d_'43''91'1'43''45'injective_2560 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''91'1'43''45'injective_2560 = erased
-- Data.Integer.Properties._≟_
d__'8799'__2562 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2562 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                  erased
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v0) (coe v1))
            _ -> coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                          erased
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v2)
                             (coe v3))))
-- Data.Integer.Properties.≡-setoid
d_'8801''45'setoid_2580 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2580
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Integer.Properties.≡-decSetoid
d_'8801''45'decSetoid_2582 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2582
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2562)
-- Data.Integer.Properties.drop‿+≤+
d_drop'8255''43''8804''43'_2584 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''43''8804''43'_2584 ~v0 ~v1 v2
  = du_drop'8255''43''8804''43'_2584 v2
du_drop'8255''43''8804''43'_2584 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''43''8804''43'_2584 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿-≤-
d_drop'8255''45''8804''45'_2588 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''45''8804''45'_2588 ~v0 ~v1 v2
  = du_drop'8255''45''8804''45'_2588 v2
du_drop'8255''45''8804''45'_2588 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''45''8804''45'_2588 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤-reflexive
d_'8804''45'reflexive_2592 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'reflexive_2592 v0 ~v1 ~v2
  = du_'8804''45'reflexive_2592 v0
du_'8804''45'reflexive_2592 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8804''45'reflexive_2592 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
            (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646 (coe v0))
      _ -> let v1 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646 (coe v1)))
-- Data.Integer.Properties.≤-refl
d_'8804''45'refl_2598 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'refl_2598 v0 = coe du_'8804''45'reflexive_2592 (coe v0)
-- Data.Integer.Properties.≤-trans
d_'8804''45'trans_2600 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'trans_2600 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_2600 v3 v4
du_'8804''45'trans_2600 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8804''45'trans_2600 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2654 (coe v7)
                       (coe v4))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2654 (coe v4)
                       (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤-antisym
d_'8804''45'antisym_2614 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_2614 = erased
-- Data.Integer.Properties.≤-total
d_'8804''45'total_2624 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_2624 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Sum.Base.du_map_84
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48)
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48)
                  (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_2660
                     (coe v0) (coe v1))
            _ -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                   (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                      (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Sum.Base.du_map_84
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34)
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34)
                          (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'total_2660
                             (coe v3) (coe v2))))
-- Data.Integer.Properties._≤?_
d__'8804''63'__2642 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__2642 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48)
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v0)
                     (coe v1))
            _ -> coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                      (coe
                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                         (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40))
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.≤-irrelevant
d_'8804''45'irrelevant_2660 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_2660 = erased
-- Data.Integer.Properties.≤-isPreorder
d_'8804''45'isPreorder_2670 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_2670
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_2592 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_2600 v3 v4)
-- Data.Integer.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_2672 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_2672
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8307
      (coe d_'8804''45'isPreorder_2670) (coe d_'8804''45'total_2624)
-- Data.Integer.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_2674 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_2674
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_2670) erased
-- Data.Integer.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_2676 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_2676
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe d_'8804''45'isPartialOrder_2674) (coe d_'8804''45'total_2624)
-- Data.Integer.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_2678 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_2678
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe d_'8804''45'isTotalOrder_2676) (coe d__'8799'__2562)
      (coe d__'8804''63'__2642)
-- Data.Integer.Properties.≤-preorder
d_'8804''45'preorder_2680 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_2680
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      d_'8804''45'isPreorder_2670
-- Data.Integer.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_2682 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder_2682
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4543
      d_'8804''45'isTotalPreorder_2672
-- Data.Integer.Properties.≤-poset
d_'8804''45'poset_2684 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314
d_'8804''45'poset_2684
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_6347
      d_'8804''45'isPartialOrder_2674
-- Data.Integer.Properties.≤-totalOrder
d_'8804''45'totalOrder_2686 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_764
d_'8804''45'totalOrder_2686
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_15657
      d_'8804''45'isTotalOrder_2676
-- Data.Integer.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_2688 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_2688
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      d_'8804''45'isDecTotalOrder_2678
-- Data.Integer.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_2690 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''7495''8658''8804'_2690 v0 v1 ~v2
  = du_'8804''7495''8658''8804'_2690 v0 v1
du_'8804''7495''8658''8804'_2690 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8804''7495''8658''8804'_2690 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
               (coe v0))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
             _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                          (coe v2)))
-- Data.Integer.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_2698 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> AgdaAny
d_'8804''8658''8804''7495'_2698 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_2698 v2
du_'8804''8658''8804''7495'_2698 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 -> AgdaAny
du_'8804''8658''8804''7495'_2698 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2628
             (coe v3)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''7495'_2628
             (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿+<+
d_drop'8255''43''60''43'_2704 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''43''60''43'_2704 ~v0 ~v1 v2
  = du_drop'8255''43''60''43'_2704 v2
du_drop'8255''43''60''43'_2704 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''43''60''43'_2704 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.drop‿-<-
d_drop'8255''45''60''45'_2708 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_drop'8255''45''60''45'_2708 ~v0 ~v1 v2
  = du_drop'8255''45''60''45'_2708 v2
du_drop'8255''45''60''45'_2708 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_drop'8255''45''60''45'_2708 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+≮0
d_'43''8814'0_2712 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''8814'0_2712 = erased
-- Data.Integer.Properties.+≮-
d_'43''8814''45'_2714 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''8814''45'_2714 = erased
-- Data.Integer.Properties.<⇒≤
d_'60''8658''8804'_2716 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'60''8658''8804'_2716 ~v0 ~v1 v2 = du_'60''8658''8804'_2716 v2
du_'60''8658''8804'_2716 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'60''8658''8804'_2716 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v3
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 (coe v3))
      MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v3
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<⇒≢
d_'60''8658''8802'_2722 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_2722 = erased
-- Data.Integer.Properties.<⇒≱
d_'60''8658''8817'_2728 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8817'_2728 = erased
-- Data.Integer.Properties.≤⇒≯
d_'8804''8658''8815'_2734 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''8658''8815'_2734 = erased
-- Data.Integer.Properties.≰⇒>
d_'8816''8658''62'_2744 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8816''8658''62'_2744 v0 v1 ~v2 = du_'8816''8658''62'_2744 v0 v1
du_'8816''8658''62'_2744 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'8816''8658''62'_2744 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2758 (coe v0)
                     (coe v1))
            _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2758 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.≮⇒≥
d_'8814''8658''8805'_2770 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8814''8658''8805'_2770 v0 v1 ~v2
  = du_'8814''8658''8805'_2770 v0 v1
du_'8814''8658''8805'_2770 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'8814''8658''8805'_2770 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2772
                     (coe v0) (coe v1))
            _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2772
                             (coe v3) (coe v2))))
-- Data.Integer.Properties.>⇒≰
d_'62''8658''8816'_2796 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''8658''8816'_2796 = erased
-- Data.Integer.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_2798 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8804''8743''8802''8658''60'_2798 v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_2798 v0 v1 v2
du_'8804''8743''8802''8658''60'_2798 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'8804''8743''8802''8658''60'_2798 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
        -> let v6 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2788
                   (coe v6) (coe v5)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2788
                (coe v1) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_2810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  (MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_2810 = erased
-- Data.Integer.Properties.<-irrefl
d_'60''45'irrefl_2816 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_2816 = erased
-- Data.Integer.Properties.<-asym
d_'60''45'asym_2822 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_2822 = erased
-- Data.Integer.Properties.≤-<-trans
d_'8804''45''60''45'trans_2828 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8804''45''60''45'trans_2828 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45''60''45'trans_2828 v3 v4
du_'8804''45''60''45'trans_2828 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'8804''45''60''45'trans_2828 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2862
                       (coe v7) (coe v4))
             MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856
                       (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<-≤-trans
d_'60''45''8804''45'trans_2842 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'60''45''8804''45'trans_2842 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45''8804''45'trans_2842 v3 v4
du_'60''45''8804''45'trans_2842 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'60''45''8804''45'trans_2842 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856
                       (coe v7) (coe v4))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
        -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v7
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2862
                       (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.<-trans
d_'60''45'trans_2856 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'60''45'trans_2856 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45'trans_2856 v3 v4
du_'60''45'trans_2856 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'60''45'trans_2856 v0 v1
  = coe
      du_'8804''45''60''45'trans_2828
      (coe du_'60''8658''8804'_2716 (coe v0)) (coe v1)
-- Data.Integer.Properties.<-cmp
d_'60''45'cmp_2862 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_2862 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          let v2
                = coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                    (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64) in
          coe
            (case coe v0 of
               0 -> case coe v1 of
                      0 -> coe
                             MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 erased
                      _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                          coe
                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                            (coe
                               MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                               (coe
                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                      _ -> coe v2
               _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                    coe
                      (case coe v1 of
                         0 -> coe
                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                         _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                             let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                             coe
                               (let v5
                                      = coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                          erased
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe eqInt (coe v0) (coe v1))
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                (coe eqInt (coe v0) (coe v1)))) in
                                coe
                                  (case coe v5 of
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                                       -> if coe v6
                                            then coe
                                                   seq (coe v7)
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                                                      erased)
                                            else (let v8
                                                        = seq
                                                            (coe v7)
                                                            (let v8 = ltInt (coe v0) (coe v1) in
                                                             coe
                                                               (if coe v8
                                                                  then coe
                                                                         seq
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                                            (coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_2586
                                                                               (coe v3)))
                                                                  else coe
                                                                         seq
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                            (coe v8))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                                            (coe
                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2788
                                                                               (coe v3)
                                                                               (coe
                                                                                  MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2772
                                                                                  (coe v3)
                                                                                  (coe v4)))))) in
                                                  coe
                                                    (case coe v8 of
                                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v9
                                                         -> coe
                                                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                                    v9))
                                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v10
                                                         -> coe
                                                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                                                              erased
                                                       MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v11
                                                         -> coe
                                                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                              (coe
                                                                 MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                                                                    v11))
                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                         _ -> coe
                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)))
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                      (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (let v4
                              = coe
                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                  erased
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe eqInt (coe v0) (coe v1))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                        (coe eqInt (coe v0) (coe v1)))) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                               -> if coe v5
                                    then coe
                                           seq (coe v6)
                                           (coe
                                              MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                                              erased)
                                    else (let v7
                                                = seq
                                                    (coe v6)
                                                    (let v7 = ltInt (coe v1) (coe v0) in
                                                     coe
                                                       (if coe v7
                                                          then coe
                                                                 seq
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                    (coe v7))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_2586
                                                                       (coe v2)))
                                                          else coe
                                                                 seq
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                    (coe v7))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                                    (coe
                                                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2788
                                                                       (coe v2)
                                                                       (coe
                                                                          MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2772
                                                                          (coe v2) (coe v3)))))) in
                                          coe
                                            (case coe v7 of
                                               MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v8
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                      (coe
                                                         MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                                                         v8)
                                               MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180
                                                      erased
                                               MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v10
                                                 -> coe
                                                      MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                      (coe
                                                         MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                                                         v10)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                             _ -> MAlonzo.RTE.mazUnreachableError)))
-- Data.Integer.Properties._<?_
d__'60''63'__2952 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__2952 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                  (coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72)
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'60''63'__2900 (coe v0)
                     (coe v1))
            _ -> coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> let v2 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v1 of
                _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                    coe
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                      (coe
                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                         (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64))
                _ -> let v3 = subInt (coe (-1 :: Integer)) (coe v1) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                          (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d__'60''63'__2900 (coe v3)
                             (coe v2))))
-- Data.Integer.Properties.<-irrelevant
d_'60''45'irrelevant_2970 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_2970 = erased
-- Data.Integer.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_2980 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_2980
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2856 v3 v4)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
-- Data.Integer.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_2986 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_2986
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24885
      (coe d_'60''45'isStrictPartialOrder_2980) (coe d_'60''45'cmp_2862)
-- Data.Integer.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_2988 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_2988
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder_2980
-- Data.Integer.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_2990 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_2990
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_20945
      d_'60''45'isStrictTotalOrder_2986
-- Data.Integer.Properties.i≮i
d_i'8814'i_2992 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_i'8814'i_2992 = erased
-- Data.Integer.Properties.>-irrefl
d_'62''45'irrefl_2994 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'62''45'irrefl_2994 = erased
-- Data.Integer.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__3000 a0 a1 = ()
-- Data.Integer.Properties.≤-Reasoning._._∎
d__'8718'_3002 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3002
  = let v0 = d_'8804''45'isPreorder_2670 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Integer.Properties.≤-Reasoning._.<-go
d_'60''45'go_3004 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3004
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2856 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45''8804''45'trans_2842 v3 v4)
-- Data.Integer.Properties.≤-Reasoning._.IsEquality
d_IsEquality_3006 a0 a1 a2 = ()
-- Data.Integer.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_3008 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3008 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Integer.Properties.≤-Reasoning._.IsStrict
d_IsStrict_3010 a0 a1 a2 = ()
-- Data.Integer.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_3012 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3012 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3014 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_begin__3014
  = let v0 = d_'8804''45'isPreorder_2670 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_2716 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Integer.Properties.≤-Reasoning._.begin-contradiction_
d_begin'45'contradiction__3016 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3016 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3018 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3018 = erased
-- Data.Integer.Properties.≤-Reasoning._.begin_
d_begin__3020 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_begin__3020
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Integer.Properties.≤-Reasoning._.eqRelation
d_eqRelation_3022 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3022
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Integer.Properties.≤-Reasoning._.extractEquality
d_extractEquality_3026 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3026 = erased
-- Data.Integer.Properties.≤-Reasoning._.extractStrict
d_extractStrict_3028 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_extractStrict_3028 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Integer.Properties.≤-Reasoning._.start
d_start_3036 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_start_3036
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_2670)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_2716 v2)
-- Data.Integer.Properties.≤-Reasoning._.step-<
d_step'45''60'_3038 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3038
  = let v0 = \ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_2856 v3 v4 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144 in
       coe
         (let v2
                = \ v2 v3 v4 v5 v6 -> coe du_'60''45''8804''45'trans_2842 v5 v6 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Integer.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_3040 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3040
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡-∣
d_step'45''8801''45''8739'_3042 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3042 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3042 v2
du_step'45''8801''45''8739'_3042 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3042 v0 = coe v0
-- Data.Integer.Properties.≤-Reasoning._.step-≡-⟨
d_step'45''8801''45''10216'_3044 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3044
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡-⟩
d_step'45''8801''45''10217'_3046 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3046
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_3048 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3048
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Integer.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_3050 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3050
  = let v0 = d_'8804''45'isPreorder_2670 in
    coe
      (let v1
             = \ v1 v2 v3 v4 v5 -> coe du_'8804''45''60''45'trans_2828 v4 v5 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Integer.Properties.≤-Reasoning._.stop
d_stop_3052 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3052
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_2670)
-- Data.Integer.Properties.≤-Reasoning._.strictRelation
d_strictRelation_3056 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3056
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Integer.Properties.≤-Reasoning._.≈-go
d_'8776''45'go_3058 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3058
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_2670)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
-- Data.Integer.Properties.≤-Reasoning._.≡-go
d_'8801''45'go_3060 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3060 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3060 v4
du_'8801''45'go_3060 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3060 v0 = coe v0
-- Data.Integer.Properties.≤-Reasoning._.≤-go
d_'8804''45'go_3062 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3062
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_2670)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45''60''45'trans_2828 v3 v4)
-- Data.Integer.Properties.positive⁻¹
d_positive'8315''185'_3082 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_positive'8315''185'_3082 ~v0 ~v1 = du_positive'8315''185'_3082
du_positive'8315''185'_3082 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_positive'8315''185'_3082
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Integer.Properties.negative⁻¹
d_negative'8315''185'_3088 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_negative'8315''185'_3088 ~v0 ~v1 = du_negative'8315''185'_3088
du_negative'8315''185'_3088 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_negative'8315''185'_3088
  = coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
-- Data.Integer.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_3094 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_nonPositive'8315''185'_3094 v0 ~v1
  = du_nonPositive'8315''185'_3094 v0
du_nonPositive'8315''185'_3094 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_nonPositive'8315''185'_3094 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
-- Data.Integer.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_3100 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_nonNegative'8315''185'_3100 ~v0 ~v1
  = du_nonNegative'8315''185'_3100
du_nonNegative'8315''185'_3100 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_nonNegative'8315''185'_3100
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Integer.Properties.negative<positive
d_negative'60'positive_3108 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_negative'60'positive_3108 ~v0 ~v1 ~v2 ~v3
  = du_negative'60'positive_3108
du_negative'60'positive_3108 ::
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_negative'60'positive_3108
  = coe
      du_'60''45'trans_2856 (coe du_negative'8315''185'_3088)
      (coe du_positive'8315''185'_3082)
-- Data.Integer.Properties.neg-involutive
d_neg'45'involutive_3116 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'involutive_3116 = erased
-- Data.Integer.Properties.neg-injective
d_neg'45'injective_3122 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'injective_3122 = erased
-- Data.Integer.Properties.neg-≤-pos
d_neg'45''8804''45'pos_3138 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45''8804''45'pos_3138 v0 ~v1
  = du_neg'45''8804''45'pos_3138 v0
du_neg'45''8804''45'pos_3138 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_neg'45''8804''45'pos_3138 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
-- Data.Integer.Properties.neg-mono-≤
d_neg'45'mono'45''8804'_3142 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45'mono'45''8804'_3142 ~v0 v1 v2
  = du_neg'45'mono'45''8804'_3142 v1 v2
du_neg'45'mono'45''8804'_3142 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_neg'45'mono'45''8804'_3142 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe du_neg'45''8804''45'pos_3138 (coe v0)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe du_neg'45''8804''45'pos_3138 (coe v0)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v7
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-cancel-≤
d_neg'45'cancel'45''8804'_3148 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45'cancel'45''8804'_3148 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            0 -> coe
                   seq (coe v2)
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
            _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                case coe v2 of
                  MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
                    -> coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                         (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                  _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe
                   seq (coe v2)
                   (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
      _ -> case coe v2 of
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
               -> case coe v5 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                      -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-mono-<
d_neg'45'mono'45''60'_3172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_neg'45'mono'45''60'_3172 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v2 of
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v5
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                   (coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70 (coe v5))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v1 of
             0 -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                          (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
             _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                 coe
                   seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
             _ -> case coe v2 of
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v5
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.neg-cancel-<
d_neg'45'cancel'45''60'_3186 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_neg'45'cancel'45''60'_3186 v0 v1 v2
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            0 -> coe
                   seq (coe v2)
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
            _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                case coe v2 of
                  MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v5
                    -> coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                         (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                  _ -> MAlonzo.RTE.mazUnreachableError
            _ -> coe
                   seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
      _ -> case coe v2 of
             MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v5
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70 (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.∣i∣≡0⇒i≡0
d_'8739'i'8739''8801'0'8658'i'8801'0_3210 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'8739''8801'0'8658'i'8801'0_3210 = erased
-- Data.Integer.Properties.∣-i∣≡∣i∣
d_'8739''45'i'8739''8801''8739'i'8739'_3214 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'i'8739''8801''8739'i'8739'_3214 = erased
-- Data.Integer.Properties.0≤i⇒+∣i∣≡i
d_0'8804'i'8658''43''8739'i'8739''8801'i_3220 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'i'8658''43''8739'i'8739''8801'i_3220 = erased
-- Data.Integer.Properties.+∣i∣≡i⇒0≤i
d_'43''8739'i'8739''8801'i'8658'0'8804'i_3222 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''8739'i'8739''8801'i'8658'0'8804'i_3222 ~v0 ~v1
  = du_'43''8739'i'8739''8801'i'8658'0'8804'i_3222
du_'43''8739'i'8739''8801'i'8658'0'8804'i_3222 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'43''8739'i'8739''8801'i'8658'0'8804'i_3222
  = coe
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
-- Data.Integer.Properties.+∣i∣≡i⊎+∣i∣≡-i
d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_3228 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_3228 v0
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Integer.Properties.∣m⊝n∣≤m⊔n
d_'8739'm'8861'n'8739''8804'm'8852'n_3238 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'8861'n'8739''8804'm'8852'n_3238 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    coe
      (if coe v2
         then coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                   (\ v3 v4 v5 ->
                      coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 v5))
                (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d_'45'__252
                      (coe subInt (coe v1) (coe v0))))
                (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v3 v4 v5 v6 v7 -> v7)
                   (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d_'45'__252
                         (coe subInt (coe v1) (coe v0))))
                   (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                      (coe subInt (coe v1) (coe v0)))
                   (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v6
                              v7))
                      (subInt (coe v1) (coe v0)) v1
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                            (\ v3 v4 v5 v6 v7 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v6
                                 v7))
                         v1 (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                         (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680))
                            (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1)))
                         (let v3
                                = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_2692 in
                          coe
                            (let v4
                                   = MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4312 in
                             coe
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                                     (coe v3))
                                  (coe
                                     MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                                     (coe v4))
                                  (coe v0) (coe v1)))))
                      (MAlonzo.Code.Data.Nat.Properties.d_m'8760'n'8804'm_4914
                         (coe v1) (coe v0)))
                   erased)
         else coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                   (\ v3 v4 v5 ->
                      coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 v5))
                (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe subInt (coe v0) (coe v1)))
                (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                      (\ v3 v4 v5 v6 v7 ->
                         coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v6
                           v7))
                   (subInt (coe v0) (coe v1)) v0
                   (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                         (\ v3 v4 v5 v6 v7 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v6
                              v7))
                      v0 (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680))
                         (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__204 (coe v0) (coe v1)))
                      (let v3
                             = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'totalPreorder_2692 in
                       coe
                         (let v4
                                = MAlonzo.Code.Data.Nat.Properties.d_'8852''45'operator_4312 in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
                               (coe
                                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
                                  (coe v3))
                               (coe
                                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
                                  (coe v4))
                               (coe v0) (coe v1)))))
                   (MAlonzo.Code.Data.Nat.Properties.d_m'8760'n'8804'm_4914
                      (coe v0) (coe v1))))
-- Data.Integer.Properties.∣i+j∣≤∣i∣+∣j∣
d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3268 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3268 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
                (coe
                   MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe (0 :: Integer))
                      (coe v1))))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v1)))
            _ -> coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                      (\ v2 v3 v4 ->
                         coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 v4))
                   (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v1)))
                   (addInt
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                         (\ v2 v3 v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v5
                              v6))
                      (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)
                            (coe subInt (coe (0 :: Integer)) (coe v1))))
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__204
                         (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1)))
                      (addInt
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                            (\ v2 v3 v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v5
                                 v6))
                         (MAlonzo.Code.Data.Nat.Base.d__'8852'__204
                            (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1)))
                         (subInt (coe v0) (coe v1))
                         (addInt
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680))
                            (coe subInt (coe v0) (coe v1)))
                         (MAlonzo.Code.Data.Nat.Properties.d_m'8852'n'8804'm'43'n_4702
                            (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1))))
                      (d_'8739'm'8861'n'8739''8804'm'8852'n_3238
                         (coe v0) (coe subInt (coe (0 :: Integer)) (coe v1))))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                      (\ v2 v3 v4 ->
                         coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 v4))
                   (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v1)))
                   (addInt
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                         (\ v2 v3 v4 v5 v6 ->
                            coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v5
                              v6))
                      (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1)
                            (coe subInt (coe (0 :: Integer)) (coe v0))))
                      (MAlonzo.Code.Data.Nat.Base.d__'8852'__204
                         (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0)))
                      (addInt
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
                            (\ v2 v3 v4 v5 v6 ->
                               coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v5
                                 v6))
                         (MAlonzo.Code.Data.Nat.Base.d__'8852'__204
                            (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0)))
                         (subInt (coe v1) (coe v0))
                         (addInt
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                            (\ v2 v3 v4 v5 v6 -> v6) (subInt (coe v1) (coe v0))
                            (subInt (coe v1) (coe v0))
                            (addInt
                               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680))
                               (coe subInt (coe v1) (coe v0)))
                            erased)
                         (MAlonzo.Code.Data.Nat.Properties.d_m'8852'n'8804'm'43'n_4702
                            (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0))))
                      (d_'8739'm'8861'n'8739''8804'm'8852'n_3238
                         (coe v1) (coe subInt (coe (0 :: Integer)) (coe v0))))
             _ -> coe
                    MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
                    (coe subInt (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1))
-- Data.Integer.Properties.∣i-j∣≤∣i∣+∣j∣
d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_3306 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_3306 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
         (\ v2 v3 v4 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724 v4))
      (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1)))
      (addInt
         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
         (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680)
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2856 v5
                 v6))
         (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1)))
         (addInt
            (coe
               MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
         (addInt
            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
            (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6)
            (addInt
               (coe
                  MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
            (addInt
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
            (addInt
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2680))
               (coe
                  addInt
                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))))
            erased)
         (d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3268
            (coe v0)
            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))))
-- Data.Integer.Properties.◃-inverse
d_'9667''45'inverse_3320 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'inverse_3320 = erased
-- Data.Integer.Properties.◃-cong
d_'9667''45'cong_3326 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'cong_3326 = erased
-- Data.Integer.Properties.+◃n≡+n
d_'43''9667'n'8801''43'n_3342 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''9667'n'8801''43'n_3342 = erased
-- Data.Integer.Properties.-◃n≡-n
d_'45''9667'n'8801''45'n_3346 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''9667'n'8801''45'n_3346 = erased
-- Data.Integer.Properties.sign-◃
d_sign'45''9667'_3354 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''9667'_3354 = erased
-- Data.Integer.Properties.abs-◃
d_abs'45''9667'_3360 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''9667'_3360 = erased
-- Data.Integer.Properties.signᵢ◃∣i∣≡i
d_sign'7522''9667''8739'i'8739''8801'i_3368 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'7522''9667''8739'i'8739''8801'i_3368 = erased
-- Data.Integer.Properties.sign-cong
d_sign'45'cong_3378 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45'cong_3378 = erased
-- Data.Integer.Properties.sign-cong′
d_sign'45'cong'8242'_3394 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sign'45'cong'8242'_3394 v0 v1 ~v2 ~v3 ~v4
  = du_sign'45'cong'8242'_3394 v0 v1
du_sign'45'cong'8242'_3394 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sign'45'cong'8242'_3394 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> let v2
                 = coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased in
           coe (coe seq (coe v0) (coe v2))
-- Data.Integer.Properties.abs-cong
d_abs'45'cong_3428 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45'cong_3428 = erased
-- Data.Integer.Properties.∣s◃m∣*∣t◃n∣≡m*n
d_'8739's'9667'm'8739''42''8739't'9667'n'8739''8801'm'42'n_3452 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739's'9667'm'8739''42''8739't'9667'n'8739''8801'm'42'n_3452
  = erased
-- Data.Integer.Properties.+◃-mono-<
d_'43''9667''45'mono'45''60'_3462 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''9667''45'mono'45''60'_3462 v0 ~v1 v2
  = du_'43''9667''45'mono'45''60'_3462 v0 v2
du_'43''9667''45'mono'45''60'_3462 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'43''9667''45'mono'45''60'_3462 v0 v1
  = coe
      seq (coe v0)
      (coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v1)
-- Data.Integer.Properties.+◃-cancel-<
d_'43''9667''45'cancel'45''60'_3474 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'43''9667''45'cancel'45''60'_3474 v0 ~v1 v2
  = du_'43''9667''45'cancel'45''60'_3474 v0 v2
du_'43''9667''45'cancel'45''60'_3474 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'43''9667''45'cancel'45''60'_3474 v0 v1
  = coe
      seq (coe v0)
      (case coe v1 of
         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v4 -> coe v4
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.neg◃-cancel-<
d_neg'9667''45'cancel'45''60'_3488 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_neg'9667''45'cancel'45''60'_3488 ~v0 v1 v2
  = du_neg'9667''45'cancel'45''60'_3488 v1 v2
du_neg'9667''45'cancel'45''60'_3488 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_neg'9667''45'cancel'45''60'_3488 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v4
               -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v4
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.-◃<+◃
d_'45''9667''60''43''9667'_3504 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'45''9667''60''43''9667'_3504 ~v0 v1 ~v2
  = du_'45''9667''60''43''9667'_3504 v1
du_'45''9667''60''43''9667'_3504 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'45''9667''60''43''9667'_3504 v0
  = coe
      seq (coe v0) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
-- Data.Integer.Properties.+◃≮-◃
d_'43''9667''8814''45''9667'_3506 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'43''9667''8814''45''9667'_3506 = erased
-- Data.Integer.Properties.n⊖n≡0
d_n'8854'n'8801'0_3512 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8854'n'8801'0_3512 = erased
-- Data.Integer.Properties.[1+m]⊖[1+n]≡m⊖n
d_'91'1'43'm'93''8854''91'1'43'n'93''8801'm'8854'n_3530 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'1'43'm'93''8854''91'1'43'n'93''8801'm'8854'n_3530 = erased
-- Data.Integer.Properties.⊖-swap
d_'8854''45'swap_3552 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45'swap_3552 = erased
-- Data.Integer.Properties.⊖-≥
d_'8854''45''8805'_3566 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8805'_3566 = erased
-- Data.Integer.Properties.≤-⊖
d_'8804''45''8854'_3594 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45''8854'_3594 = erased
-- Data.Integer.Properties.⊖-≤
d_'8854''45''8804'_3608 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8804'_3608 = erased
-- Data.Integer.Properties.⊖-<
d_'8854''45''60'_3644 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''60'_3644 = erased
-- Data.Integer.Properties.⊖-≰
d_'8854''45''8816'_3646 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8854''45''8816'_3646 = erased
-- Data.Integer.Properties.∣⊖∣-≤
d_'8739''8854''8739''45''8804'_3648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''8804'_3648 = erased
-- Data.Integer.Properties.∣⊖∣-<
d_'8739''8854''8739''45''60'_3660 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''60'_3660 = erased
-- Data.Integer.Properties.∣⊖∣-≰
d_'8739''8854''8739''45''8816'_3672 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8854''8739''45''8816'_3672 = erased
-- Data.Integer.Properties.-m+n≡n⊖m
d_'45'm'43'n'8801'n'8854'm_3678 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'm'43'n'8801'n'8854'm_3678 = erased
-- Data.Integer.Properties.m-n≡m⊖n
d_m'45'n'8801'm'8854'n_3690 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'45'n'8801'm'8854'n_3690 = erased
-- Data.Integer.Properties.-[n⊖m]≡-m+n
d_'45''91'n'8854'm'93''8801''45'm'43'n_3704 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''91'n'8854'm'93''8801''45'm'43'n_3704 = erased
-- Data.Integer.Properties.∣m⊖n∣≡∣n⊖m∣
d_'8739'm'8854'n'8739''8801''8739'n'8854'm'8739'_3738 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'8854'n'8739''8801''8739'n'8854'm'8739'_3738 = erased
-- Data.Integer.Properties.+-cancelˡ-⊖
d_'43''45'cancel'737''45''8854'_3754 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8854'_3754 = erased
-- Data.Integer.Properties.m⊖n≤m
d_m'8854'n'8804'm_3774 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8854'n'8804'm_3774 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_2598
             (coe
                MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)
                (coe (0 :: Integer)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                             (coe d_'8804''45'isPreorder_2670)
                             (\ v4 v5 v6 -> coe du_'60''8658''8804'_2716 v6))
                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0) (coe v1))
                          v0
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                             (\ v4 v5 v6 v7 v8 -> v8)
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0) (coe v1))
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v3) (coe v2))
                             v0
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                   (coe d_'8804''45'isPreorder_2670)
                                   (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2828 v7 v8))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v3) (coe v2))
                                v3 v0
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                      (coe d_'8804''45'isPreorder_2670)
                                      (\ v4 v5 v6 v7 v8 ->
                                         coe du_'8804''45''60''45'trans_2828 v7 v8))
                                   v3 v0 v0
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe d_'8804''45'isPreorder_2670))
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                      (MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2714
                                         (coe v3))))
                                (d_m'8854'n'8804'm_3774 (coe v3) (coe v2)))
                             erased)))
-- Data.Integer.Properties.m⊖n<1+m
d_m'8854'n'60'1'43'm_3792 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_m'8854'n'60'1'43'm_3792 v0 v1
  = coe
      du_'8804''45''60''45'trans_2828
      (coe d_m'8854'n'8804'm_3774 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_m'60'n'43'm_3500 (coe v0)
            (coe
               MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))))
-- Data.Integer.Properties.m⊖1+n<m
d_m'8854'1'43'n'60'm_3804 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_m'8854'1'43'n'60'm_3804 v0 v1 ~v2
  = du_m'8854'1'43'n'60'm_3804 v0 v1
du_m'8854'1'43'n'60'm_3804 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_m'8854'1'43'n'60'm_3804 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v3 = subInt (coe v1) (coe (1 :: Integer)) in
              coe
                (let v4
                       = coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                 coe
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                      (coe v4)
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0) (coe v1))
                      (coe v0)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                         (\ v5 v6 v7 v8 v9 -> v9)
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0) (coe v1))
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2) (coe v3))
                         v0
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                               (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_2856 v8 v9)
                               (coe
                                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                               (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2842 v8 v9))
                            (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2) (coe v3))
                            v0 v0
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_2670))
                               (coe v0))
                            (d_m'8854'n'60'1'43'm_3792 (coe v2) (coe v3)))
                         erased))))
-- Data.Integer.Properties.-1+m<n⊖m
d_'45'1'43'm'60'n'8854'm_3820 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'45'1'43'm'60'n'8854'm_3820 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                       (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646 (coe v0))
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (let v4
                              = coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe v4) (coe subInt (coe (-1 :: Integer)) (coe v0))
                             (coe
                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1) (coe v0))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                   (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_2856 v8 v9)
                                   (coe
                                      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                   (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2842 v8 v9))
                                (subInt (coe (-1 :: Integer)) (coe v0))
                                (subInt (coe (0 :: Integer)) (coe v0))
                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1) (coe v0))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                      (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_2856 v8 v9)
                                      (coe
                                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                      (\ v5 v6 v7 v8 v9 ->
                                         coe du_'60''45''8804''45'trans_2842 v8 v9))
                                   (subInt (coe (0 :: Integer)) (coe v0))
                                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v3) (coe v2))
                                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1) (coe v0))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                      (\ v5 v6 v7 v8 v9 -> v9)
                                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                         (coe v3) (coe v2))
                                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                         (coe v1) (coe v0))
                                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                         (coe v1) (coe v0))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                            (coe d_'8804''45'isPreorder_2670))
                                         (coe
                                            MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1)
                                            (coe v0)))
                                      erased)
                                   (d_'45'1'43'm'60'n'8854'm_3820 (coe v2) (coe v3)))
                                (coe
                                   MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                                   (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
                                      (coe v0)))))))
-- Data.Integer.Properties.-[1+m]≤n⊖m+1
d_'45''91'1'43'm'93''8804'n'8854'm'43'1_3838 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'45''91'1'43'm'93''8804'n'8854'm'43'1_3838 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_2598 (coe subInt (coe (-1 :: Integer)) (coe v0))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe d_'8804''45'isPreorder_2670)
                   (\ v3 v4 v5 -> coe du_'60''8658''8804'_2716 v5))
                (subInt (coe (-1 :: Integer)) (coe v0))
                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                   (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                      (coe d_'8804''45'isPreorder_2670)
                      (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2828 v6 v7))
                   (subInt (coe (-1 :: Integer)) (coe v0))
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2) (coe v0))
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                      (\ v3 v4 v5 v6 v7 -> v7)
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2) (coe v0))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                         (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                         (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe d_'8804''45'isPreorder_2670))
                         (coe
                            MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1)
                            (coe addInt (coe (1 :: Integer)) (coe v0))))
                      erased)
                   (coe
                      du_'60''8658''8804'_2716
                      (coe d_'45'1'43'm'60'n'8854'm_3820 (coe v0) (coe v2)))))
-- Data.Integer.Properties.-1+m≤n⊖m
d_'45'1'43'm'8804'n'8854'm_3854 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'45'1'43'm'8804'n'8854'm_3854 v0 v1
  = coe
      du_'60''8658''8804'_2716
      (coe d_'45'1'43'm'60'n'8854'm_3820 (coe v0) (coe v1))
-- Data.Integer.Properties.0⊖m≤+
d_0'8854'm'8804''43'_3864 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8854'm'8804''43'_3864 v0 ~v1 = du_0'8854'm'8804''43'_3864 v0
du_0'8854'm'8804''43'_3864 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_0'8854'm'8804''43'_3864 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
-- Data.Integer.Properties.sign-⊖-<
d_sign'45''8854''45''60'_3868 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''8854''45''60'_3868 = erased
-- Data.Integer.Properties.sign-⊖-≰
d_sign'45''8854''45''8816'_3880 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'45''8854''45''8816'_3880 = erased
-- Data.Integer.Properties.⊖-monoʳ-≥-≤
d_'8854''45'mono'691''45''8805''45''8804'_3886 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8854''45'mono'691''45''8805''45''8804'_3886 v0 v1 v2 v3
  = case coe v0 of
      0 -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe du_0'8854'm'8804''43'_3864 (coe v1)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       seq (coe v3)
                       (coe
                          d_'8804''45'refl_2598
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0))
                             (\ v5 v6 -> v5) (0 :: Integer) (0 :: Integer)))
                _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v3 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_2670)
                                    (\ v7 v8 v9 -> coe du_'60''8658''8804'_2716 v9))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0))
                                    (\ v7 v8 -> v7) v1 (0 :: Integer))
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                    (\ v7 v8 -> v8)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)) v1
                                    (0 :: Integer))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                    (\ v7 v8 v9 v10 v11 -> v11)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                       (coe v0) (coe v1))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                       (coe v4) (coe v5))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v7 v8 -> v8)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)) v1
                                       (0 :: Integer))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                          (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_2856 v10 v11)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                          (\ v7 v8 v9 v10 v11 ->
                                             coe du_'60''45''8804''45'trans_2842 v10 v11))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v4) (coe v5))
                                       v0
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v7 v8 -> v8)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0))
                                          v1 (0 :: Integer))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                             (coe d_'8804''45'isPreorder_2670))
                                          (coe v0))
                                       (d_m'8854'n'60'1'43'm_3792 (coe v4) (coe v5)))
                                    erased)
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                            -> let v9 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                       (coe d_'8804''45'isPreorder_2670)
                                       (\ v10 v11 v12 -> coe du_'60''8658''8804'_2716 v12))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0))
                                       (\ v10 v11 -> v10) v1 v2)
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v10 v11 -> v11)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)) v1
                                       v2)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v0) (coe v1))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v4) (coe v5))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v10 v11 -> v11)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0))
                                          v1 v2)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                             (coe d_'8804''45'isPreorder_2670)
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe du_'8804''45''60''45'trans_2828 v13 v14))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v4) (coe v5))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v4) (coe v9))
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                             (\ v10 v11 -> v11)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v0))
                                             v1 v2)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v4) (coe v9))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v0) (coe v2))
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                (\ v10 v11 -> v11)
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v0))
                                                v1 v2)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe d_'8804''45'isPreorder_2670))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v0) (coe v2)))
                                             erased)
                                          (d_'8854''45'mono'691''45''8805''45''8804'_3886
                                             (coe v4) (coe v5) (coe v9) (coe v8)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoˡ-≤
d_'8854''45'mono'737''45''8804'_3918 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8854''45'mono'737''45''8804'_3918 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                0 -> coe
                       seq (coe v3)
                       (coe
                          d_'8804''45'refl_2598
                          (coe
                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                             (\ v5 ->
                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v5) (coe v0))
                             (\ v5 v6 -> v5) (0 :: Integer) (0 :: Integer)))
                _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                     coe
                       (case coe v3 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_2670)
                                    (\ v7 v8 v9 -> coe du_'60''8658''8804'_2716 v9))
                                 (coe
                                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                    (\ v7 ->
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                         (coe v7) (coe v0))
                                    (\ v7 v8 -> v7) (0 :: Integer) v2)
                                 (coe
                                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                    (\ v7 v8 -> v8)
                                    (\ v7 ->
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                         (coe v7) (coe v0))
                                    (0 :: Integer) v2)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                       (coe d_'8804''45'isPreorder_2670)
                                       (\ v7 v8 v9 v10 v11 ->
                                          coe du_'8804''45''60''45'trans_2828 v10 v11))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                       (coe (0 :: Integer)) (coe v0))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                       (coe (0 :: Integer)) (coe v4))
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v7 v8 -> v8)
                                       (\ v7 ->
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                            (coe v7) (coe v0))
                                       (0 :: Integer) v2)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe d_'8804''45'isPreorder_2670)
                                          (\ v7 v8 v9 v10 v11 ->
                                             coe du_'8804''45''60''45'trans_2828 v10 v11))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe (0 :: Integer)) (coe v4))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v5) (coe v4))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v7 v8 -> v8)
                                          (\ v7 ->
                                             MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                               (coe v7) (coe v0))
                                          (0 :: Integer) v2)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                          (\ v7 v8 v9 v10 v11 -> v11)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v5) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v2) (coe v0))
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                             (\ v7 v8 -> v8)
                                             (\ v7 ->
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                  (coe v7) (coe v0))
                                             (0 :: Integer) v2)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_2670))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v2) (coe v0)))
                                          erased)
                                       (d_'8854''45'mono'737''45''8804'_3918
                                          (coe v4) (coe (0 :: Integer)) (coe v5)
                                          (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)))
                                    (d_'8854''45'mono'691''45''8805''45''8804'_3886
                                       (coe (0 :: Integer)) (coe v0) (coe v4)
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2714
                                          (coe v4))))
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                            -> let v9 = subInt (coe v1) (coe (1 :: Integer)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                       (coe d_'8804''45'isPreorder_2670)
                                       (\ v10 v11 v12 -> coe du_'60''8658''8804'_2716 v12))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                       (\ v10 ->
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                            (coe v10) (coe v0))
                                       (\ v10 v11 -> v10) v1 v2)
                                    (coe
                                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                       (\ v10 v11 -> v11)
                                       (\ v10 ->
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                            (coe v10) (coe v0))
                                       v1 v2)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                       (\ v10 v11 v12 v13 v14 -> v14)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v1) (coe v0))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v9) (coe v4))
                                       (coe
                                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                          (\ v10 v11 -> v11)
                                          (\ v10 ->
                                             MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                               (coe v10) (coe v0))
                                          v1 v2)
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                             (coe d_'8804''45'isPreorder_2670)
                                             (\ v10 v11 v12 v13 v14 ->
                                                coe du_'8804''45''60''45'trans_2828 v13 v14))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v9) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v5) (coe v4))
                                          (coe
                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                             (\ v10 v11 -> v11)
                                             (\ v10 ->
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                  (coe v10) (coe v0))
                                             v1 v2)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                             (\ v10 v11 v12 v13 v14 -> v14)
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v5) (coe v4))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v2) (coe v0))
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                (\ v10 v11 -> v11)
                                                (\ v10 ->
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                     (coe v10) (coe v0))
                                                v1 v2)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                   (coe d_'8804''45'isPreorder_2670))
                                                (coe
                                                   MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v2) (coe v0)))
                                             erased)
                                          (d_'8854''45'mono'737''45''8804'_3918
                                             (coe v4) (coe v9) (coe v5) (coe v8)))
                                       erased))
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoʳ->-<
d_'8854''45'mono'691''45''62''45''60'_3948 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8854''45'mono'691''45''62''45''60'_3948 v0 v1 v2 v3
  = case coe v0 of
      0 -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> case coe v6 of
                    MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                      -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                     -> case coe v8 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> let v10
                                     = coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)
                                       (coe v1))
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                       (\ v11 v12 v13 v14 v15 -> v15)
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v0) (coe v1))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v4) (coe v5))
                                       v0
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                             (\ v11 v12 v13 v14 v15 ->
                                                coe du_'60''45'trans_2856 v14 v15)
                                             (coe
                                                MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                             (\ v11 v12 v13 v14 v15 ->
                                                coe du_'60''45''8804''45'trans_2842 v14 v15))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v4) (coe v5))
                                          v0 v0
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_2670))
                                             (coe v0))
                                          (d_m'8854'n'60'1'43'm_3792 (coe v4) (coe v5)))
                                       erased))
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11
                            -> let v12 = subInt (coe v2) (coe (1 :: Integer)) in
                               coe
                                 (let v13
                                        = coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                       (coe v13)
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v0)
                                          (coe v2))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                          (\ v14 v15 v16 v17 v18 -> v18)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v0) (coe v1))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v4) (coe subInt (coe v1) (coe (1 :: Integer))))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v0) (coe v2))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                (\ v14 v15 v16 v17 v18 ->
                                                   coe du_'60''45'trans_2856 v17 v18)
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                (\ v14 v15 v16 v17 v18 ->
                                                   coe du_'60''45''8804''45'trans_2842 v17 v18))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v4) (coe subInt (coe v1) (coe (1 :: Integer))))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v4) (coe v12))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v0) (coe v2))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                (\ v14 v15 v16 v17 v18 -> v18)
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v4) (coe v12))
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v0) (coe v2))
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v0) (coe v2))
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                      (coe d_'8804''45'isPreorder_2670))
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                      (coe v0) (coe v2)))
                                                erased)
                                             (d_'8854''45'mono'691''45''62''45''60'_3948
                                                (coe v4) (coe subInt (coe v1) (coe (1 :: Integer)))
                                                (coe v12)
                                                (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11)))
                                          erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.⊖-monoˡ-<
d_'8854''45'mono'737''45''60'_3976 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'8854''45'mono'737''45''60'_3976 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v3
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v5 = subInt (coe v2) (coe (1 :: Integer)) in
              coe
                (case coe v3 of
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v8
                     -> case coe v8 of
                          MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                            -> let v10
                                     = coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                               coe
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                    (coe v10) (coe subInt (coe (0 :: Integer)) (coe v0))
                                    (coe
                                       MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2)
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe du_'60''45'trans_2856 v14 v15)
                                          (coe
                                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe du_'60''45''8804''45'trans_2842 v14 v15))
                                       (subInt (coe (0 :: Integer)) (coe v0))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v5) (coe v4))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v2) (coe v0))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                          (\ v11 v12 v13 v14 v15 -> v15)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v5) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v2) (coe v0))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v2) (coe v0))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_2670))
                                             (coe
                                                MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v2) (coe v0)))
                                          erased)
                                       (d_'45'1'43'm'60'n'8854'm_3820 (coe v4) (coe v5))))
                          MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11
                            -> let v12 = subInt (coe v1) (coe (1 :: Integer)) in
                               coe
                                 (let v13
                                        = coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                                       (coe v13)
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v1)
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v2)
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                          (\ v14 v15 v16 v17 v18 -> v18)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v1) (coe v0))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v12) (coe v4))
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v2) (coe v0))
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                                (\ v14 v15 v16 v17 v18 ->
                                                   coe du_'60''45'trans_2856 v17 v18)
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                (\ v14 v15 v16 v17 v18 ->
                                                   coe du_'60''45''8804''45'trans_2842 v17 v18))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v12) (coe v4))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe subInt (coe v2) (coe (1 :: Integer))) (coe v4))
                                             (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                (coe v2) (coe v0))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                                                (\ v14 v15 v16 v17 v18 -> v18)
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe subInt (coe v2) (coe (1 :: Integer)))
                                                   (coe v4))
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v2) (coe v0))
                                                (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                   (coe v2) (coe v0))
                                                (coe
                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                   (coe
                                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                      (coe d_'8804''45'isPreorder_2670))
                                                   (coe
                                                      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                                      (coe v2) (coe v0)))
                                                erased)
                                             (d_'8854''45'mono'737''45''60'_3976
                                                (coe v4) (coe v12)
                                                (coe subInt (coe v2) (coe (1 :: Integer)))
                                                (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v11)))
                                          erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Integer.Properties.+-comm
d_'43''45'comm_4000 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4000 = erased
-- Data.Integer.Properties.+-identityˡ
d_'43''45'identity'737'_4010 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4010 = erased
-- Data.Integer.Properties.+-identityʳ
d_'43''45'identity'691'_4012 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4012 = erased
-- Data.Integer.Properties.+-identity
d_'43''45'identity_4014 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4014
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.distribˡ-⊖-+-pos
d_distrib'737''45''8854''45''43''45'pos_4022 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737''45''8854''45''43''45'pos_4022 = erased
-- Data.Integer.Properties.distribˡ-⊖-+-neg
d_distrib'737''45''8854''45''43''45'neg_4042 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737''45''8854''45''43''45'neg_4042 = erased
-- Data.Integer.Properties.distribʳ-⊖-+-pos
d_distrib'691''45''8854''45''43''45'pos_4062 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''8854''45''43''45'pos_4062 = erased
-- Data.Integer.Properties.distribʳ-⊖-+-neg
d_distrib'691''45''8854''45''43''45'neg_4082 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''8854''45''43''45'neg_4082 = erased
-- Data.Integer.Properties.+-assoc
d_'43''45'assoc_4096 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4096 = erased
-- Data.Integer.Properties.+-inverseˡ
d_'43''45'inverse'737'_4276 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_4276 = erased
-- Data.Integer.Properties.+-inverseʳ
d_'43''45'inverse'691'_4282 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_4282 = erased
-- Data.Integer.Properties.+-inverse
d_'43''45'inverse_4284 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_4284
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.+-isMagma
d_'43''45'isMagma_4286 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'43''45'isMagma_4286
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Integer.Properties.+-isSemigroup
d_'43''45'isSemigroup_4288 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'43''45'isSemigroup_4288
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'43''45'isMagma_4286) erased
-- Data.Integer.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_4290 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'43''45'isCommutativeSemigroup_4290
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_10991
      (coe d_'43''45'isSemigroup_4288) erased
-- Data.Integer.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_4292 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'0'45'isMonoid_4292
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'43''45'isSemigroup_4288) (coe d_'43''45'identity_4014)
-- Data.Integer.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4294 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'0'45'isCommutativeMonoid_4294
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'43''45'0'45'isMonoid_4292) erased
-- Data.Integer.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_4296 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_'43''45'0'45'isGroup_4296
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_22921
      (coe d_'43''45'0'45'isMonoid_4292) (coe d_'43''45'inverse_4284)
      erased
-- Data.Integer.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_4298 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'0'45'isAbelianGroup_4298
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_27921
      (coe d_'43''45'0'45'isGroup_4296) erased
-- Data.Integer.Properties.+-magma
d_'43''45'magma_4300 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'43''45'magma_4300
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 d_'43''45'isMagma_4286
-- Data.Integer.Properties.+-semigroup
d_'43''45'semigroup_4302 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'43''45'semigroup_4302
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      d_'43''45'isSemigroup_4288
-- Data.Integer.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_4304 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'43''45'commutativeSemigroup_4304
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_10829
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      d_'43''45'isCommutativeSemigroup_4290
-- Data.Integer.Properties.+-0-monoid
d_'43''45'0'45'monoid_4306 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'43''45'0'45'monoid_4306
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (0 :: Integer)
      d_'43''45'0'45'isMonoid_4292
-- Data.Integer.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4308 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'43''45'0'45'commutativeMonoid_4308
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (0 :: Integer)
      d_'43''45'0'45'isCommutativeMonoid_4294
-- Data.Integer.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_4310 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378
d_'43''45'0'45'abelianGroup_4310
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_24563
      MAlonzo.Code.Data.Integer.Base.d__'43'__276 (0 :: Integer)
      MAlonzo.Code.Data.Integer.Base.d_'45'__252
      d_'43''45'0'45'isAbelianGroup_4298
-- Data.Integer.Properties.pos-+
d_pos'45''43'_4312 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''43'_4312 = erased
-- Data.Integer.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_4324 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_4324 = erased
-- Data.Integer.Properties.◃-distrib-+
d_'9667''45'distrib'45''43'_4352 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'distrib'45''43'_4352 = erased
-- Data.Integer.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4372 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'mono'691''45''8804'_4372 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v3 of
            MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
              -> coe
                   d_'8854''45'mono'691''45''8805''45''8804'_3886 (coe v0)
                   (coe subInt (coe (0 :: Integer)) (coe v1))
                   (coe subInt (coe (0 :: Integer)) (coe v2))
                   (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
            MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
              -> coe
                   du_'8804''45'trans_2600
                   (coe
                      d_m'8854'n'8804'm_3774 (coe v0)
                      (coe subInt (coe (0 :: Integer)) (coe v1)))
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352 (coe v0)))
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3424
                      (coe v0) (coe v2) (coe v6))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v3 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
               -> let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3424
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v7) (coe v6)))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
               -> coe
                    du_'8804''45'trans_2600
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352
                          (coe subInt (coe (0 :: Integer)) (coe v0))))
                    (coe
                       d_'45'1'43'm'8804'n'8854'm_3854
                       (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v2))
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
               -> coe
                    d_'8854''45'mono'737''45''8804'_3918
                    (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) (coe v2)
                    (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4402 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'mono'737''45''8804'_4402 v0 v1 v2
  = coe d_'43''45'mono'691''45''8804'_4372 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4418 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'mono'45''8804'_4418 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2670)
         (\ v6 v7 v8 -> coe du_'60''8658''8804'_2716 v8))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe d_'8804''45'isPreorder_2670)
            (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_2828 v9 v10))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_2670)
               (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_2828 v9 v10))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2670))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3)))
            (d_'43''45'mono'691''45''8804'_4372
               (coe v1) (coe v2) (coe v3) (coe v5)))
         (coe d_'43''45'mono'737''45''8804'_4402 v2 v0 v1 v4))
-- Data.Integer.Properties.i≤j⇒i≤k+j
d_i'8804'j'8658'i'8804'k'43'j_4440 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'8804'k'43'j_4440 v0 v1 v2 ~v3 v4
  = du_i'8804'j'8658'i'8804'k'43'j_4440 v0 v1 v2 v4
du_i'8804'j'8658'i'8804'k'43'j_4440 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'8658'i'8804'k'43'j_4440 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4418 (coe (0 :: Integer)) (coe v2)
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      (coe v3)
-- Data.Integer.Properties.i≤j+i
d_i'8804'j'43'i_4454 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'43'i_4454 v0 v1 ~v2 = du_i'8804'j'43'i_4454 v0 v1
du_i'8804'j'43'i_4454 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'43'i_4454 v0 v1
  = coe
      du_i'8804'j'8658'i'8804'k'43'j_4440 (coe v0) (coe v0) (coe v1)
      (coe d_'8804''45'refl_2598 (coe v0))
-- Data.Integer.Properties.i≤i+j
d_i'8804'i'43'j_4466 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'i'43'j_4466 v0 v1 ~v2 = du_i'8804'i'43'j_4466 v0 v1
du_i'8804'i'43'j_4466 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'i'43'j_4466 v0 v1
  = coe du_i'8804'j'43'i_4454 (coe v0) (coe v1)
-- Data.Integer.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4478 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'691''45''60'_4478 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v3 of
            MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v6
              -> coe
                   d_'8854''45'mono'691''45''62''45''60'_3948 (coe v0)
                   (coe subInt (coe (0 :: Integer)) (coe v1))
                   (coe subInt (coe (0 :: Integer)) (coe v2))
                   (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
            MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
              -> coe
                   du_'60''45''8804''45'trans_2842
                   (coe
                      du_m'8854'1'43'n'60'm_3804 (coe v0)
                      (coe subInt (coe (0 :: Integer)) (coe v1)))
                   (coe
                      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352 (coe v0)))
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v6
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3466
                      (coe v0) (coe v6))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (case coe v3 of
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v7
                  -> coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''60'_3466
                          (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v7))
                MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
                  -> coe
                       du_'60''45''8804''45'trans_2842
                       (coe
                          MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352
                             (coe subInt (coe (0 :: Integer)) (coe v0))))
                       (coe
                          d_'45''91'1'43'm'93''8804'n'8854'm'43'1_3838 (coe v4) (coe v2))
                MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v7
                  -> coe
                       d_'8854''45'mono'737''45''60'_3976
                       (coe subInt (coe (0 :: Integer)) (coe v0)) (coe v1) (coe v2)
                       (coe v7)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4506 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'737''45''60'_4506 v0 v1 v2
  = coe d_'43''45'mono'691''45''60'_4478 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.+-mono-<
d_'43''45'mono'45''60'_4522 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'45''60'_4522 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v6)
         (coe MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
         (coe MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_2856 v10 v11)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
               (\ v7 v8 v9 v10 v11 ->
                  coe du_'60''45''8804''45'trans_2842 v10 v11))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v0) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (\ v7 v8 v9 v10 v11 -> coe du_'60''45'trans_2856 v10 v11)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                  (\ v7 v8 v9 v10 v11 ->
                     coe du_'60''45''8804''45'trans_2842 v10 v11))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v2))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe d_'8804''45'isPreorder_2670))
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__276 (coe v1) (coe v3)))
               (d_'43''45'mono'691''45''60'_4478
                  (coe v1) (coe v2) (coe v3) (coe v5)))
            (coe d_'43''45'mono'737''45''60'_4506 v2 v0 v1 v4)))
-- Data.Integer.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4540 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'45''8804''45''60'_4540 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''45''60''45'trans_2828
      (coe d_'43''45'mono'737''45''8804'_4402 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''60'_4478 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Integer.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_4552 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'43''45'mono'45''60''45''8804'_4552 v0 v1 v2 v3 v4 v5
  = coe
      du_'60''45''8804''45'trans_2842
      (coe d_'43''45'mono'737''45''60'_4506 v2 v0 v1 v4)
      (coe
         d_'43''45'mono'691''45''8804'_4372 (coe v1) (coe v2) (coe v3)
         (coe v5))
-- Data.Integer.Properties.neg-minus-pos
d_neg'45'minus'45'pos_4568 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'minus'45'pos_4568 = erased
-- Data.Integer.Properties.+-minus-telescope
d_'43''45'minus'45'telescope_4584 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'minus'45'telescope_4584 = erased
-- Data.Integer.Properties.[+m]-[+n]≡m⊖n
d_'91''43'm'93''45''91''43'n'93''8801'm'8854'n_4606 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''43'm'93''45''91''43'n'93''8801'm'8854'n_4606 = erased
-- Data.Integer.Properties.∣i-j∣≡∣j-i∣
d_'8739'i'45'j'8739''8801''8739'j'45'i'8739'_4620 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'45'j'8739''8801''8739'j'45'i'8739'_4620 = erased
-- Data.Integer.Properties.∣-∣-≤
d_'8739''45''8739''45''8804'_4650 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45''8804'_4650 = erased
-- Data.Integer.Properties.i≡j⇒i-j≡0
d_i'8801'j'8658'i'45'j'8801'0_4688 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8801'j'8658'i'45'j'8801'0_4688 = erased
-- Data.Integer.Properties.i-j≡0⇒i≡j
d_i'45'j'8801'0'8658'i'8801'j_4696 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'45'j'8801'0'8658'i'8801'j_4696 = erased
-- Data.Integer.Properties.i≤j⇒i-k≤j
d_i'8804'j'8658'i'45'k'8804'j_4714 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'45'k'8804'j_4714 v0 ~v1 v2 ~v3 v4
  = du_i'8804'j'8658'i'45'k'8804'j_4714 v0 v2 v4
du_i'8804'j'8658'i'45'k'8804'j_4714 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'8658'i'45'k'8804'j_4714 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
                    coe
                      du_'8804''45'trans_2600
                      (coe d_m'8854'n'8804'm_3774 (coe v0) (coe v1)) (coe v2)
                _ -> let v4 = subInt (coe (-1 :: Integer)) (coe v0) in
                     coe
                       (coe
                          du_'8804''45'trans_2600
                          (coe
                             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                             (coe
                                MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2654
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352 (coe v4))
                                (coe
                                   MAlonzo.Code.Data.Nat.Properties.d_n'8804'1'43'n_2714
                                   (coe addInt (coe v4) (coe v3)))))
                          (coe v2)))
-- Data.Integer.Properties.i-j≤i
d_i'45'j'8804'i_4742 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'45'j'8804'i_4742 v0 v1 ~v2 = du_i'45'j'8804'i_4742 v0 v1
du_i'45'j'8804'i_4742 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'45'j'8804'i_4742 v0 v1
  = coe
      du_i'8804'j'8658'i'45'k'8804'j_4714 (coe v0) (coe v1)
      (coe d_'8804''45'refl_2598 (coe v0))
-- Data.Integer.Properties.i≤j⇒i-j≤0
d_i'8804'j'8658'i'45'j'8804'0_4748 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'45'j'8804'0_4748 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
        -> let v6 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
              coe
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                      (coe d_'8804''45'isPreorder_2670)
                      (\ v8 v9 v10 -> coe du_'60''8658''8804'_2716 v10))
                   (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                   MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                      (\ v8 v9 v10 v11 v12 -> v12)
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                         (coe subInt (coe (0 :: Integer)) (coe v1))
                         (coe subInt (coe (0 :: Integer)) (coe v0)))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v7) (coe v6))
                      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                            (coe d_'8804''45'isPreorder_2670)
                            (\ v8 v9 v10 v11 v12 ->
                               coe du_'8804''45''60''45'trans_2828 v11 v12))
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v7) (coe v6))
                         (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v7) (coe v7))
                         MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                            (\ v8 v9 v10 v11 v12 -> v12)
                            (MAlonzo.Code.Data.Integer.Base.d__'8854'__258 (coe v7) (coe v7))
                            MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                            MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_2670))
                               (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                            erased)
                         (d_'8854''45'mono'691''45''8805''45''8804'_3886
                            (coe v7) (coe v6) (coe v7) (coe v5)))
                      erased)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             du_i'8804'j'8658'i'45'k'8804'j_4714 (coe v0) (coe v1)
             (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
        -> case coe v1 of
             0 -> coe
                    seq (coe v5)
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
             _ -> let v6 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
                         -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v9
                         -> let v10 = subInt (coe v0) (coe (1 :: Integer)) in
                            coe
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                    (coe d_'8804''45'isPreorder_2670)
                                    (\ v11 v12 v13 -> coe du_'60''8658''8804'_2716 v13))
                                 (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                                 MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                    (\ v11 v12 v13 v14 v15 -> v15)
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                       (coe v0) (coe v1))
                                    (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                       (coe v10) (coe v6))
                                    MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                          (coe d_'8804''45'isPreorder_2670)
                                          (\ v11 v12 v13 v14 v15 ->
                                             coe du_'8804''45''60''45'trans_2828 v14 v15))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v10) (coe v6))
                                       (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                          (coe v10) (coe v10))
                                       MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                          (\ v11 v12 v13 v14 v15 -> v15)
                                          (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                                             (coe v10) (coe v10))
                                          MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                          MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                (coe d_'8804''45'isPreorder_2670))
                                             (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                                          erased)
                                       (d_'8854''45'mono'691''45''8805''45''8804'_3886
                                          (coe v10) (coe v6) (coe v10) (coe v9)))
                                    erased))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i-j≤0⇒i≤j
d_i'45'j'8804'0'8658'i'8804'j_4774 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'45'j'8804'0'8658'i'8804'j_4774 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2670)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_2716 v5))
      v0 v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
         (\ v3 v4 v5 v6 v7 -> v7) v0
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276
            (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
            (\ v3 v4 v5 v6 v7 -> v7)
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276
               (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276
               (coe v0)
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
                  (coe v1)))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
                     (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                  (coe v1))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                     (coe d_'8804''45'isPreorder_2670)
                     (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2828 v6 v7))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                     (coe v1))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
                  v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                        (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
                     v1 v1
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_2670))
                        (coe v1))
                     erased)
                  (coe
                     d_'43''45'mono'737''45''8804'_4402 v1
                     (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                     MAlonzo.Code.Data.Integer.Base.d_0ℤ_12 v2))
               erased)
            erased)
         erased)
-- Data.Integer.Properties.i≤j⇒0≤j-i
d_i'8804'j'8658'0'8804'j'45'i_4786 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'0'8804'j'45'i_4786 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2670)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_2716 v5))
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
         (\ v3 v4 v5 v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
         (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v0))
         (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_2670)
               (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2828 v6 v7))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v0))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0))
            (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe d_'8804''45'isPreorder_2670))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v1) (coe v0)))
            (coe
               d_'43''45'mono'737''45''8804'_4402
               (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0)) v0 v1 v2))
         erased)
-- Data.Integer.Properties.0≤i-j⇒j≤i
d_0'8804'i'45'j'8658'j'8804'i_4798 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8804'i'45'j'8658'j'8804'i_4798 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe d_'8804''45'isPreorder_2670)
         (\ v3 v4 v5 -> coe du_'60''8658''8804'_2716 v5))
      v1 v0
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
         (\ v3 v4 v5 v6 v7 -> v7) v1
         (MAlonzo.Code.Data.Integer.Base.d__'43'__276
            (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
         v0
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe d_'8804''45'isPreorder_2670)
               (\ v3 v4 v5 v6 v7 -> coe du_'8804''45''60''45'trans_2828 v6 v7))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276
               (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) (coe v1))
            (MAlonzo.Code.Data.Integer.Base.d__'43'__276
               (coe MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
               (coe v1))
            v0
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
                  (coe v1))
               (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                  (coe v0)
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
                     (coe v1)))
               v0
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe v0)
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'43'__276
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                     (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                  v0
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v3 v4 v5 v6 v7 -> v7)
                     (MAlonzo.Code.Data.Integer.Base.d__'43'__276
                        (coe v0) (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12))
                     v0 v0
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe d_'8804''45'isPreorder_2670))
                        (coe v0))
                     erased)
                  erased)
               erased)
            (coe
               d_'43''45'mono'737''45''8804'_4402 v1
               MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
               (MAlonzo.Code.Data.Integer.Base.d__'45'__294 (coe v0) (coe v1))
               v2))
         erased)
-- Data.Integer.Properties.i≤j⇒i≤1+j
d_i'8804'j'8658'i'8804'1'43'j_4810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'i'8804'1'43'j_4810 v0 v1
  = coe
      du_i'8804'j'8658'i'8804'k'43'j_4440 (coe v0) (coe v1)
      (coe (1 :: Integer))
-- Data.Integer.Properties.i≤suc[i]
d_i'8804'suc'91'i'93'_4814 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'suc'91'i'93'_4814 v0
  = coe du_i'8804'j'43'i_4454 (coe v0) (coe (1 :: Integer))
-- Data.Integer.Properties.suc-+
d_suc'45''43'_4822 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''43'_4822 = erased
-- Data.Integer.Properties.i≢suc[i]
d_i'8802'suc'91'i'93'_4832 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_i'8802'suc'91'i'93'_4832 = erased
-- Data.Integer.Properties.1-[1+n]≡-n
d_1'45''91'1'43'n'93''8801''45'n_4838 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'45''91'1'43'n'93''8801''45'n_4838 = erased
-- Data.Integer.Properties.suc-mono
d_suc'45'mono_4842 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_suc'45'mono_4842 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
        -> coe
             d_'8854''45'mono'691''45''8805''45''8804'_3886 (coe (1 :: Integer))
             (coe subInt (coe (0 :: Integer)) (coe v0))
             (coe subInt (coe (0 :: Integer)) (coe v1))
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> let v5 = subInt (coe (-1 :: Integer)) (coe v0) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe d_'8804''45'isPreorder_2670)
                   (\ v6 v7 v8 -> coe du_'60''8658''8804'_2716 v8))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   MAlonzo.Code.Data.Integer.Base.d_suc_300 (\ v6 v7 -> v6) v0 v1)
                (coe
                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                   (\ v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_suc_300 v0 v1)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v6 v7 v8 v9 v10 -> v10)
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                      (coe (1 :: Integer)) (coe subInt (coe (0 :: Integer)) (coe v0)))
                   (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                      (coe (0 :: Integer)) (coe v5))
                   (coe
                      MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                      (\ v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_suc_300 v0 v1)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe d_'8804''45'isPreorder_2670)
                         (\ v6 v7 v8 v9 v10 -> coe du_'8804''45''60''45'trans_2828 v9 v10))
                      (MAlonzo.Code.Data.Integer.Base.d__'8854'__258
                         (coe (0 :: Integer)) (coe v5))
                      (MAlonzo.Code.Data.Integer.Base.d_suc_300 (coe v1))
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                         (\ v6 v7 -> v7) MAlonzo.Code.Data.Integer.Base.d_suc_300 v0 v1)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                            (coe d_'8804''45'isPreorder_2670))
                         (coe MAlonzo.Code.Data.Integer.Base.d_suc_300 (coe v1)))
                      (coe du_0'8854'm'8804''43'_3864 (coe v5)))
                   erased))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.suc[i]≤j⇒i<j
d_suc'91'i'93''8804'j'8658'i'60'j_4856 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_suc'91'i'93''8804'j'8658'i'60'j_4856 v0 v1 v2
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v2 of
            MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
              -> coe MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v5
            _ -> MAlonzo.RTE.mazUnreachableError
      -1 -> coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   seq (coe v2) (coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64)
             _ -> case coe v2 of
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i<j⇒suc[i]≤j
d_i'60'j'8658'suc'91'i'93''8804'j_4876 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'60'j'8658'suc'91'i'93''8804'j_4876 v0 v1 v2
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v2 of
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v5
              -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
            _ -> MAlonzo.RTE.mazUnreachableError
      -1
        -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe
                   seq (coe v2)
                   (coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40)
             _ -> case coe v2 of
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v5
                      -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                           (coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.suc-pred
d_suc'45'pred_4888 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'pred_4888 = erased
-- Data.Integer.Properties.pred-suc
d_pred'45'suc_4898 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45'suc_4898 = erased
-- Data.Integer.Properties.+-pred
d_'43''45'pred_4910 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'pred_4910 = erased
-- Data.Integer.Properties.pred-+
d_pred'45''43'_4926 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'45''43'_4926 = erased
-- Data.Integer.Properties.neg-suc
d_neg'45'suc_4938 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'suc_4938 = erased
-- Data.Integer.Properties.minus-suc
d_minus'45'suc_4946 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_minus'45'suc_4946 = erased
-- Data.Integer.Properties.i≤pred[j]⇒i<j
d_i'8804'pred'91'j'93''8658'i'60'j_4956 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_i'8804'pred'91'j'93''8658'i'60'j_4956 ~v0 v1 v2
  = du_i'8804'pred'91'j'93''8658'i'60'j_4956 v1 v2
du_i'8804'pred'91'j'93''8658'i'60'j_4956 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_i'8804'pred'91'j'93''8658'i'60'j_4956 v0 v1
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          coe
            du_'8804''45''60''45'trans_2828 (coe v1)
            (coe du_m'8854'1'43'n'60'm_3804 (coe v0) (coe (1 :: Integer)))
      _ -> coe
             du_'8804''45''60''45'trans_2828 (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646
                   (coe subInt (coe (0 :: Integer)) (coe v0))))
-- Data.Integer.Properties.i<j⇒i≤pred[j]
d_i'60'j'8658'i'8804'pred'91'j'93'_4966 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'60'j'8658'i'8804'pred'91'j'93'_4966 ~v0 v1 v2
  = du_i'60'j'8658'i'8804'pred'91'j'93'_4966 v1 v2
du_i'60'j'8658'i'8804'pred'91'j'93'_4966 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'60'j'8658'i'8804'pred'91'j'93'_4966 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          case coe v1 of
            MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
              -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
            MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v4
              -> coe
                   MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                   (coe MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62 (coe v4))
            _ -> MAlonzo.RTE.mazUnreachableError
      _ -> case coe v1 of
             MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v4
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v4
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.i≤j⇒pred[i]≤j
d_i'8804'j'8658'pred'91'i'93''8804'j_4978 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_i'8804'j'8658'pred'91'i'93''8804'j_4978 ~v0 ~v1 v2
  = du_i'8804'j'8658'pred'91'i'93''8804'j_4978 v2
du_i'8804'j'8658'pred'91'i'93''8804'j_4978 ::
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_i'8804'j'8658'pred'91'i'93''8804'j_4978 v0
  = case coe v0 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v3
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v3
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6
               -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.pred-mono
d_pred'45'mono_4984 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_pred'45'mono_4984 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v5
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v5)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
             _ -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v5
        -> coe
             d_'8854''45'mono'737''45''8804'_3918 (coe (1 :: Integer)) (coe v0)
             (coe v1) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.*-comm
d_'42''45'comm_4992 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_4992 = erased
-- Data.Integer.Properties.*-identityˡ
d_'42''45'identity'737'_5026 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_5026 = erased
-- Data.Integer.Properties.*-identityʳ
d_'42''45'identity'691'_5040 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_5040 = erased
-- Data.Integer.Properties.*-identity
d_'42''45'identity_5042 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_5042
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-zeroˡ
d_'42''45'zero'737'_5044 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_5044 = erased
-- Data.Integer.Properties.*-zeroʳ
d_'42''45'zero'691'_5046 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_5046 = erased
-- Data.Integer.Properties.*-zero
d_'42''45'zero_5048 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_5048
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.lemma
d_lemma_5056 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_5056 = erased
-- Data.Integer.Properties.*-assoc
d_'42''45'assoc_5064 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_5064 = erased
-- Data.Integer.Properties.distrib-lemma
d_distrib'45'lemma_5142 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'45'lemma_5142 = erased
-- Data.Integer.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_5218 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_5218 = erased
-- Data.Integer.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_5508 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_5508 = erased
-- Data.Integer.Properties.*-distrib-+
d_'42''45'distrib'45''43'_5510 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_5510
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Integer.Properties.*-isMagma
d_'42''45'isMagma_5512 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_5512
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      erased
-- Data.Integer.Properties.*-isSemigroup
d_'42''45'isSemigroup_5514 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_5514
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe d_'42''45'isMagma_5512) erased
-- Data.Integer.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_5516 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_5516
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_10991
      (coe d_'42''45'isSemigroup_5514) erased
-- Data.Integer.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_5518 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'1'45'isMonoid_5518
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_13575
      (coe d_'42''45'isSemigroup_5514) (coe d_'42''45'identity_5042)
-- Data.Integer.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_5520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'1'45'isCommutativeMonoid_5520
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_15395
      (coe d_'42''45'1'45'isMonoid_5518) erased
-- Data.Integer.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_5522 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_'43''45''42''45'isSemiring_5522
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_43487
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
         (coe d_'43''45'0'45'isCommutativeMonoid_4294) erased erased
         (coe d_'42''45'identity_5042) (coe d_'42''45'distrib'45''43'_5510))
      (coe d_'42''45'zero_5048)
-- Data.Integer.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_5524 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_'43''45''42''45'isCommutativeSemiring_5524
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_47309
      (coe d_'43''45''42''45'isSemiring_5522) erased
-- Data.Integer.Properties.+-*-isRing
d_'43''45''42''45'isRing_5526 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478
d_'43''45''42''45'isRing_5526
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_89183
      (coe d_'43''45'0'45'isAbelianGroup_4298) erased erased
      (coe d_'42''45'identity_5042) (coe d_'42''45'distrib'45''43'_5510)
-- Data.Integer.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_5528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624
d_'43''45''42''45'isCommutativeRing_5528
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_95075
      (coe d_'43''45''42''45'isRing_5526) erased
-- Data.Integer.Properties.*-magma
d_'42''45'magma_5530 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'42''45'magma_5530
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Integer.Base.d__'42'__308 d_'42''45'isMagma_5512
-- Data.Integer.Properties.*-semigroup
d_'42''45'semigroup_5532 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'42''45'semigroup_5532
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      d_'42''45'isSemigroup_5514
-- Data.Integer.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_5534 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'42''45'commutativeSemigroup_5534
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_10829
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      d_'42''45'isCommutativeSemigroup_5516
-- Data.Integer.Properties.*-1-monoid
d_'42''45'1'45'monoid_5536 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'42''45'1'45'monoid_5536
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16 d_'42''45'1'45'isMonoid_5518
-- Data.Integer.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_5538 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'42''45'1'45'commutativeMonoid_5538
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'42''45'1'45'isCommutativeMonoid_5520
-- Data.Integer.Properties.+-*-semiring
d_'43''45''42''45'semiring_5540 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_'43''45''42''45'semiring_5540
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_36311
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isSemiring_5522
-- Data.Integer.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_5542 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2188
d_'43''45''42''45'commutativeSemiring_5542
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_39235
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isCommutativeSemiring_5524
-- Data.Integer.Properties.+-*-ring
d_'43''45''42''45'ring_5544 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514
d_'43''45''42''45'ring_5544
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_62099
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_'45'__252
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isRing_5526
-- Data.Integer.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_5546 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3720
d_'43''45''42''45'commutativeRing_5546
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_65981
      MAlonzo.Code.Data.Integer.Base.d__'43'__276
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      MAlonzo.Code.Data.Integer.Base.d_'45'__252
      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
      MAlonzo.Code.Data.Integer.Base.d_1ℤ_16
      d_'43''45''42''45'isCommutativeRing_5528
-- Data.Integer.Properties.abs-*
d_abs'45''42'_5548 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''42'_5548 = erased
-- Data.Integer.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_5562 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_5562 = erased
-- Data.Integer.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_5606 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_5606 = erased
-- Data.Integer.Properties.suc-*
d_suc'45''42'_5626 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45''42'_5626 = erased
-- Data.Integer.Properties.*-suc
d_'42''45'suc_5642 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_5642 = erased
-- Data.Integer.Properties.-1*i≡-i
d_'45'1'42'i'8801''45'i_5656 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'1'42'i'8801''45'i_5656 = erased
-- Data.Integer.Properties.i*j≡0⇒i≡0∨j≡0
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5666 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5666 v0 ~v1 ~v2
  = du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5666 v0
du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5666 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5666 v0
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_3692
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
-- Data.Integer.Properties.^-identityʳ
d_'94''45'identity'691'_5690 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_5690 = erased
-- Data.Integer.Properties.^-zeroˡ
d_'94''45'zero'737'_5694 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_5694 = erased
-- Data.Integer.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_5708 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_5708 = erased
-- Data.Integer.Properties.^-isMagmaHomomorphism
d_'94''45'isMagmaHomomorphism_5730 ::
  Integer ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_'94''45'isMagmaHomomorphism_5730 ~v0
  = du_'94''45'isMagmaHomomorphism_5730
du_'94''45'isMagmaHomomorphism_5730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
du_'94''45'isMagmaHomomorphism_5730
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
         erased)
      erased
-- Data.Integer.Properties.^-isMonoidHomomorphism
d_'94''45'isMonoidHomomorphism_5740 ::
  Integer ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_'94''45'isMonoidHomomorphism_5740 ~v0
  = du_'94''45'isMonoidHomomorphism_5740
du_'94''45'isMonoidHomomorphism_5740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
du_'94''45'isMonoidHomomorphism_5740
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe du_'94''45'isMagmaHomomorphism_5730) erased
-- Data.Integer.Properties.^-*-assoc
d_'94''45''42''45'assoc_5750 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_5750 = erased
-- Data.Integer.Properties.i^n≡0⇒i≡0
d_i'94'n'8801'0'8658'i'8801'0_5776 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'94'n'8801'0'8658'i'8801'0_5776 = erased
-- Data.Integer.Properties.pos-*
d_pos'45''42'_5784 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''42'_5784 = erased
-- Data.Integer.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_5798 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_5798 = erased
-- Data.Integer.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_5814 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_5814 = erased
-- Data.Integer.Properties.◃-distrib-*
d_'9667''45'distrib'45''42'_5832 ::
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  MAlonzo.Code.Data.Sign.Base.T_Sign_6 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45'distrib'45''42'_5832 = erased
-- Data.Integer.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_5866 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'691''45''8804''45'pos_5866 v0 v1 ~v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_5866 v0 v1 v4
du_'42''45'cancel'691''45''8804''45'pos_5866 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'691''45''8804''45'pos_5866 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
      _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
          coe
            seq (coe v2)
            (coe
               MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_3900
                  (coe v0)))
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
             _ -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                       (coe
                          MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_3900
                             (coe subInt (coe (0 :: Integer)) (coe v1)))))
-- Data.Integer.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_5900 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'737''45''8804''45'pos_5900 v0 v1 ~v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_5900 v0 v1
du_'42''45'cancel'737''45''8804''45'pos_5900 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'737''45''8804''45'pos_5900 v0 v1
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_5866 (coe v0) (coe v1)
-- Data.Integer.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_5922 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'nonNeg_5922 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonNeg_5922 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonNeg_5922 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'691''45''8804''45'nonNeg_5922 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> case coe v3 of
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
               -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                    (coe
                       MAlonzo.Code.Data.Nat.Base.du_s'8804's'8315''185'_62
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'45''8804'_3932
                          (coe subInt (coe (0 :: Integer)) (coe v1)) (coe v0)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
                          (coe
                             MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2646 (coe v0))))
             MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
               -> coe MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
               -> case coe v1 of
                    0 -> case coe v2 of
                           0 -> coe MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
                           _ -> coe
                                  MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
                    _ -> coe
                           MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'737''45''8804'_3942
                              (coe v0) (coe v2) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_5964 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'nonNeg_5964 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonNeg_5964 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonNeg_5964 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'737''45''8804''45'nonNeg_5964 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_5922 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_5988 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'737''45''8804''45'neg_5988 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''8804''45'neg_5988 v0 v1 v2 v4
du_'42''45'cancel'737''45''8804''45'neg_5988 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'737''45''8804''45'neg_5988 v0 v1 v2 v3
  = coe
      d_neg'45'cancel'45''8804'_3148 (coe v1) (coe v2)
      (coe
         du_'42''45'cancel'737''45''8804''45'pos_5900
         (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
         (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe d_'8804''45'isPreorder_2670)
               (\ v4 v5 v6 -> coe du_'60''8658''8804'_2716 v6))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__308
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
               (\ v4 v5 v6 v7 v8 -> v8)
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe v1)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v4 v5 v6 v7 v8 -> v8)
                  (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                        (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                        (coe d_'8804''45'isPreorder_2670)
                        (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2828 v7 v8))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v2))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                        (\ v4 v5 v6 v7 v8 -> v8)
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v2))
                        (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                           (coe
                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                              (coe v2)))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                           (\ v4 v5 v6 v7 v8 -> v8)
                           (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                                 (coe v2)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                 (coe d_'8804''45'isPreorder_2670))
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))))
                           erased)
                        erased)
                     v3)
                  erased)
               erased)))
-- Data.Integer.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_6010 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'cancel'691''45''8804''45'neg_6010 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''8804''45'neg_6010 v0 v1 v2
du_'42''45'cancel'691''45''8804''45'neg_6010 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'cancel'691''45''8804''45'neg_6010 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''8804''45'neg_5988 (coe v2) (coe v0)
      (coe v1)
-- Data.Integer.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_6032 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'nonPos_6032 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''8804''45'nonPos_6032 v0 v2 v3 v4
du_'42''45'mono'737''45''8804''45'nonPos_6032 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'737''45''8804''45'nonPos_6032 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26)
      _ -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                (coe d_'8804''45'isPreorder_2670)
                (\ v4 v5 v6 -> coe du_'60''8658''8804'_2716 v6))
             (coe
                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                (\ v4 v5 -> v5)
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0)) v1 v2)
             (coe
                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0))
                (\ v4 v5 -> v4) v1 v2)
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                (\ v4 v5 v6 v7 v8 -> v8)
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v2))
                (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                   (coe
                      MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                      (coe v2)))
                (coe
                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0))
                   (\ v4 v5 -> v4) v1 v2)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                   (\ v4 v5 v6 v7 v8 -> v8)
                   (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                      (coe
                         MAlonzo.Code.Data.Integer.Base.d__'42'__308
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                         (coe v2)))
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                      (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                   (coe
                      MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0))
                      (\ v4 v5 -> v4) v1 v2)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe d_'8804''45'isPreorder_2670)
                         (\ v4 v5 v6 v7 v8 -> coe du_'8804''45''60''45'trans_2828 v7 v8))
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0))
                         (\ v4 v5 -> v4) v1 v2)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                         (\ v4 v5 v6 v7 v8 -> v8)
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                            (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                         (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                               (coe v1)))
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0))
                            (\ v4 v5 -> v4) v1 v2)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                            (\ v4 v5 v6 v7 v8 -> v8)
                            (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                                  (coe v1)))
                            (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                            (coe
                               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                               (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0))
                               (\ v4 v5 -> v4) v1 v2)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                  (coe d_'8804''45'isPreorder_2670))
                               (coe
                                  MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1)))
                            erased)
                         erased)
                      (coe
                         du_'42''45'mono'737''45''8804''45'nonNeg_5964
                         (MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                         (coe
                            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                            (\ v4 v5 -> v5) MAlonzo.Code.Data.Integer.Base.d_'45'__252 v1 v2)
                         (coe
                            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                            MAlonzo.Code.Data.Integer.Base.d_'45'__252 (\ v4 v5 -> v4) v1 v2)
                         (coe du_neg'45'mono'45''8804'_3142 (coe v2) (coe v3))))
                   erased)
                erased)
-- Data.Integer.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_6060 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'nonPos_6060 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'nonPos_6060 v0 v2 v3
du_'42''45'mono'691''45''8804''45'nonPos_6060 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_'42''45'mono'691''45''8804''45'nonPos_6060 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_6032 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_6082 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'737''45''60''45'pos_6082 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_6082 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_6082 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'737''45''60''45'pos_6082 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (case coe v1 of
         _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
             case coe v3 of
               MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72 v7
                 -> coe
                      du_'43''9667''45'mono'45''60'_3462
                      (coe addInt (coe v1) (coe mulInt (coe v4) (coe v1)))
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''60''45''8804'_3430
                         (coe v7)
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_3952
                            (coe v4) (coe v2)
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724
                               (coe v7))))
               _ -> MAlonzo.RTE.mazUnreachableError
         _ -> case coe v2 of
                _ | coe geqInt (coe v2) (coe (0 :: Integer)) ->
                    coe du_'45''9667''60''43''9667'_3504 (coe mulInt (coe v0) (coe v2))
                _ -> case coe v3 of
                       MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58 v7
                         -> coe
                              MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''60''45''8804'_3430
                                 (coe v7)
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'691''45''8804'_3952
                                    (coe v4) (coe subInt (coe (0 :: Integer)) (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2724
                                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v7))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Integer.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_6114 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'691''45''60''45'pos_6114 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_6114 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_6114 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'691''45''60''45'pos_6114 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_6082 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_6134 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'nonNeg_6134 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonNeg_6134 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonNeg_6134 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'737''45''60''45'nonNeg_6134 v0 v1 v2 v3
  = case coe v0 of
      _ | coe geqInt (coe v0) (coe (0 :: Integer)) ->
          case coe v1 of
            _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                coe
                  MAlonzo.Code.Data.Integer.Base.C_'43''60''43'_72
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d_'42''45'cancel'737''45''60'_4080
                     v2 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                     (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
                     (coe
                        du_'43''9667''45'cancel'45''60'_3474
                        (coe
                           mulInt (coe v2)
                           (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
                        (coe v3)))
            _ -> coe
                   MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
      _ -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Integer.Base.C_'45''60''43'_64
             _ -> coe
                    MAlonzo.Code.Data.Integer.Base.C_'45''60''45'_58
                    (coe
                       MAlonzo.Code.Data.Nat.Base.du_s'60's'8315''185'_70
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d_'42''45'cancel'737''45''60'_4080
                          v2 (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
                          (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
                          (coe
                             du_neg'9667''45'cancel'45''60'_3488
                             (coe
                                mulInt (coe v2)
                                (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1)))
                             (coe v3))))
-- Data.Integer.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_6172 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'nonNeg_6172 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonNeg_6172 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonNeg_6172 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'691''45''60''45'nonNeg_6172 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_6134 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_6194 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'737''45''60''45'neg_6194 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_6194 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_6194 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'737''45''60''45'neg_6194 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v4)
         (coe MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v2))
         (coe MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
            (\ v5 v6 v7 v8 v9 -> v9)
            (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v2))
            (MAlonzo.Code.Data.Integer.Base.d_'45'__252
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                  (coe v2)))
            (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v5 v6 v7 v8 v9 -> v9)
               (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                  (coe
                     MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe v2)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
               (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                     (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_2856 v8 v9)
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                     (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2842 v8 v9))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                     (\ v5 v6 v7 v8 v9 -> v9)
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                     (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                           (coe v1)))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                        (\ v5 v6 v7 v8 v9 -> v9)
                        (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                           (coe
                              MAlonzo.Code.Data.Integer.Base.d__'42'__308
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                              (coe v1)))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe d_'8804''45'isPreorder_2670))
                           (coe
                              MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v0) (coe v1)))
                        erased)
                     erased)
                  (coe
                     du_'42''45'mono'737''45''60''45'pos_6082
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v5 v6 -> v6) MAlonzo.Code.Data.Integer.Base.d_'45'__252 v1 v2)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        MAlonzo.Code.Data.Integer.Base.d_'45'__252 (\ v5 v6 -> v5) v1 v2)
                     (coe d_neg'45'mono'45''60'_3172 (coe v1) (coe v2) (coe v3))))
               erased)
            erased))
-- Data.Integer.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_6214 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'mono'691''45''60''45'neg_6214 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_6214 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_6214 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'mono'691''45''60''45'neg_6214 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_6194 (coe v0) (coe v1) (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_6234 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'nonPos_6234 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_6234 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_6234 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'737''45''60''45'nonPos_6234 v0 v1 v2 v3
  = coe
      d_neg'45'cancel'45''60'_3186 (coe v0) (coe v1)
      (coe
         du_'42''45'cancel'737''45''60''45'nonNeg_6134
         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0))
         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))
         (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
         (let v4
                = coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
               (coe v4)
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0)))
               (coe
                  MAlonzo.Code.Data.Integer.Base.d__'42'__308
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                  (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                  (\ v5 v6 v7 v8 v9 -> v9)
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v0)))
                  (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                     (coe
                        MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                        (coe v0)))
                  (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                     (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v5 v6 v7 v8 v9 -> v9)
                     (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                        (coe
                           MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                           (coe v0)))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2) (coe v0))
                     (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                        (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                           (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans_2856 v8 v9)
                           (coe
                              MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                           (\ v5 v6 v7 v8 v9 -> coe du_'60''45''8804''45'trans_2842 v8 v9))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2) (coe v0))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2) (coe v1))
                        (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                           (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                           (\ v5 v6 v7 v8 v9 -> v9)
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308 (coe v2) (coe v1))
                           (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                              (coe
                                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                                 (coe v1)))
                           (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                              (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                              (\ v5 v6 v7 v8 v9 -> v9)
                              (MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                                    (coe v1)))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                              (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                                 (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1)))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                    (coe d_'8804''45'isPreorder_2670))
                                 (coe
                                    MAlonzo.Code.Data.Integer.Base.d__'42'__308
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v2))
                                    (coe MAlonzo.Code.Data.Integer.Base.d_'45'__252 (coe v1))))
                              erased)
                           erased)
                        v3)
                     erased)
                  erased))))
-- Data.Integer.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_6256 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'nonPos_6256 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_6256 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_6256 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_'42''45'cancel'691''45''60''45'nonPos_6256 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_6234 (coe v0) (coe v1)
      (coe v2)
-- Data.Integer.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_6274 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'neg_6274 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_6234 (coe v0) (coe v1)
      (coe subInt (coe (-1 :: Integer)) (coe v2))
-- Data.Integer.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_6284 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'neg_6284 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''60''45'nonPos_6256 (coe v0) (coe v1)
      (coe subInt (coe (-1 :: Integer)) (coe v2))
-- Data.Integer.Properties.∣i*j∣≡∣i∣*∣j∣
d_'8739'i'42'j'8739''8801''8739'i'8739''42''8739'j'8739'_6296 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'i'42'j'8739''8801''8739'i'8739''42''8739'j'8739'_6296
  = erased
-- Data.Integer.Properties.i≤j⇒i⊓j≡i
d_i'8804'j'8658'i'8851'j'8801'i_6302 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8804'j'8658'i'8851'j'8801'i_6302 = erased
-- Data.Integer.Properties.i≥j⇒i⊓j≡j
d_i'8805'j'8658'i'8851'j'8801'j_6308 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8805'j'8658'i'8851'j'8801'j_6308 = erased
-- Data.Integer.Properties.i≤j⇒i⊔j≡j
d_i'8804'j'8658'i'8852'j'8801'j_6314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8804'j'8658'i'8852'j'8801'j_6314 = erased
-- Data.Integer.Properties.i≥j⇒i⊔j≡i
d_i'8805'j'8658'i'8852'j'8801'i_6320 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8805'j'8658'i'8852'j'8801'i_6320 = erased
-- Data.Integer.Properties.⊓-operator
d_'8851''45'operator_6326 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98
d_'8851''45'operator_6326
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1121
      (coe MAlonzo.Code.Data.Integer.Base.d__'8851'__340) erased erased
-- Data.Integer.Properties.⊔-operator
d_'8852''45'operator_6328 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_'8852''45'operator_6328
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1659
      (coe MAlonzo.Code.Data.Integer.Base.d__'8852'__322) erased erased
-- Data.Integer.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_6332 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_6332 = erased
-- Data.Integer.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_6334 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_6334 = erased
-- Data.Integer.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_6336 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_6336 = erased
-- Data.Integer.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_6338 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_6338 = erased
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_6340 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'x_6340
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_6342 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'x'8851'z'8804'y_6342
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_6344 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'z'8851'x'8804'y_6344
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_6346 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'x'8851'z'8804'y_6346
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_6348 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8658'z'8851'x'8804'y_6348
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_6350 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'y_6350
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_6352 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'z_6352
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_6354 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'y_6354
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_6356 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'x'8658'x'8804'y_6356
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_6358 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'y'8658'y'8804'x_6358
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_6360 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'x_6360
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_6362 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'x'8852'y_6362
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3188
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_6364 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8804'y_6364
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_6366 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'x'8658'x'8804'y_6366
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_6368 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8851'y'8776'y'8658'y'8804'x_6368
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_6370 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'y_6370
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_6372 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_x'8804'y'8851'z'8658'x'8804'z_6372
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_6374 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_6374 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_6376 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_6376 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_6378 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_6378
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2922
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_6380 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_6380 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_6382 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_6382
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2924
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_6390 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_6390
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3008
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_6392 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_6392 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_6394 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_6394 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_6396 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'glb_6396
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_6398 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_6398 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_6406 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_6406
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2904
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_6408 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_6408
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2906
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_6410 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_6410
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2900
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_6414 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_6414
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2908
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_6416 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_6416
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_6418 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_6418
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2918
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_6420 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'45''8804'_6420
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_6424 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'691''45''8804'_6424
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3136
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_6426 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'737''45''8804'_6426
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3126
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_6430 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_6430
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2858
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_6432 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_6432
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2926
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_6434 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_6434
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2920
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_6436 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_6436 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_6444 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_6444
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3088
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_6446 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_6446 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_6448 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_6448 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_6450 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_6450
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2922
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_6452 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_6452 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_6454 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_6454
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2924
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_6462 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_6462
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3040
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_6464 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_6464 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_6466 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_6466 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_6468 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_6468 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_6476 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_6476
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2904
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_6478 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_6478
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2906
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_6480 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_6480
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2900
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_6484 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_6484
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2908
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_6486 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_6486
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_6488 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'glb_6488
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_6490 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_6490
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2918
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_6492 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'45''8804'_6492
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_6496 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'691''45''8804'_6496
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3136
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_6498 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8851''45'mono'737''45''8804'_6498
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3126
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_6500 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_6500
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2858
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_6502 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_6502
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2926
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_6504 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_6504
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2920
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_6506 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_6506 = erased
-- Data.Integer.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_6514 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_6514
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3086
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_6518 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2530
d_'8851''45'isSemilattice_6518
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_6520 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_6520
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe v0) (coe v1)))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_6522 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8851''45''8852''45'distributiveLattice_6522
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_806
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_6524 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2904
d_'8851''45''8852''45'isDistributiveLattice_6524
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_796
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_6526 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2830
d_'8851''45''8852''45'isLattice_6526
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_794
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_6528 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8851''45''8852''45'lattice_6528
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_802
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_6530 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2530
d_'8851''45'isSemilattice_6530
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_6532 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_6532
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_6534 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8852''45''8851''45'distributiveLattice_6534
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_804
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_6536 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2904
d_'8852''45''8851''45'isDistributiveLattice_6536
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_798
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_6538 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2830
d_'8852''45''8851''45'isLattice_6538
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_792
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_6540 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8852''45''8851''45'lattice_6540
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_800
      (coe d_'8804''45'totalPreorder_2682)
      (coe d_'8851''45'operator_6326) (coe d_'8852''45'operator_6328)
-- Data.Integer.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_6548 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_6548 = erased
-- Data.Integer.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_6558 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_6558 = erased
-- Data.Integer.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_6568 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_6568 = erased
-- Data.Integer.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_6578 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
   MAlonzo.Code.Data.Integer.Base.T__'8804'__26) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_6578 = erased
-- Data.Integer.Properties.mono-<-distrib-⊓
d_mono'45''60''45'distrib'45''8851'_6588 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8851'_6588 = erased
-- Data.Integer.Properties.mono-<-distrib-⊔
d_mono'45''60''45'distrib'45''8852'_6636 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8852'_6636 = erased
-- Data.Integer.Properties.antimono-<-distrib-⊔
d_antimono'45''60''45'distrib'45''8852'_6684 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''60''45'distrib'45''8852'_6684 = erased
-- Data.Integer.Properties.antimono-<-distrib-⊓
d_antimono'45''60''45'distrib'45''8851'_6732 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
   MAlonzo.Code.Data.Integer.Base.T__'60'__50) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''60''45'distrib'45''8851'_6732 = erased
-- Data.Integer.Properties.neg-distrib-⊔-⊓
d_neg'45'distrib'45''8852''45''8851'_6778 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''8852''45''8851'_6778 = erased
-- Data.Integer.Properties.neg-distrib-⊓-⊔
d_neg'45'distrib'45''8851''45''8852'_6784 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''8851''45''8852'_6784 = erased
-- Data.Integer.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_6794 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonNeg_6794 = erased
-- Data.Integer.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_6810 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonNeg_6810 = erased
-- Data.Integer.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_6826 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonPos_6826 = erased
-- Data.Integer.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_6842 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonPos_6842 = erased
-- Data.Integer.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_6858 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonNeg_6858 = erased
-- Data.Integer.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_6874 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonNeg_6874 = erased
-- Data.Integer.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_6890 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonPos_6890 = erased
-- Data.Integer.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_6906 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonPos_6906 = erased
-- Data.Integer.Properties.neg-mono-<->
d_neg'45'mono'45''60''45''62'_6914 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_neg'45'mono'45''60''45''62'_6914 = coe d_neg'45'mono'45''60'_3172
-- Data.Integer.Properties.neg-mono-≤-≥
d_neg'45'mono'45''8804''45''8805'_6916 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_neg'45'mono'45''8804''45''8805'_6916 v0 v1 v2
  = coe du_neg'45'mono'45''8804'_3142 v1 v2
-- Data.Integer.Properties.*-monoʳ-≤-non-neg
d_'42''45'mono'691''45''8804''45'non'45'neg_6918 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'non'45'neg_6918 v0 v1 v2 v3 v4
  = coe du_'42''45'mono'691''45''8804''45'nonNeg_5922 v0 v2 v3 v4
-- Data.Integer.Properties.*-monoˡ-≤-non-neg
d_'42''45'mono'737''45''8804''45'non'45'neg_6920 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'non'45'neg_6920 v0 v1 v2 v3
  = coe du_'42''45'mono'737''45''8804''45'nonNeg_5964 v0 v2 v3
-- Data.Integer.Properties.*-cancelˡ-<-non-neg
d_'42''45'cancel'737''45''60''45'non'45'neg_6922 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'737''45''60''45'non'45'neg_6922 v0 v1 v2 v3 v4
  = coe du_'42''45'cancel'737''45''60''45'nonNeg_6134 v0 v1 v2 v4
-- Data.Integer.Properties.*-cancelʳ-<-non-neg
d_'42''45'cancel'691''45''60''45'non'45'neg_6924 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_'42''45'cancel'691''45''60''45'non'45'neg_6924 v0 v1 v2 v3
  = coe du_'42''45'cancel'691''45''60''45'nonNeg_6172 v0 v1 v2
-- Data.Integer.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_6926 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_6926 = erased
-- Data.Integer.Properties.m⊓n≡m⇒m≤n
d_m'8851'n'8801'm'8658'm'8804'n_6928 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8801'm'8658'm'8804'n_6928
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_6930 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_6930 = erased
-- Data.Integer.Properties.m⊓n≡n⇒m≥n
d_m'8851'n'8801'n'8658'm'8805'n_6932 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8801'n'8658'm'8805'n_6932
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m⊓n≤n
d_m'8851'n'8804'n_6934 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8804'n_6934
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m⊓n≤m
d_m'8851'n'8804'm_6936 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8851'n'8804'm_6936
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8851''45'operator_6326 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe v0) (coe v1)))
-- Data.Integer.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_6938 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_6938 = erased
-- Data.Integer.Properties.m⊔n≡n⇒m≤n
d_m'8852'n'8801'n'8658'm'8804'n_6940 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8852'n'8801'n'8658'm'8804'n_6940
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_6942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_6942 = erased
-- Data.Integer.Properties.m⊔n≡m⇒m≥n
d_m'8852'n'8801'm'8658'm'8805'n_6944 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8852'n'8801'm'8658'm'8805'n_6944
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.m≤m⊔n
d_m'8804'm'8852'n_6946 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'm'8852'n_6946
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.n≤m⊔n
d_n'8804'm'8852'n_6948 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_n'8804'm'8852'n_6948
  = let v0 = d_'8804''45'totalPreorder_2682 in
    coe
      (let v1 = d_'8852''45'operator_6328 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Integer.Properties.+-pos-monoʳ-≤
d_'43''45'pos'45'mono'691''45''8804'_6952 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'pos'45'mono'691''45''8804'_6952 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
        -> coe
             d_'8854''45'mono'691''45''8805''45''8804'_3886 (coe v0)
             (coe subInt (coe (0 :: Integer)) (coe v1))
             (coe subInt (coe (0 :: Integer)) (coe v2))
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_34 v6)
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             du_'8804''45'trans_2600
             (coe
                d_m'8854'n'8804'm_3774 (coe v0)
                (coe subInt (coe (0 :: Integer)) (coe v1)))
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352 (coe v0)))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
        -> coe
             MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3424
                (coe v0) (coe v2) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.+-neg-monoʳ-≤
d_'43''45'neg'45'mono'691''45''8804'_6968 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''45'neg'45'mono'691''45''8804'_6968 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34 v6
        -> let v7 = subInt (coe (-1 :: Integer)) (coe v1) in
           coe
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'691''45''8804'_3424
                   (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v7) (coe v6)))
      MAlonzo.Code.Data.Integer.Base.C_'45''8804''43'_40
        -> coe
             du_'8804''45'trans_2600
             (coe
                MAlonzo.Code.Data.Integer.Base.C_'45''8804''45'_34
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3352
                   (coe addInt (coe (1 :: Integer)) (coe v0))))
             (coe
                d_'45'1'43'm'8804'n'8854'm_3854
                (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v2))
      MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48 v6
        -> coe
             d_'8854''45'mono'737''45''8804'_3918
             (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
             (coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Integer.Properties.n≮n
d_n'8814'n_6982 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8814'n_6982 = erased
-- Data.Integer.Properties.∣n∣≡0⇒n≡0
d_'8739'n'8739''8801'0'8658'n'8801'0_6984 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'8739''8801'0'8658'n'8801'0_6984 = erased
-- Data.Integer.Properties.∣-n∣≡∣n∣
d_'8739''45'n'8739''8801''8739'n'8739'_6986 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'n'8739''8801''8739'n'8739'_6986 = erased
-- Data.Integer.Properties.0≤n⇒+∣n∣≡n
d_0'8804'n'8658''43''8739'n'8739''8801'n_6988 ::
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'n'8658''43''8739'n'8739''8801'n_6988 = erased
-- Data.Integer.Properties.+∣n∣≡n⇒0≤n
d_'43''8739'n'8739''8801'n'8658'0'8804'n_6990 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'43''8739'n'8739''8801'n'8658'0'8804'n_6990 v0 v1
  = coe du_'43''8739'i'8739''8801'i'8658'0'8804'i_3222
-- Data.Integer.Properties.+∣n∣≡n⊎+∣n∣≡-n
d_'43''8739'n'8739''8801'n'8846''43''8739'n'8739''8801''45'n_6992 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'43''8739'n'8739''8801'n'8846''43''8739'n'8739''8801''45'n_6992
  = coe
      d_'43''8739'i'8739''8801'i'8846''43''8739'i'8739''8801''45'i_3228
-- Data.Integer.Properties.∣m+n∣≤∣m∣+∣n∣
d_'8739'm'43'n'8739''8804''8739'm'8739''43''8739'n'8739'_6994 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'43'n'8739''8804''8739'm'8739''43''8739'n'8739'_6994
  = coe d_'8739'i'43'j'8739''8804''8739'i'8739''43''8739'j'8739'_3268
-- Data.Integer.Properties.∣m-n∣≤∣m∣+∣n∣
d_'8739'm'45'n'8739''8804''8739'm'8739''43''8739'n'8739'_6996 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8739'm'45'n'8739''8804''8739'm'8739''43''8739'n'8739'_6996
  = coe d_'8739'i'45'j'8739''8804''8739'i'8739''43''8739'j'8739'_3306
-- Data.Integer.Properties.signₙ◃∣n∣≡n
d_sign'8345''9667''8739'n'8739''8801'n_6998 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sign'8345''9667''8739'n'8739''8801'n_6998 = erased
-- Data.Integer.Properties.◃-≡
d_'9667''45''8801'_7000 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9667''45''8801'_7000 = erased
-- Data.Integer.Properties.∣m-n∣≡∣n-m∣
d_'8739'm'45'n'8739''8801''8739'n'45'm'8739'_7002 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801''8739'n'45'm'8739'_7002 = erased
-- Data.Integer.Properties.m≡n⇒m-n≡0
d_m'8801'n'8658'm'45'n'8801'0_7004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658'm'45'n'8801'0_7004 = erased
-- Data.Integer.Properties.m-n≡0⇒m≡n
d_m'45'n'8801'0'8658'm'8801'n_7006 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'45'n'8801'0'8658'm'8801'n_7006 = erased
-- Data.Integer.Properties.≤-steps
d_'8804''45'steps_7008 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'steps_7008 v0 v1 v2 v3 v4
  = coe du_i'8804'j'8658'i'8804'k'43'j_4440 v0 v1 v2 v4
-- Data.Integer.Properties.≤-steps-neg
d_'8804''45'steps'45'neg_7010 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'steps'45'neg_7010 v0 v1 v2 v3 v4
  = coe du_i'8804'j'8658'i'45'k'8804'j_4714 v0 v2 v4
-- Data.Integer.Properties.≤-step
d_'8804''45'step_7012 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'step_7012 = coe d_i'8804'j'8658'i'8804'1'43'j_4810
-- Data.Integer.Properties.≤-step-neg
d_'8804''45'step'45'neg_7014 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'8804''45'step'45'neg_7014 v0 v1 v2
  = coe du_i'8804'j'8658'pred'91'i'93''8804'j_4978 v2
-- Data.Integer.Properties.m≤n⇒m-n≤0
d_m'8804'n'8658'm'45'n'8804'0_7016 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'n'8658'm'45'n'8804'0_7016
  = coe d_i'8804'j'8658'i'45'j'8804'0_4748
-- Data.Integer.Properties.m-n≤0⇒m≤n
d_m'45'n'8804'0'8658'm'8804'n_7018 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'45'n'8804'0'8658'm'8804'n_7018
  = coe d_i'45'j'8804'0'8658'i'8804'j_4774
-- Data.Integer.Properties.m≤n⇒0≤n-m
d_m'8804'n'8658'0'8804'n'45'm_7020 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'n'8658'0'8804'n'45'm_7020
  = coe d_i'8804'j'8658'0'8804'j'45'i_4786
-- Data.Integer.Properties.0≤n-m⇒m≤n
d_0'8804'n'45'm'8658'm'8804'n_7022 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_0'8804'n'45'm'8658'm'8804'n_7022
  = coe d_0'8804'i'45'j'8658'j'8804'i_4798
-- Data.Integer.Properties.n≤1+n
d_n'8804'1'43'n_7024 ::
  Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_n'8804'1'43'n_7024 = coe d_i'8804'suc'91'i'93'_4814
-- Data.Integer.Properties.n≢1+n
d_n'8802'1'43'n_7026 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'8802'1'43'n_7026 = erased
-- Data.Integer.Properties.m≤pred[n]⇒m<n
d_m'8804'pred'91'n'93''8658'm'60'n_7028 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_m'8804'pred'91'n'93''8658'm'60'n_7028 v0 v1 v2
  = coe du_i'8804'pred'91'j'93''8658'i'60'j_4956 v1 v2
-- Data.Integer.Properties.m<n⇒m≤pred[n]
d_m'60'n'8658'm'8804'pred'91'n'93'_7030 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'60'n'8658'm'8804'pred'91'n'93'_7030 v0 v1 v2
  = coe du_i'60'j'8658'i'8804'pred'91'j'93'_4966 v1 v2
-- Data.Integer.Properties.-1*n≡-n
d_'45'1'42'n'8801''45'n_7032 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45'1'42'n'8801''45'n_7032 = erased
-- Data.Integer.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_7034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_7034 v0 v1 v2
  = coe du_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5666 v0
-- Data.Integer.Properties.∣m*n∣≡∣m∣*∣n∣
d_'8739'm'42'n'8739''8801''8739'm'8739''42''8739'n'8739'_7036 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'42'n'8739''8801''8739'm'8739''42''8739'n'8739'_7036
  = erased
-- Data.Integer.Properties.n≤m+n
d_n'8804'm'43'n_7040 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_n'8804'm'43'n_7040 v0 v1
  = coe du_i'8804'j'43'i_4454 (coe v0) (coe v1)
-- Data.Integer.Properties.m≤m+n
d_m'8804'm'43'n_7048 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'8804'm'43'n_7048 v0 v1
  = coe du_i'8804'i'43'j_4466 (coe v0) (coe v1)
-- Data.Integer.Properties.m-n≤m
d_m'45'n'8804'm_7058 ::
  Integer -> Integer -> MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_m'45'n'8804'm_7058 v0 v1
  = coe du_i'45'j'8804'i_4742 (coe v0) (coe v1)
-- Data.Integer.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_7068 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'pos_7068 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_5922
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_7076 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'pos_7076 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonNeg_5964
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_7084 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'737''45''8804''45'neg_7084 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''8804''45'nonPos_6032
      (coe subInt (coe (-1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_7092 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_'42''45'mono'691''45''8804''45'neg_7092 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonPos_6060
      (coe subInt (coe (-1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Integer.Properties.pos-+-commute
d_pos'45''43''45'commute_7096 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45''43''45'commute_7096 = erased
-- Data.Integer.Properties.abs-*-commute
d_abs'45''42''45'commute_7098 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_abs'45''42''45'commute_7098 = erased
-- Data.Integer.Properties.pos-distrib-*
d_pos'45'distrib'45''42'_7104 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pos'45'distrib'45''42'_7104 = erased
-- Data.Integer.Properties.+-isAbelianGroup
d_'43''45'isAbelianGroup_7110 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_7110
  = coe d_'43''45'0'45'isAbelianGroup_4298
