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
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.GCD
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Base
import qualified MAlonzo.Code.Data.Rational.Unnormalised.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
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
-- Data.Rational.Properties._.IsAlternativeMagma
d_IsAlternativeMagma_140 a0 = ()
-- Data.Rational.Properties._.IsBand
d_IsBand_142 a0 = ()
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_144 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsCommutativeMagma
d_IsCommutativeMagma_146 a0 = ()
-- Data.Rational.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_148 a0 a1 = ()
-- Data.Rational.Properties._.IsCommutativeRing
d_IsCommutativeRing_150 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_152 a0 = ()
-- Data.Rational.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_154 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_156 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsFlexibleMagma
d_IsFlexibleMagma_158 a0 = ()
-- Data.Rational.Properties._.IsGroup
d_IsGroup_160 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_162 a0 a1 = ()
-- Data.Rational.Properties._.IsIdempotentMagma
d_IsIdempotentMagma_164 a0 = ()
-- Data.Rational.Properties._.IsIdempotentSemiring
d_IsIdempotentSemiring_166 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsInvertibleMagma
d_IsInvertibleMagma_168 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_170 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsKleeneAlgebra
d_IsKleeneAlgebra_172 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsLeftBolLoop
d_IsLeftBolLoop_174 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsLoop
d_IsLoop_176 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsMagma
d_IsMagma_178 a0 = ()
-- Data.Rational.Properties._.IsMedialMagma
d_IsMedialMagma_180 a0 = ()
-- Data.Rational.Properties._.IsMiddleBolLoop
d_IsMiddleBolLoop_182 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsMonoid
d_IsMonoid_184 a0 a1 = ()
-- Data.Rational.Properties._.IsMoufangLoop
d_IsMoufangLoop_186 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsNearSemiring
d_IsNearSemiring_188 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsNearring
d_IsNearring_190 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsNonAssociativeRing
d_IsNonAssociativeRing_192 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsQuasigroup
d_IsQuasigroup_194 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsQuasiring
d_IsQuasiring_196 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsRightBolLoop
d_IsRightBolLoop_198 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsRing
d_IsRing_200 a0 a1 a2 a3 a4 = ()
-- Data.Rational.Properties._.IsRingWithoutOne
d_IsRingWithoutOne_202 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsSelectiveMagma
d_IsSelectiveMagma_204 a0 = ()
-- Data.Rational.Properties._.IsSemigroup
d_IsSemigroup_206 a0 = ()
-- Data.Rational.Properties._.IsSemimedialMagma
d_IsSemimedialMagma_208 a0 = ()
-- Data.Rational.Properties._.IsSemiring
d_IsSemiring_210 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_212 a0 a1 a2 a3 = ()
-- Data.Rational.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_214 a0 a1 a2 = ()
-- Data.Rational.Properties._.IsUnitalMagma
d_IsUnitalMagma_216 a0 a1 = ()
-- Data.Rational.Properties._.IsAbelianGroup.assoc
d_assoc_222 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_222 = erased
-- Data.Rational.Properties._.IsAbelianGroup.comm
d_comm_224 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_224 = erased
-- Data.Rational.Properties._.IsAbelianGroup.identity
d_identity_226 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Rational.Properties._.IsAbelianGroup.inverse
d_inverse_232 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_908
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Rational.Properties._.IsAbelianGroup.isEquivalence
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
-- Data.Rational.Properties._.IsAbelianGroup.isGroup
d_isGroup_246 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_246 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)
-- Data.Rational.Properties._.IsAbelianGroup.isMagma
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
-- Data.Rational.Properties._.IsAbelianGroup.isMonoid
d_isMonoid_254 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_906
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0))
-- Data.Rational.Properties._.IsAbelianGroup.isSemigroup
d_isSemigroup_258 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_906
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_992 (coe v0)))
-- Data.Rational.Properties._.IsAbelianGroup.sym
d_sym_268 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_268 = erased
-- Data.Rational.Properties._.IsAbelianGroup.⁻¹-cong
d_'8315''185''45'cong_276 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_276 = erased
-- Data.Rational.Properties._.IsAbelianGroup.∙-cong
d_'8729''45'cong_278 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_278 = erased
-- Data.Rational.Properties._.IsAlternativeMagma.alter
d_alter_286 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_286 v0
  = coe MAlonzo.Code.Algebra.Structures.d_alter_262 (coe v0)
-- Data.Rational.Properties._.IsAlternativeMagma.isEquivalence
d_isEquivalence_292 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0))
-- Data.Rational.Properties._.IsAlternativeMagma.isMagma
d_isMagma_294 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_294 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_260 (coe v0)
-- Data.Rational.Properties._.IsAlternativeMagma.sym
d_sym_304 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_304 = erased
-- Data.Rational.Properties._.IsAlternativeMagma.∙-cong
d_'8729''45'cong_308 ::
  MAlonzo.Code.Algebra.Structures.T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_308 = erased
-- Data.Rational.Properties._.IsBand.assoc
d_assoc_316 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_316 = erased
-- Data.Rational.Properties._.IsBand.idem
d_idem_318 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_318 = erased
-- Data.Rational.Properties._.IsBand.isEquivalence
d_isEquivalence_320 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_320 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)))
-- Data.Rational.Properties._.IsBand.isMagma
d_isMagma_322 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_322 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0))
-- Data.Rational.Properties._.IsBand.isSemigroup
d_isSemigroup_326 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_484 (coe v0)
-- Data.Rational.Properties._.IsBand.sym
d_sym_334 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_334 = erased
-- Data.Rational.Properties._.IsBand.∙-cong
d_'8729''45'cong_338 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_338 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.*-assoc
d_'42''45'assoc_346 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_346 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_348 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45'nonZero_348 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.*-comm
d_'42''45'comm_350 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_350 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.*-cong
d_'42''45'cong_352 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_352 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.*-identity
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.assoc
d_assoc_376 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_376 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.comm
d_comm_378 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_378 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.∙-cong
d_'8729''45'cong_380 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_380 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.identity
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.+-isCommutativeMonoid
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isMagma
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isMonoid
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.distrib
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_412 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
      (coe v0)
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isSemiring
d_isSemiring_422 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_422 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1540
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1660
         (coe v0))
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.isSemiringWithoutAnnihilatingZero
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
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.sym
d_sym_434 ::
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_434 = erased
-- Data.Rational.Properties._.IsCancellativeCommutativeSemiring.zero
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
-- Data.Rational.Properties._.IsCommutativeMagma.comm
d_comm_446 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_446 = erased
-- Data.Rational.Properties._.IsCommutativeMagma.isEquivalence
d_isEquivalence_448 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0))
-- Data.Rational.Properties._.IsCommutativeMagma.isMagma
d_isMagma_450 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_450 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_188 (coe v0)
-- Data.Rational.Properties._.IsCommutativeMagma.sym
d_sym_460 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_460 = erased
-- Data.Rational.Properties._.IsCommutativeMagma.∙-cong
d_'8729''45'cong_464 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_464 = erased
-- Data.Rational.Properties._.IsCommutativeMonoid.assoc
d_assoc_472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_472 = erased
-- Data.Rational.Properties._.IsCommutativeMonoid.comm
d_comm_474 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_474 = erased
-- Data.Rational.Properties._.IsCommutativeMonoid.identity
d_identity_476 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_476 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Rational.Properties._.IsCommutativeMonoid.isEquivalence
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
-- Data.Rational.Properties._.IsCommutativeMonoid.isMagma
d_isMagma_488 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeMonoid.isMonoid
d_isMonoid_490 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0)
-- Data.Rational.Properties._.IsCommutativeMonoid.isSemigroup
d_isSemigroup_494 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_664 (coe v0))
-- Data.Rational.Properties._.IsCommutativeMonoid.sym
d_sym_504 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_504 = erased
-- Data.Rational.Properties._.IsCommutativeMonoid.∙-cong
d_'8729''45'cong_508 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_508 = erased
-- Data.Rational.Properties._.IsCommutativeRing.*-assoc
d_'42''45'assoc_518 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_518 = erased
-- Data.Rational.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_520 = erased
-- Data.Rational.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_522 = erased
-- Data.Rational.Properties._.IsCommutativeRing.*-identity
d_'42''45'identity_528 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Rational.Properties._.IsCommutativeRing.assoc
d_assoc_546 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_546 = erased
-- Data.Rational.Properties._.IsCommutativeRing.comm
d_comm_548 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_548 = erased
-- Data.Rational.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_550 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_550 = erased
-- Data.Rational.Properties._.IsCommutativeRing.identity
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
-- Data.Rational.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Rational.Properties._.IsCommutativeRing.isGroup
d_isGroup_570 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_570 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeRing.isMagma
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
-- Data.Rational.Properties._.IsCommutativeRing.isMonoid
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
-- Data.Rational.Properties._.IsCommutativeRing.isSemigroup
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
-- Data.Rational.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_584 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_584 = erased
-- Data.Rational.Properties._.IsCommutativeRing.inverse
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
-- Data.Rational.Properties._.IsCommutativeRing.distrib
d_distrib_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2512
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Rational.Properties._.IsCommutativeRing.isEquivalence
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
-- Data.Rational.Properties._.IsCommutativeRing.isRing
d_isRing_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_608 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0)
-- Data.Rational.Properties._.IsCommutativeRing.sym
d_sym_622 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_622 = erased
-- Data.Rational.Properties._.IsCommutativeRing.zero
d_zero_630 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2514
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2642 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemigroup.assoc
d_assoc_638 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_638 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.comm
d_comm_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_640 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_644 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_650 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_650 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)
-- Data.Rational.Properties._.IsCommutativeSemigroup.sym
d_sym_658 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_658 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_662 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_662 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_670 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_670 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_672 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_674 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_680 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemiring.assoc
d_assoc_698 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_698 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.comm
d_comm_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_700 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_702 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.identity
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
-- Data.Rational.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_716 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemiring.isMagma
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
-- Data.Rational.Properties._.IsCommutativeSemiring.isMonoid
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
-- Data.Rational.Properties._.IsCommutativeSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsCommutativeSemiring.distrib
d_distrib_728 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_742 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_742 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)
-- Data.Rational.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiring.sym
d_sym_754 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_754 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.zero
d_zero_758 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_770 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_770 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_772 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_774 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_788 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_788 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_792 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
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
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_800 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1170
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_808 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
      (coe v0)
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_822 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_822 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1172
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Rational.Properties._.IsFlexibleMagma.flex
d_flex_830 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_830 = erased
-- Data.Rational.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_832 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Rational.Properties._.IsFlexibleMagma.isMagma
d_isMagma_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_834 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Rational.Properties._.IsFlexibleMagma.sym
d_sym_844 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_844 = erased
-- Data.Rational.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_848 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_848 = erased
-- Data.Rational.Properties._.IsGroup.assoc
d_assoc_858 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_858 = erased
-- Data.Rational.Properties._.IsGroup.identity
d_identity_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Rational.Properties._.IsGroup.inverse
d_inverse_866 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_866 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_908 (coe v0)
-- Data.Rational.Properties._.IsGroup.isEquivalence
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
-- Data.Rational.Properties._.IsGroup.isMagma
d_isMagma_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_878 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)))
-- Data.Rational.Properties._.IsGroup.isMonoid
d_isMonoid_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_880 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)
-- Data.Rational.Properties._.IsGroup.isSemigroup
d_isSemigroup_884 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_884 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Rational.Properties._.IsGroup.sym
d_sym_894 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_894 = erased
-- Data.Rational.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_902 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_902 = erased
-- Data.Rational.Properties._.IsGroup.∙-cong
d_'8729''45'cong_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_904 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_912 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_912 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_914 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_916 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_916 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.identity
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_928 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_928 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isMagma
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_936 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_950 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_950 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_954 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_954 = erased
-- Data.Rational.Properties._.IsIdempotentMagma.idem
d_idem_962 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_962 = erased
-- Data.Rational.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Rational.Properties._.IsIdempotentMagma.isMagma
d_isMagma_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_966 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Rational.Properties._.IsIdempotentMagma.sym
d_sym_976 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_976 = erased
-- Data.Rational.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_980 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_980 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_988 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_988 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_990 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_996 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Rational.Properties._.IsIdempotentSemiring.assoc
d_assoc_1008 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1008 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.comm
d_comm_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1010 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1012 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1018 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1018 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.identity
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
-- Data.Rational.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1028 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Rational.Properties._.IsIdempotentSemiring.isMagma
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
-- Data.Rational.Properties._.IsIdempotentSemiring.isMonoid
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
-- Data.Rational.Properties._.IsIdempotentSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsIdempotentSemiring.distrib
d_distrib_1040 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Rational.Properties._.IsIdempotentSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1052 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1052 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)
-- Data.Rational.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1054 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Rational.Properties._.IsIdempotentSemiring.sym
d_sym_1064 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1064 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.zero
d_zero_1068 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1068 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Rational.Properties._.IsInvertibleMagma.inverse
d_inverse_1076 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1076 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_796 (coe v0)
-- Data.Rational.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1082 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1082 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0))
-- Data.Rational.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1084 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0)
-- Data.Rational.Properties._.IsInvertibleMagma.sym
d_sym_1094 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1094 = erased
-- Data.Rational.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1098 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1098 = erased
-- Data.Rational.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1100 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1100 = erased
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1108 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1108 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_846 (coe v0)
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1114 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.isEquivalence
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
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1122 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_1122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_794
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1136 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1136 = erased
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1140 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1140 = erased
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1142 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1142 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1150 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1150 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1152 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.*-identity
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
-- Data.Rational.Properties._.IsKleeneAlgebra.assoc
d_assoc_1170 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1170 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.comm
d_comm_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1172 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1174 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1180 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1180 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.identity
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
-- Data.Rational.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isMagma
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isMonoid
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isSemigroup
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
-- Data.Rational.Properties._.IsKleeneAlgebra.distrib
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isEquivalence
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1210 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768
d_isIdempotentSemiring_1210 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
      (coe v0)
-- Data.Rational.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1216 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1216 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
         (coe v0))
-- Data.Rational.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
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
-- Data.Rational.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1228 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1228 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_1902 (coe v0)
-- Data.Rational.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1234 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1234 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_1900 (coe v0)
-- Data.Rational.Properties._.IsKleeneAlgebra.sym
d_sym_1240 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1240 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.zero
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
-- Data.Rational.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1252 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1252 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1258 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1258 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.identity
d_identity_1264 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1264 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Rational.Properties._.IsLeftBolLoop.isEquivalence
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
-- Data.Rational.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1272 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1272 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)
-- Data.Rational.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Rational.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1278 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Rational.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1280 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1282 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Rational.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1292 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Rational.Properties._.IsLeftBolLoop.sym
d_sym_1300 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1300 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1304 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1304 = erased
-- Data.Rational.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1312 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1312 = erased
-- Data.Rational.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1318 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1318 = erased
-- Data.Rational.Properties._.IsLoop.identity
d_identity_1324 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1324 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_2870 (coe v0)
-- Data.Rational.Properties._.IsLoop.isEquivalence
d_isEquivalence_1330 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)))
-- Data.Rational.Properties._.IsLoop.isMagma
d_isMagma_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Rational.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1336 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1336 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)
-- Data.Rational.Properties._.IsLoop.leftDivides
d_leftDivides_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Rational.Properties._.IsLoop.rightDivides
d_rightDivides_1348 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1348 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Rational.Properties._.IsLoop.sym
d_sym_1356 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1356 = erased
-- Data.Rational.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1360 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1360 = erased
-- Data.Rational.Properties._.IsMagma.isEquivalence
d_isEquivalence_1368 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1368 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v0)
-- Data.Rational.Properties._.IsMagma.sym
d_sym_1378 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1378 = erased
-- Data.Rational.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1382 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1382 = erased
-- Data.Rational.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1390 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0))
-- Data.Rational.Properties._.IsMedialMagma.isMagma
d_isMagma_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1392 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0)
-- Data.Rational.Properties._.IsMedialMagma.medial
d_medial_1396 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1396 = erased
-- Data.Rational.Properties._.IsMedialMagma.sym
d_sym_1404 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1404 = erased
-- Data.Rational.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1408 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1408 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1416 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1416 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1422 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1422 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.identity
d_identity_1428 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Rational.Properties._.IsMiddleBolLoop.isEquivalence
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
-- Data.Rational.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1436 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1436 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)
-- Data.Rational.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1438 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Rational.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1442 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Rational.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Rational.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1450 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1450 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1456 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Rational.Properties._.IsMiddleBolLoop.sym
d_sym_1464 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1464 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1468 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1468 = erased
-- Data.Rational.Properties._.IsMonoid.assoc
d_assoc_1476 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1476 = erased
-- Data.Rational.Properties._.IsMonoid.identity
d_identity_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1478 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_616 (coe v0)
-- Data.Rational.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1484 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1484 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)))
-- Data.Rational.Properties._.IsMonoid.isMagma
d_isMagma_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0))
-- Data.Rational.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1490 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1490 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)
-- Data.Rational.Properties._.IsMonoid.sym
d_sym_1500 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1500 = erased
-- Data.Rational.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1504 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1504 = erased
-- Data.Rational.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1512 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1512 = erased
-- Data.Rational.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1518 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1518 = erased
-- Data.Rational.Properties._.IsMoufangLoop.identical
d_identical_1524 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1524 = erased
-- Data.Rational.Properties._.IsMoufangLoop.identity
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
-- Data.Rational.Properties._.IsMoufangLoop.isEquivalence
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
-- Data.Rational.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1534 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932
d_isLeftBolLoop_1534 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)
-- Data.Rational.Properties._.IsMoufangLoop.isLoop
d_isLoop_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_2946
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))
-- Data.Rational.Properties._.IsMoufangLoop.isMagma
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
-- Data.Rational.Properties._.IsMoufangLoop.isQuasigroup
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
-- Data.Rational.Properties._.IsMoufangLoop.leftBol
d_leftBol_1544 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1544 = erased
-- Data.Rational.Properties._.IsMoufangLoop.leftDivides
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
-- Data.Rational.Properties._.IsMoufangLoop.rightBol
d_rightBol_1556 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1556 = erased
-- Data.Rational.Properties._.IsMoufangLoop.rightDivides
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
-- Data.Rational.Properties._.IsMoufangLoop.sym
d_sym_1566 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1566 = erased
-- Data.Rational.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1570 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1570 = erased
-- Data.Rational.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1578 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1578 = erased
-- Data.Rational.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1580 = erased
-- Data.Rational.Properties._.IsNearSemiring.assoc
d_assoc_1590 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1590 = erased
-- Data.Rational.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1592 = erased
-- Data.Rational.Properties._.IsNearSemiring.identity
d_identity_1598 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Rational.Properties._.IsNearSemiring.isMagma
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
-- Data.Rational.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1606 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)
-- Data.Rational.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Rational.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1612 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1612 = erased
-- Data.Rational.Properties._.IsNearSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsNearSemiring.sym
d_sym_1624 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1624 = erased
-- Data.Rational.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1628 = erased
-- Data.Rational.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1632 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1632 = erased
-- Data.Rational.Properties._.IsNearring.*-cong
d_'42''45'cong_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1634 = erased
-- Data.Rational.Properties._.IsNearring.*-identity
d_'42''45'identity_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1640 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Rational.Properties._.IsNearring.assoc
d_assoc_1652 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1652 = erased
-- Data.Rational.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1654 = erased
-- Data.Rational.Properties._.IsNearring.identity
d_identity_1660 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1660 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)))
-- Data.Rational.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1666 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2388 (coe v0)
-- Data.Rational.Properties._.IsNearring.isMagma
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
-- Data.Rational.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1674 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Rational.Properties._.IsNearring.isSemigroup
d_isSemigroup_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)))
-- Data.Rational.Properties._.IsNearring.distrib
d_distrib_1680 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1680 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2038
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Rational.Properties._.IsNearring.isEquivalence
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
-- Data.Rational.Properties._.IsNearring.isQuasiring
d_isQuasiring_1694 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008
d_isQuasiring_1694 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0)
-- Data.Rational.Properties._.IsNearring.sym
d_sym_1702 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1702 = erased
-- Data.Rational.Properties._.IsNearring.zero
d_zero_1706 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1706 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2040
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2386 (coe v0))
-- Data.Rational.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1712 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2368 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1712 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1718 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1718 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1724 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2264 (coe v0)
-- Data.Rational.Properties._.IsNonAssociativeRing.assoc
d_assoc_1734 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1734 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.comm
d_comm_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1736 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1738 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.identity
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
-- Data.Rational.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1750 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_1750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
      (coe v0)
-- Data.Rational.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1758 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_1758 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2260
         (coe v0))
-- Data.Rational.Properties._.IsNonAssociativeRing.isMagma
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
-- Data.Rational.Properties._.IsNonAssociativeRing.isMonoid
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
-- Data.Rational.Properties._.IsNonAssociativeRing.isSemigroup
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
-- Data.Rational.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1772 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1772 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.inverse
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
-- Data.Rational.Properties._.IsNonAssociativeRing.distrib
d_distrib_1780 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1780 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2266 (coe v0)
-- Data.Rational.Properties._.IsNonAssociativeRing.isEquivalence
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
-- Data.Rational.Properties._.IsNonAssociativeRing.sym
d_sym_1796 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1796 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.zero
d_zero_1804 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1804 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2268 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1812 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1812 = erased
-- Data.Rational.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1818 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1818 = erased
-- Data.Rational.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1824 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0))
-- Data.Rational.Properties._.IsQuasigroup.isMagma
d_isMagma_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1826 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1830 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1830 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2796 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1840 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1840 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2798 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.sym
d_sym_1848 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1848 = erased
-- Data.Rational.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1852 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1852 = erased
-- Data.Rational.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1860 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1860 = erased
-- Data.Rational.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1862 = erased
-- Data.Rational.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1868 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036 (coe v0)
-- Data.Rational.Properties._.IsQuasiring.assoc
d_assoc_1880 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1880 = erased
-- Data.Rational.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1882 = erased
-- Data.Rational.Properties._.IsQuasiring.identity
d_identity_1888 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1888 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Rational.Properties._.IsQuasiring.isMagma
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
-- Data.Rational.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_1896 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1896 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)
-- Data.Rational.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1898 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Rational.Properties._.IsQuasiring.distrib
d_distrib_1902 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1902 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2038 (coe v0)
-- Data.Rational.Properties._.IsQuasiring.isEquivalence
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
-- Data.Rational.Properties._.IsQuasiring.sym
d_sym_1922 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1922 = erased
-- Data.Rational.Properties._.IsQuasiring.zero
d_zero_1926 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1926 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2040 (coe v0)
-- Data.Rational.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_1934 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1934 = erased
-- Data.Rational.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_1940 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1940 = erased
-- Data.Rational.Properties._.IsRightBolLoop.identity
d_identity_1946 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Rational.Properties._.IsRightBolLoop.isEquivalence
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
-- Data.Rational.Properties._.IsRightBolLoop.isLoop
d_isLoop_1954 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1954 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)
-- Data.Rational.Properties._.IsRightBolLoop.isMagma
d_isMagma_1956 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1956 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Rational.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_1960 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Rational.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Rational.Properties._.IsRightBolLoop.rightBol
d_rightBol_1972 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1972 = erased
-- Data.Rational.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Rational.Properties._.IsRightBolLoop.sym
d_sym_1982 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1982 = erased
-- Data.Rational.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_1986 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1986 = erased
-- Data.Rational.Properties._.IsRing.*-assoc
d_'42''45'assoc_1996 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1996 = erased
-- Data.Rational.Properties._.IsRing.*-cong
d_'42''45'cong_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1998 = erased
-- Data.Rational.Properties._.IsRing.*-identity
d_'42''45'identity_2004 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2004 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2510 (coe v0)
-- Data.Rational.Properties._.IsRing.assoc
d_assoc_2016 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2016 = erased
-- Data.Rational.Properties._.IsRing.comm
d_comm_2018 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2018 = erased
-- Data.Rational.Properties._.IsRing.∙-cong
d_'8729''45'cong_2020 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2020 = erased
-- Data.Rational.Properties._.IsRing.identity
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
-- Data.Rational.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2032 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2032 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
      (coe v0)
-- Data.Rational.Properties._.IsRing.isGroup
d_isGroup_2040 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2504
         (coe v0))
-- Data.Rational.Properties._.IsRing.isMagma
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
-- Data.Rational.Properties._.IsRing.isMonoid
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
-- Data.Rational.Properties._.IsRing.isSemigroup
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
-- Data.Rational.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2054 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2054 = erased
-- Data.Rational.Properties._.IsRing.inverse
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
-- Data.Rational.Properties._.IsRing.distrib
d_distrib_2062 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2062 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2512 (coe v0)
-- Data.Rational.Properties._.IsRing.isEquivalence
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
-- Data.Rational.Properties._.IsRing.sym
d_sym_2086 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2086 = erased
-- Data.Rational.Properties._.IsRing.zero
d_zero_2094 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2094 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2514 (coe v0)
-- Data.Rational.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2104 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2104 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2106 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2106 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.assoc
d_assoc_2116 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2116 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.comm
d_comm_2118 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2118 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2120 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.identity
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
-- Data.Rational.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2132 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
      (coe v0)
-- Data.Rational.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2140 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2134
         (coe v0))
-- Data.Rational.Properties._.IsRingWithoutOne.isMagma
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
-- Data.Rational.Properties._.IsRingWithoutOne.isMonoid
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
-- Data.Rational.Properties._.IsRingWithoutOne.isSemigroup
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
-- Data.Rational.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2154 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.inverse
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
-- Data.Rational.Properties._.IsRingWithoutOne.distrib
d_distrib_2162 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2162 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2140 (coe v0)
-- Data.Rational.Properties._.IsRingWithoutOne.isEquivalence
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
-- Data.Rational.Properties._.IsRingWithoutOne.sym
d_sym_2178 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2178 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.zero
d_zero_2186 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2186 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2142 (coe v0)
-- Data.Rational.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2194 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0))
-- Data.Rational.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2196 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2196 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0)
-- Data.Rational.Properties._.IsSelectiveMagma.sel
d_sel_2204 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2204 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0)
-- Data.Rational.Properties._.IsSelectiveMagma.sym
d_sym_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2208 = erased
-- Data.Rational.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2212 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2212 = erased
-- Data.Rational.Properties._.IsSemigroup.assoc
d_assoc_2220 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2220 = erased
-- Data.Rational.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2222 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0))
-- Data.Rational.Properties._.IsSemigroup.isMagma
d_isMagma_2224 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2224 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0)
-- Data.Rational.Properties._.IsSemigroup.sym
d_sym_2234 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2234 = erased
-- Data.Rational.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2238 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2238 = erased
-- Data.Rational.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2246 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2246 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0))
-- Data.Rational.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2248 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2248 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0)
-- Data.Rational.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2256 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2256 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_374 (coe v0)
-- Data.Rational.Properties._.IsSemimedialMagma.sym
d_sym_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2264 = erased
-- Data.Rational.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2268 = erased
-- Data.Rational.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2276 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2276 = erased
-- Data.Rational.Properties._.IsSemiring.*-cong
d_'42''45'cong_2278 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2278 = erased
-- Data.Rational.Properties._.IsSemiring.*-identity
d_'42''45'identity_2284 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Rational.Properties._.IsSemiring.assoc
d_assoc_2296 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2296 = erased
-- Data.Rational.Properties._.IsSemiring.comm
d_comm_2298 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2298 = erased
-- Data.Rational.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2300 = erased
-- Data.Rational.Properties._.IsSemiring.identity
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
-- Data.Rational.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2314 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Rational.Properties._.IsSemiring.isMagma
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
-- Data.Rational.Properties._.IsSemiring.isMonoid
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
-- Data.Rational.Properties._.IsSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsSemiring.distrib
d_distrib_2326 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2326 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Rational.Properties._.IsSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2338 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe v0)
-- Data.Rational.Properties._.IsSemiring.sym
d_sym_2348 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2348 = erased
-- Data.Rational.Properties._.IsSemiring.zero
d_zero_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2352 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1434 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2360 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2360 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2362 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2362 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2368 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2380 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2380 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2382 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2382 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2384 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.identity
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2398 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2404 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2404 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe v0))
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2410 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2410 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1344 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2426 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2426 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2436 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2436 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2438 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2438 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.comm
d_comm_2448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2448 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe v0))
-- Data.Rational.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2460 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1170 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutOne.zero
d_zero_2480 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2480 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1172 (coe v0)
-- Data.Rational.Properties._.IsUnitalMagma.identity
d_identity_2488 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2488 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_572 (coe v0)
-- Data.Rational.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2494 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0))
-- Data.Rational.Properties._.IsUnitalMagma.isMagma
d_isMagma_2496 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2496 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0)
-- Data.Rational.Properties._.IsUnitalMagma.sym
d_sym_2506 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2506 = erased
-- Data.Rational.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2510 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2510 = erased
-- Data.Rational.Properties.mkℚ-cong
d_mkℚ'45'cong_2534 ::
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
d_mkℚ'45'cong_2534 = erased
-- Data.Rational.Properties.mkℚ-injective
d_mkℚ'45'injective_2548 ::
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
d_mkℚ'45'injective_2548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_mkℚ'45'injective_2548
du_mkℚ'45'injective_2548 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkℚ'45'injective_2548
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties._≟_
d__'8799'__2550 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2550 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                    (coe MAlonzo.Code.Data.Product.Base.du_uncurry_244 erased)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                       (coe
                          MAlonzo.Code.Data.Integer.Properties.d__'8799'__2558 (coe v2)
                          (coe v5))
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550 (coe v3)
                          (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≡-setoid
d_'8801''45'setoid_2560 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2560
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Rational.Properties.≡-decSetoid
d_'8801''45'decSetoid_2562 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2562
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2550)
-- Data.Rational.Properties.mkℚ+-cong
d_mkℚ'43''45'cong_2580 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mkℚ'43''45'cong_2580 = erased
-- Data.Rational.Properties.mkℚ+-injective
d_mkℚ'43''45'injective_2598 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkℚ'43''45'injective_2598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_mkℚ'43''45'injective_2598
du_mkℚ'43''45'injective_2598 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkℚ'43''45'injective_2598
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.↥-mkℚ+
d_'8613''45'mkℚ'43'_2608 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'mkℚ'43'_2608 = erased
-- Data.Rational.Properties.↧-mkℚ+
d_'8615''45'mkℚ'43'_2622 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'mkℚ'43'_2622 = erased
-- Data.Rational.Properties.mkℚ+-nonNeg
d_mkℚ'43''45'nonNeg_2636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_mkℚ'43''45'nonNeg_2636 ~v0 ~v1 ~v2 ~v3
  = du_mkℚ'43''45'nonNeg_2636
du_mkℚ'43''45'nonNeg_2636 ::
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_mkℚ'43''45'nonNeg_2636
  = coe
      MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Rational.Properties.mkℚ+-pos
d_mkℚ'43''45'pos_2652 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_mkℚ'43''45'pos_2652 ~v0 ~v1 ~v2 ~v3 ~v4 = du_mkℚ'43''45'pos_2652
du_mkℚ'43''45'pos_2652 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_mkℚ'43''45'pos_2652
  = coe
      MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Rational.Properties.drop-*≡*
d_drop'45''42''8801''42'_2658 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''42''8801''42'_2658 = erased
-- Data.Rational.Properties.≡⇒≃
d_'8801''8658''8771'_2662 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
d_'8801''8658''8771'_2662 ~v0 ~v1 ~v2 = du_'8801''8658''8771'_2662
du_'8801''8658''8771'_2662 ::
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
du_'8801''8658''8771'_2662
  = coe MAlonzo.Code.Data.Rational.Base.C_'42''8801''42'_46
-- Data.Rational.Properties.≃⇒≡
d_'8771''8658''8801'_2664 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8771''8658''8801'_2664 = erased
-- Data.Rational.Properties._.1+d₁∣1+d₂
d_1'43'd'8321''8739'1'43'd'8322'_2684 ::
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
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_1'43'd'8321''8739'1'43'd'8322'_2684 v0 v1 ~v2 v3 v4 ~v5 ~v6
  = du_1'43'd'8321''8739'1'43'd'8322'_2684 v0 v1 v3 v4
du_1'43'd'8321''8739'1'43'd'8322'_2684 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_1'43'd'8321''8739'1'43'd'8322'_2684 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Coprimality.du_coprime'45'divisor_22
      (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v0)
      (coe addInt (coe (1 :: Integer)) (coe v3))
      (coe
         MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
         (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v2)))
-- Data.Rational.Properties._.1+d₂∣1+d₁
d_1'43'd'8322''8739'1'43'd'8321'_2686 ::
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
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_1'43'd'8322''8739'1'43'd'8321'_2686 v0 v1 ~v2 v3 v4 ~v5 ~v6
  = du_1'43'd'8322''8739'1'43'd'8321'_2686 v0 v1 v3 v4
du_1'43'd'8322''8739'1'43'd'8321'_2686 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_1'43'd'8322''8739'1'43'd'8321'_2686 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Coprimality.du_coprime'45'divisor_22
      (coe addInt (coe (1 :: Integer)) (coe v3)) (coe v2)
      (coe addInt (coe (1 :: Integer)) (coe v1))
      (coe
         MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
         (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
-- Data.Rational.Properties._.helper
d_helper_2688 ::
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
d_helper_2688 = erased
-- Data.Rational.Properties.≃-sym
d_'8771''45'sym_2698 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
d_'8771''45'sym_2698 ~v0 ~v1 = du_'8771''45'sym_2698
du_'8771''45'sym_2698 ::
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
du_'8771''45'sym_2698
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (\ v0 -> coe du_'8801''8658''8771'_2662)
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216 erased erased)
-- Data.Rational.Properties.↥p≡0⇒p≡0
d_'8613'p'8801'0'8658'p'8801'0_2702 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'8801'0'8658'p'8801'0_2702 = erased
-- Data.Rational.Properties._.d-1≡0
d_d'45'1'8801'0_2714 ::
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_d'45'1'8801'0_2714 = erased
-- Data.Rational.Properties.p≡0⇒↥p≡0
d_p'8801'0'8658''8613'p'8801'0_2718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8801'0'8658''8613'p'8801'0_2718 = erased
-- Data.Rational.Properties.↥p≡↥q≡0⇒p≡q
d_'8613'p'8801''8613'q'8801'0'8658'p'8801'q_2726 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'8801''8613'q'8801'0'8658'p'8801'q_2726 = erased
-- Data.Rational.Properties.nonNeg≢neg
d_nonNeg'8802'neg_2740 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonNeg'8802'neg_2740 = erased
-- Data.Rational.Properties.pos⇒nonNeg
d_pos'8658'nonNeg_2744 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_pos'8658'nonNeg_2744 v0 ~v1 = du_pos'8658'nonNeg_2744 v0
du_pos'8658'nonNeg_2744 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_pos'8658'nonNeg_2744 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_pos'8658'nonNeg_914
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
-- Data.Rational.Properties.neg⇒nonPos
d_neg'8658'nonPos_2750 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
d_neg'8658'nonPos_2750 v0 ~v1 = du_neg'8658'nonPos_2750 v0
du_neg'8658'nonPos_2750 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
du_neg'8658'nonPos_2750 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_neg'8658'nonPos_920
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
-- Data.Rational.Properties.nonNeg∧nonZero⇒pos
d_nonNeg'8743'nonZero'8658'pos_2756 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_nonNeg'8743'nonZero'8658'pos_2756 v0 ~v1 ~v2
  = du_nonNeg'8743'nonZero'8658'pos_2756 v0
du_nonNeg'8743'nonZero'8658'pos_2756 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_nonNeg'8743'nonZero'8658'pos_2756 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.pos⇒nonZero
d_pos'8658'nonZero_2760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_pos'8658'nonZero_2760 v0 ~v1 = du_pos'8658'nonZero_2760 v0
du_pos'8658'nonZero_2760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_pos'8658'nonZero_2760 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.neg⇒nonZero
d_neg'8658'nonZero_2764 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_neg'8658'nonZero_2764 v0 ~v1 = du_neg'8658'nonZero_2764 v0
du_neg'8658'nonZero_2764 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_neg'8658'nonZero_2764 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.↥-neg
d_'8613''45'neg_2768 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'neg_2768 = erased
-- Data.Rational.Properties.↧-neg
d_'8615''45'neg_2772 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'neg_2772 = erased
-- Data.Rational.Properties.neg-injective
d_neg'45'injective_2774 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'injective_2774 = erased
-- Data.Rational.Properties.neg-pos
d_neg'45'pos_2796 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_neg'45'pos_2796 v0 ~v1 = du_neg'45'pos_2796 v0
du_neg'45'pos_2796 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_neg'45'pos_2796 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1613
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.normalize-coprime
d_normalize'45'coprime_2804 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'coprime_2804 = erased
-- Data.Rational.Properties._.d
d_d_2816 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer
d_d_2816 ~v0 v1 ~v2 = du_d_2816 v1
du_d_2816 :: Integer -> Integer
du_d_2816 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Data.Rational.Properties._.g
d_g_2818 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer
d_g_2818 v0 v1 ~v2 = du_g_2818 v0 v1
du_g_2818 :: Integer -> Integer -> Integer
du_g_2818 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0)
      (coe du_d_2816 (coe v1))
-- Data.Rational.Properties._.c′
d_c'8242'_2820 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'8242'_2820 = erased
-- Data.Rational.Properties._.c₂
d_c'8322'_2822 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'8322'_2822 = erased
-- Data.Rational.Properties._.g≡1
d_g'8801'1_2824 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_g'8801'1_2824 = erased
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2826 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_g'8802'0_2826 v0 v1 ~v2 = du_g'8802'0_2826 v0 v1
du_g'8802'0_2826 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_g'8802'0_2826 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_118
      (coe
         MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0)
         (coe du_d_2816 (coe v1)))
-- Data.Rational.Properties.↥-normalize
d_'8613''45'normalize_2840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'normalize_2840 = erased
-- Data.Rational.Properties._.g
d_g_2850 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_g_2850 v0 v1 ~v2 = du_g_2850 v0 v1
du_g_2850 :: Integer -> Integer -> Integer
du_g_2850 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2852 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_g'8802'0_2852 v0 v1 ~v2 = du_g'8802'0_2852 v0 v1
du_g'8802'0_2852 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_g'8802'0_2852 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_118
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties._.i/g
d_i'47'g_2856 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_i'47'g_2856 v0 v1 ~v2 = du_i'47'g_2856 v0 v1
du_i'47'g_2856 :: Integer -> Integer -> Integer
du_i'47'g_2856 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0)
      (coe du_g_2850 (coe v0) (coe v1))
-- Data.Rational.Properties.↧-normalize
d_'8615''45'normalize_2868 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'normalize_2868 = erased
-- Data.Rational.Properties._.g
d_g_2878 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_g_2878 v0 v1 ~v2 = du_g_2878 v0 v1
du_g_2878 :: Integer -> Integer -> Integer
du_g_2878 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-cong
d_normalize'45'cong_2900 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'cong_2900 = erased
-- Data.Rational.Properties._.g
d_g_2910 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_g_2910 v0 v1 ~v2 ~v3 = du_g_2910 v0 v1
du_g_2910 :: Integer -> Integer -> Integer
du_g_2910 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-nonNeg
d_normalize'45'nonNeg_2922 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_normalize'45'nonNeg_2922 ~v0 ~v1 ~v2
  = du_normalize'45'nonNeg_2922
du_normalize'45'nonNeg_2922 ::
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_normalize'45'nonNeg_2922 = coe du_mkℚ'43''45'nonNeg_2636
-- Data.Rational.Properties._.g
d_g_2932 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_g_2932 v0 v1 ~v2 = du_g_2932 v0 v1
du_g_2932 :: Integer -> Integer -> Integer
du_g_2932 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-pos
d_normalize'45'pos_2946 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_normalize'45'pos_2946 ~v0 ~v1 ~v2 ~v3 = du_normalize'45'pos_2946
du_normalize'45'pos_2946 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_normalize'45'pos_2946 = coe du_mkℚ'43''45'pos_2652
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2958 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_g'8802'0_2958 v0 v1 ~v2 ~v3 = du_g'8802'0_2958 v0 v1
du_g'8802'0_2958 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_g'8802'0_2958 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_118
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties.normalize-injective-≃
d_normalize'45'injective'45''8771'_2976 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'injective'45''8771'_2976 = erased
-- Data.Rational.Properties._.gcd[m,c]
d_gcd'91'm'44'c'93'_2992 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_gcd'91'm'44'c'93'_2992 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93'_2992 v0 v2
du_gcd'91'm'44'c'93'_2992 :: Integer -> Integer -> Integer
du_gcd'91'm'44'c'93'_2992 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.gcd[n,d]
d_gcd'91'n'44'd'93'_2994 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_gcd'91'n'44'd'93'_2994 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93'_2994 v1 v3
du_gcd'91'n'44'd'93'_2994 :: Integer -> Integer -> Integer
du_gcd'91'n'44'd'93'_2994 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.gcd[m,c]∣m
d_gcd'91'm'44'c'93''8739'm_2996 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'm'44'c'93''8739'm_2996 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8739'm_2996 v0 v2
du_gcd'91'm'44'c'93''8739'm_2996 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'm'44'c'93''8739'm_2996 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[m,c]∣c
d_gcd'91'm'44'c'93''8739'c_2998 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'm'44'c'93''8739'c_2998 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8739'c_2998 v0 v2
du_gcd'91'm'44'c'93''8739'c_2998 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'm'44'c'93''8739'c_2998 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[n,d]∣n
d_gcd'91'n'44'd'93''8739'n_3000 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'n'44'd'93''8739'n_3000 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8739'n_3000 v1 v3
du_gcd'91'n'44'd'93''8739'n_3000 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'n'44'd'93''8739'n_3000 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[n,d]∣d
d_gcd'91'n'44'd'93''8739'd_3002 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'n'44'd'93''8739'd_3002 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8739'd_3002 v1 v3
du_gcd'91'n'44'd'93''8739'd_3002 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'n'44'd'93''8739'd_3002 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.md∣gcd[m,c]gcd[n,d]
d_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3004 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3004 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3004 v0 v1 v2 v3
du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3004 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3004 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.du_'42''45'pres'45''8739'_46
      (coe du_gcd'91'm'44'c'93''8739'm_2996 (coe v0) (coe v2))
      (coe du_gcd'91'n'44'd'93''8739'd_3002 (coe v1) (coe v3))
-- Data.Rational.Properties._.nc∣gcd[n,d]gcd[m,c]
d_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3006 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3006 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3006 v0 v1 v2 v3
du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3006 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3006 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.du_'42''45'pres'45''8739'_46
      (coe du_gcd'91'n'44'd'93''8739'n_3000 (coe v1) (coe v3))
      (coe du_gcd'91'm'44'c'93''8739'c_2998 (coe v0) (coe v2))
-- Data.Rational.Properties._.nc∣gcd[m,c]gcd[n,d]
d_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 v0 v1 v2 v3
du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 v0 v1 v2 v3
  = coe
      du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3006 (coe v0)
      (coe v1) (coe v2) (coe v3)
-- Data.Rational.Properties._.gcd[m,c]≢0′
d_gcd'91'm'44'c'93''8802'0'8242'_3012 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'm'44'c'93''8802'0'8242'_3012 = erased
-- Data.Rational.Properties._.gcd[n,d]≢0′
d_gcd'91'n'44'd'93''8802'0'8242'_3014 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'n'44'd'93''8802'0'8242'_3014 = erased
-- Data.Rational.Properties._.gcd[m,c]*gcd[n,d]≢0′
d_gcd'91'm'44'c'93''42'gcd'91'n'44'd'93''8802'0'8242'_3016 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'm'44'c'93''42'gcd'91'n'44'd'93''8802'0'8242'_3016 = erased
-- Data.Rational.Properties._.div
d_div_3032 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_div_3032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_div_3032
du_div_3032 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_div_3032 = coe du_mkℚ'43''45'injective_2598
-- Data.Rational.Properties._.m/gcd[m,c]≡n/gcd[n,d]
d_m'47'gcd'91'm'44'c'93''8801'n'47'gcd'91'n'44'd'93'_3034 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'gcd'91'm'44'c'93''8801'n'47'gcd'91'n'44'd'93'_3034 = erased
-- Data.Rational.Properties._.c/gcd[m,c]≡d/gcd[n,d]
d_c'47'gcd'91'm'44'c'93''8801'd'47'gcd'91'n'44'd'93'_3036 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'47'gcd'91'm'44'c'93''8801'd'47'gcd'91'n'44'd'93'_3036 = erased
-- Data.Rational.Properties.↥-/
d_'8613''45''47'_3044 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''47'_3044 = erased
-- Data.Rational.Properties._.g
d_g_3058 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_g_3058 v0 v1 ~v2 = du_g_3058 v0 v1
du_g_3058 :: Integer -> Integer -> Integer
du_g_3058 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties._.norm
d_norm_3060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_norm_3060 v0 v1 ~v2 = du_norm_3060 v0 v1
du_norm_3060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_norm_3060 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Base.du_normalize_136
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties.↧-/
d_'8615''45''47'_3070 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''47'_3070 = erased
-- Data.Rational.Properties._.g
d_g_3084 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_g_3084 v0 v1 ~v2 = du_g_3084 v0 v1
du_g_3084 :: Integer -> Integer -> Integer
du_g_3084 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties._.norm
d_norm_3086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_norm_3086 v0 v1 ~v2 = du_norm_3086 v0 v1
du_norm_3086 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_norm_3086 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Base.du_normalize_136
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties.↥p/↧p≡p
d_'8613'p'47''8615'p'8801'p_3092 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'47''8615'p'8801'p_3092 = erased
-- Data.Rational.Properties.0/n≡0
d_0'47'n'8801'0_3110 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'47'n'8801'0_3110 = erased
-- Data.Rational.Properties._.0-cop-1
d_0'45'cop'45'1_3122 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'45'cop'45'1_3122 = erased
-- Data.Rational.Properties._.n/n≢0
d_n'47'n'8802'0_3124 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_n'47'n'8802'0_3124 ~v0 ~v1 = du_n'47'n'8802'0_3124
du_n'47'n'8802'0_3124 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_n'47'n'8802'0_3124
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero_128
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
-- Data.Rational.Properties./-cong
d_'47''45'cong_3140 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong_3140 = erased
-- Data.Rational.Properties./-injective-≃-helper
d_'47''45'injective'45''8771''45'helper_3158 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'47''45'injective'45''8771''45'helper_3158 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 ~v6
  = du_'47''45'injective'45''8771''45'helper_3158
du_'47''45'injective'45''8771''45'helper_3158 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'47''45'injective'45''8771''45'helper_3158
  = coe
      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
-- Data.Rational.Properties./-injective-≃
d_'47''45'injective'45''8771'_3182 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'47''45'injective'45''8771'_3182 v0 v1 ~v2
  = du_'47''45'injective'45''8771'_3182 v0 v1
du_'47''45'injective'45''8771'_3182 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'47''45'injective'45''8771'_3182 v0 v1
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
                                 (coe du_'47''45'injective'45''8771''45'helper_3158)
                   _ -> MAlonzo.RTE.mazUnreachableError
             _ -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
                      -> case coe v4 of
                           _ | coe geqInt (coe v4) (coe (0 :: Integer)) ->
                               coe du_'47''45'injective'45''8771''45'helper_3158
                           _ -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.↥ᵘ-toℚᵘ
d_'8613''7512''45'toℚ'7512'_3230 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''7512''45'toℚ'7512'_3230 = erased
-- Data.Rational.Properties.↧ᵘ-toℚᵘ
d_'8615''7512''45'toℚ'7512'_3236 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''7512''45'toℚ'7512'_3236 = erased
-- Data.Rational.Properties.toℚᵘ-injective
d_toℚ'7512''45'injective_3240 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℚ'7512''45'injective_3240 = erased
-- Data.Rational.Properties.fromℚᵘ-injective
d_fromℚ'7512''45'injective_3248 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_fromℚ'7512''45'injective_3248 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (\ v2 ->
            coe du_'47''45'injective'45''8771'_3182 (coe v0) (coe v1)))
-- Data.Rational.Properties.fromℚᵘ-toℚᵘ
d_fromℚ'7512''45'toℚ'7512'_3256 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℚ'7512''45'toℚ'7512'_3256 = erased
-- Data.Rational.Properties.toℚᵘ-fromℚᵘ
d_toℚ'7512''45'fromℚ'7512'_3272 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'fromℚ'7512'_3272 v0
  = coe
      d_fromℚ'7512''45'injective_3248
      (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
         (coe MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172 (coe v0)))
      v0 erased
-- Data.Rational.Properties.toℚᵘ-cong
d_toℚ'7512''45'cong_3276 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'cong_3276 ~v0 ~v1 ~v2 = du_toℚ'7512''45'cong_3276
du_toℚ'7512''45'cong_3276 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_toℚ'7512''45'cong_3276
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Properties.fromℚᵘ-cong
d_fromℚ'7512''45'cong_3278 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℚ'7512''45'cong_3278 = erased
-- Data.Rational.Properties.toℚᵘ-isRelHomomorphism
d_toℚ'7512''45'isRelHomomorphism_3290 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_toℚ'7512''45'isRelHomomorphism_3290
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3276)
-- Data.Rational.Properties.toℚᵘ-isRelMonomorphism
d_toℚ'7512''45'isRelMonomorphism_3292 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_toℚ'7512''45'isRelMonomorphism_3292
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1555
      (coe d_toℚ'7512''45'isRelHomomorphism_3290) erased
-- Data.Rational.Properties.drop-*≤*
d_drop'45''42''8804''42'_3294 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_drop'45''42''8804''42'_3294 ~v0 ~v1 v2
  = du_drop'45''42''8804''42'_3294 v2
du_drop'45''42''8804''42'_3294 ::
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_drop'45''42''8804''42'_3294 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-mono-≤
d_toℚ'7512''45'mono'45''8804'_3298 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_toℚ'7512''45'mono'45''8804'_3298 v0 v1 v2
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
d_toℚ'7512''45'cancel'45''8804'_3306 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_toℚ'7512''45'cancel'45''8804'_3306 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v5
              -> coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-isOrderHomomorphism-≤
d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3314 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3314
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3276)
      (coe d_toℚ'7512''45'mono'45''8804'_3298)
-- Data.Rational.Properties.toℚᵘ-isOrderMonomorphism-≤
d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3316 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3316
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9041
      (coe d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3314) erased
      (coe d_toℚ'7512''45'cancel'45''8804'_3306)
-- Data.Rational.Properties.≤-Monomorphism.trans
d_trans_3360 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_trans_3360
  = let v0 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
    coe
      (let v1 = d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3316 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
            (coe v0)
            (coe
               MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
               (coe v1))))
-- Data.Rational.Properties.≤-Monomorphism.EqM.trans
d_trans_3378 ::
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans_3378 = erased
-- Data.Rational.Properties.≤-reflexive
d_'8804''45'reflexive_3380 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'reflexive_3380 v0 ~v1 ~v2
  = du_'8804''45'reflexive_3380 v0
du_'8804''45'reflexive_3380 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8804''45'reflexive_3380 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'refl_2594
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≤-refl
d_'8804''45'refl_3382 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'refl_3382 v0 = coe du_'8804''45'reflexive_3380 (coe v0)
-- Data.Rational.Properties.≤-trans
d_'8804''45'trans_3384 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'trans_3384 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3316))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'trans_404)
      (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.≤-antisym
d_'8804''45'antisym_3386 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3386 = erased
-- Data.Rational.Properties.≤-total
d_'8804''45'total_3392 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3392 v0 v1
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
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_2620
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._≤?_
d__'8804''63'__3398 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3398 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2638
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._≥?_
d__'8805''63'__3404 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__3404 v0 v1
  = coe d__'8804''63'__3398 (coe v1) (coe v0)
-- Data.Rational.Properties.≤-irrelevant
d_'8804''45'irrelevant_3406 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3406 = erased
-- Data.Rational.Properties.≤-isPreorder
d_'8804''45'isPreorder_3412 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_3412
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3380 v0)
      (coe d_'8804''45'trans_3384)
-- Data.Rational.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_3414 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_3414
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8307
      (coe d_'8804''45'isPreorder_3412) (coe d_'8804''45'total_3392)
-- Data.Rational.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3416 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_3416
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_3412) erased
-- Data.Rational.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3418 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_3418
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe d_'8804''45'isPartialOrder_3416) (coe d_'8804''45'total_3392)
-- Data.Rational.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3420 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_3420
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe d_'8804''45'isTotalOrder_3418) (coe d__'8799'__2550)
      (coe d__'8804''63'__3398)
-- Data.Rational.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_3422 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder_3422
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4543
      d_'8804''45'isTotalPreorder_3414
-- Data.Rational.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3424 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_3424
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      d_'8804''45'isDecTotalOrder_3420
-- Data.Rational.Properties.drop-*<*
d_drop'45''42''60''42'_3426 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_drop'45''42''60''42'_3426 ~v0 ~v1 v2
  = du_drop'45''42''60''42'_3426 v2
du_drop'45''42''60''42'_3426 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_drop'45''42''60''42'_3426 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-mono-<
d_toℚ'7512''45'mono'45''60'_3430 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_toℚ'7512''45'mono'45''60'_3430 v0 v1 v2
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
d_toℚ'7512''45'cancel'45''60'_3438 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_toℚ'7512''45'cancel'45''60'_3438 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5
              -> coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-isOrderHomomorphism-<
d_toℚ'7512''45'isOrderHomomorphism'45''60'_3446 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℚ'7512''45'isOrderHomomorphism'45''60'_3446
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3276)
      (coe d_toℚ'7512''45'mono'45''60'_3430)
-- Data.Rational.Properties.toℚᵘ-isOrderMonomorphism-<
d_toℚ'7512''45'isOrderMonomorphism'45''60'_3448 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℚ'7512''45'isOrderMonomorphism'45''60'_3448
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9041
      (coe d_toℚ'7512''45'isOrderHomomorphism'45''60'_3446) erased
      (coe d_toℚ'7512''45'cancel'45''60'_3438)
-- Data.Rational.Properties.<⇒≤
d_'60''8658''8804'_3450 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'60''8658''8804'_3450 ~v0 ~v1 v2 = du_'60''8658''8804'_3450 v2
du_'60''8658''8804'_3450 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'60''8658''8804'_3450 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3
        -> coe
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
             (coe
                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≮⇒≥
d_'8814''8658''8805'_3454 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8814''8658''8805'_3454 v0 v1 ~v2
  = du_'8814''8658''8805'_3454 v0 v1
du_'8814''8658''8805'_3454 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8814''8658''8805'_3454 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8814''8658''8805'_2766
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≰⇒>
d_'8816''8658''62'_3462 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'8816''8658''62'_3462 v0 v1 ~v2 = du_'8816''8658''62'_3462 v0 v1
du_'8816''8658''62'_3462 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'8816''8658''62'_3462 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8816''8658''62'_2740
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.<⇒≢
d_'60''8658''8802'_3470 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_3470 = erased
-- Data.Rational.Properties.<-irrefl
d_'60''45'irrefl_3478 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3478 = erased
-- Data.Rational.Properties.<-asym
d_'60''45'asym_3482 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3482 = erased
-- Data.Rational.Properties.<-dense
d_'60''45'dense_3488 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'dense_3488 v0 v1 v2
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
                  d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            d_toℚ'7512''45'cancel'45''60'_3438 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe
                        d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2)))))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'691''45''8771'_698
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))
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
                              d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                  (coe
                     d_toℚ'7512''45'fromℚ'7512'_3272
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe
                           d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2)))))))
         (coe
            d_toℚ'7512''45'cancel'45''60'_3438
            (coe
               MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe
                        d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2)))))
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
                     (coe d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))
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
                              d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                  (coe
                     d_toℚ'7512''45'fromℚ'7512'_3272
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe
                           d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v2))))))))
-- Data.Rational.Properties.<-≤-trans
d_'60''45''8804''45'trans_3508 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45''8804''45'trans_3508 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6168
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
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                 v15 v16)
                                            (coe
                                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
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
                                                        MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
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
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
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
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5960
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
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6110
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
d_'8804''45''60''45'trans_3542 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'8804''45''60''45'trans_3542 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6168
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
                                               MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
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
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2852
                                                          v15 v16)
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2838
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
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
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
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6078
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
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5918
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
d_'60''45'trans_3576 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'trans_3576 v0 v1 v2 v3
  = coe
      d_'8804''45''60''45'trans_3542 (coe v0) (coe v1) (coe v2)
      (coe du_'60''8658''8804'_3450 (coe v3))
-- Data.Rational.Properties._<?_
d__'60''63'__3580 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3580 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'60''63'__2948
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._>?_
d__'62''63'__3586 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__3586 v0 v1 = coe d__'60''63'__3580 (coe v1) (coe v0)
-- Data.Rational.Properties.<-cmp
d_'60''45'cmp_3588 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3588 v0 v1
  = let v2
          = MAlonzo.Code.Data.Integer.Properties.d_'60''45'cmp_2858
              (coe
                 MAlonzo.Code.Data.Integer.Base.d__'42'__308
                 (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
                 (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
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
d_'60''45'irrelevant_3628 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3628 = erased
-- Data.Rational.Properties.<-respʳ-≡
d_'60''45'resp'691''45''8801'_3634 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'resp'691''45''8801'_3634 ~v0 ~v1 ~v2 ~v3 v4
  = du_'60''45'resp'691''45''8801'_3634 v4
du_'60''45'resp'691''45''8801'_3634 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'60''45'resp'691''45''8801'_3634 v0 = coe v0
-- Data.Rational.Properties.<-respˡ-≡
d_'60''45'resp'737''45''8801'_3638 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'resp'737''45''8801'_3638 ~v0 ~v1 ~v2 ~v3 v4
  = du_'60''45'resp'737''45''8801'_3638 v4
du_'60''45'resp'737''45''8801'_3638 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'60''45'resp'737''45''8801'_3638 v0 = coe v0
-- Data.Rational.Properties.<-resp-≡
d_'60''45'resp'45''8801'_3642 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8801'_3642
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3644 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_3644
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      d_'60''45'trans_3576 d_'60''45'resp'45''8801'_3642
-- Data.Rational.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3646 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_3646
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24885
      (coe d_'60''45'isStrictPartialOrder_3644) (coe d_'60''45'cmp_3588)
-- Data.Rational.Properties.<-isDenseLinearOrder
d_'60''45'isDenseLinearOrder_3648 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_594
d_'60''45'isDenseLinearOrder_3648
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDenseLinearOrder'46'constructor_28059
      (coe d_'60''45'isStrictTotalOrder_3646) (coe d_'60''45'dense_3488)
-- Data.Rational.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3650 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_3650
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder_3644
-- Data.Rational.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3652 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_3652
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_20945
      d_'60''45'isStrictTotalOrder_3646
-- Data.Rational.Properties.<-denseLinearOrder
d_'60''45'denseLinearOrder_3654 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DenseLinearOrder_1140
d_'60''45'denseLinearOrder_3654
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DenseLinearOrder'46'constructor_23199
      d_'60''45'isDenseLinearOrder_3648
-- Data.Rational.Properties.≤-Reasoning.Triple._IsRelatedTo_
d__IsRelatedTo__3660 a0 a1 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple._∎
d__'8718'_3662 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3662
  = let v0 = d_'8804''45'isPreorder_3412 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Rational.Properties.≤-Reasoning.Triple.<-go
d_'60''45'go_3664 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3664
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe d_'60''45'trans_3576)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
      (coe d_'60''45''8804''45'trans_3508)
-- Data.Rational.Properties.≤-Reasoning.Triple.IsEquality
d_IsEquality_3666 a0 a1 a2 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple.IsEquality?
d_IsEquality'63'_3668 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3668 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Rational.Properties.≤-Reasoning.Triple.IsStrict
d_IsStrict_3670 a0 a1 a2 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple.IsStrict?
d_IsStrict'63'_3672 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3672 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3674 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_begin__3674
  = let v0 = d_'8804''45'isPreorder_3412 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_3450 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Rational.Properties.≤-Reasoning.Triple.begin-contradiction_
d_begin'45'contradiction__3676 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3676 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3678 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3678 = erased
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3680 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_begin__3680
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Rational.Properties.≤-Reasoning.Triple.eqRelation
d_eqRelation_3682 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3682
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Rational.Properties.≤-Reasoning.Triple.extractEquality
d_extractEquality_3686 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3686 = erased
-- Data.Rational.Properties.≤-Reasoning.Triple.extractStrict
d_extractStrict_3688 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_extractStrict_3688 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Rational.Properties.≤-Reasoning.Triple.start
d_start_3696 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_start_3696
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_3412)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_3450 v2)
-- Data.Rational.Properties.≤-Reasoning.Triple.step-<
d_step'45''60'_3698 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3698
  = let v0 = d_'60''45'trans_3576 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144 in
       coe
         (let v2 = d_'60''45''8804''45'trans_3508 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡
d_step'45''8801'_3708 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3708
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-∣
d_step'45''8801''45''8739'_3710 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3710 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3710 v2
du_step'45''8801''45''8739'_3710 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3710 v0 = coe v0
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-⟨
d_step'45''8801''45''10216'_3712 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3712
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-⟩
d_step'45''8801''45''10217'_3714 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3714
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡˘
d_step'45''8801''728'_3716 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3716
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≤
d_step'45''8804'_3718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3718
  = let v0 = d_'8804''45'isPreorder_3412 in
    coe
      (let v1 = d_'8804''45''60''45'trans_3542 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Rational.Properties.≤-Reasoning.Triple.stop
d_stop_3720 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3720
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_3412)
-- Data.Rational.Properties.≤-Reasoning.Triple.strictRelation
d_strictRelation_3724 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3724
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Rational.Properties.≤-Reasoning.Triple.≈-go
d_'8776''45'go_3726 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3726
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_3412)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
-- Data.Rational.Properties.≤-Reasoning.Triple.≡-go
d_'8801''45'go_3728 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3728 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3728 v4
du_'8801''45'go_3728 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3728 v0 = coe v0
-- Data.Rational.Properties.≤-Reasoning.Triple.≤-go
d_'8804''45'go_3730 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3730
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_3412)
      (coe d_'8804''45''60''45'trans_3542)
-- Data.Rational.Properties.≤-Reasoning.≃-go
d_'8771''45'go_3748 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8771''45'go_3748 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_3412)
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
         (coe v0) (coe v1) (coe v2))
      erased
-- Data.Rational.Properties.≤-Reasoning._.step-≃-⟨
d_step'45''8771''45''10216'_3756 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10216'_3756
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
      (coe d_'8771''45'go_3748) (\ v0 v1 -> coe du_'8771''45'sym_2698)
-- Data.Rational.Properties.≤-Reasoning._.step-≃-⟩
d_step'45''8771''45''10217'_3758 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10217'_3758
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
      (coe d_'8771''45'go_3748)
-- Data.Rational.Properties.positive⁻¹
d_positive'8315''185'_3762 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_positive'8315''185'_3762 v0 ~v1 = du_positive'8315''185'_3762 v0
du_positive'8315''185'_3762 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_positive'8315''185'_3762 v0
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_positive'8315''185'_890
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_3768 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_nonNegative'8315''185'_3768 v0 ~v1
  = du_nonNegative'8315''185'_3768 v0
du_nonNegative'8315''185'_3768 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_nonNegative'8315''185'_3768 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_nonNegative'8315''185'_896
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.negative⁻¹
d_negative'8315''185'_3774 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_negative'8315''185'_3774 v0 ~v1 = du_negative'8315''185'_3774 v0
du_negative'8315''185'_3774 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_negative'8315''185'_3774 v0
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438 (coe v0)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_negative'8315''185'_902
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_3780 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_nonPositive'8315''185'_3780 v0 ~v1
  = du_nonPositive'8315''185'_3780 v0
du_nonPositive'8315''185'_3780 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_nonPositive'8315''185'_3780 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306 (coe v0)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_nonPositive'8315''185'_908
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.neg<pos
d_neg'60'pos_3788 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_neg'60'pos_3788 v0 v1 ~v2 ~v3 = du_neg'60'pos_3788 v0 v1
du_neg'60'pos_3788 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_neg'60'pos_3788 v0 v1
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_neg'60'pos_928
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
-- Data.Rational.Properties.neg-antimono-<
d_neg'45'antimono'45''60'_3794 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_neg'45'antimono'45''60'_3794 v0 v1 v2
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
                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v14
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
                                                  MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                                                  (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))))
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
                                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v14))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.neg-antimono-≤
d_neg'45'antimono'45''8804'_3804 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_neg'45'antimono'45''8804'_3804 v0 v1 v2
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
                                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v14
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
                                               (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)))
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
                                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v14))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_3814 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''7495''8658''8804'_3814 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Integer.Properties.du_'8804''7495''8658''8804'_2686
           (coe
              MAlonzo.Code.Data.Integer.Base.d__'42'__308
              (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
              (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
           (coe
              MAlonzo.Code.Data.Integer.Base.d__'42'__308
              (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
              (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_3816 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 -> AgdaAny
d_'8804''8658''8804''7495'_3816 ~v0 ~v1
  = du_'8804''8658''8804''7495'_3816
du_'8804''8658''8804''7495'_3816 ::
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 -> AgdaAny
du_'8804''8658''8804''7495'_3816
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''8658''8804''7495'_2694)
      (coe du_drop'45''42''8804''42'_3294)
-- Data.Rational.Properties.↥+ᵘ
d_'8613''43''7512'_3818 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'8613''43''7512'_3818 v0 v1
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
d_'8615''43''7512'_3824 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'8615''43''7512'_3824 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))
      (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1))
-- Data.Rational.Properties.+-nf
d_'43''45'nf_3830 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'43''45'nf_3830 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.GCD.d_gcd_136
      (coe d_'8613''43''7512'_3818 (coe v0) (coe v1))
      (coe d_'8615''43''7512'_3824 (coe v0) (coe v1))
-- Data.Rational.Properties.↥-+
d_'8613''45''43'_3840 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''43'_3840 = erased
-- Data.Rational.Properties.↧-+
d_'8615''45''43'_3850 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''43'_3850 = erased
-- Data.Rational.Properties._.Homomorphic₁
d_Homomorphic'8321'_3860 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  ()
d_Homomorphic'8321'_3860 = erased
-- Data.Rational.Properties._.Homomorphic₂
d_Homomorphic'8322'_3862 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  ()
d_Homomorphic'8322'_3862 = erased
-- Data.Rational.Properties.toℚᵘ-homo-+
d_toℚ'7512''45'homo'45''43'_3866 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''43'_3866 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> let v8
                        = MAlonzo.Code.Data.Integer.Properties.d__'8799'__2558
                            (coe
                               d_'43''45'nf_3830
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))
                            (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) in
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
d_eq2_3886 ::
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
d_eq2_3886 = erased
-- Data.Rational.Properties._.eq
d_eq_3888 ::
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
d_eq_3888 = erased
-- Data.Rational.Properties.toℚᵘ-isMagmaHomomorphism-+
d_toℚ'7512''45'isMagmaHomomorphism'45''43'_3984 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_toℚ'7512''45'isMagmaHomomorphism'45''43'_3984
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe d_toℚ'7512''45'isRelHomomorphism_3290)
      (coe d_toℚ'7512''45'homo'45''43'_3866)
-- Data.Rational.Properties.toℚᵘ-isMonoidHomomorphism-+
d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3986
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe d_toℚ'7512''45'isMagmaHomomorphism'45''43'_3984)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isMonoidMonomorphism-+
d_toℚ'7512''45'isMonoidMonomorphism'45''43'_3988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_toℚ'7512''45'isMonoidMonomorphism'45''43'_3988
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_6341
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3986) erased
-- Data.Rational.Properties.toℚᵘ-homo‿-
d_toℚ'7512''45'homo'8255''45'_3990 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'8255''45'_3990 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-isGroupHomomorphism-+
d_toℚ'7512''45'isGroupHomomorphism'45''43'_3992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_506
d_toℚ'7512''45'isGroupHomomorphism'45''43'_3992
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupHomomorphism'46'constructor_10685
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3986)
      (coe d_toℚ'7512''45'homo'8255''45'_3990)
-- Data.Rational.Properties.toℚᵘ-isGroupMonomorphism-+
d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_532
d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupMonomorphism'46'constructor_11635
      (coe d_toℚ'7512''45'isGroupHomomorphism'45''43'_3992) erased
-- Data.Rational.Properties.+-Monomorphism.assoc
d_assoc_3998 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_3998 = erased
-- Data.Rational.Properties.+-Monomorphism.comm
d_comm_4006 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_4006 = erased
-- Data.Rational.Properties.+-Monomorphism.identityʳ
d_identity'691'_4014 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_4014 = erased
-- Data.Rational.Properties.+-Monomorphism.identityˡ
d_identity'737'_4016 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_4016 = erased
-- Data.Rational.Properties.+-Monomorphism.inverse
d_inverse_4018 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_4018
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994)
-- Data.Rational.Properties.+-Monomorphism.inverseʳ
d_inverse'691'_4020 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_4020 = erased
-- Data.Rational.Properties.+-Monomorphism.inverseˡ
d_inverse'737'_4022 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_4022 = erased
-- Data.Rational.Properties.+-Monomorphism.isAbelianGroup
d_isAbelianGroup_4024 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_isAbelianGroup_4024
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994)
-- Data.Rational.Properties.+-Monomorphism.isCommutativeMonoid
d_isCommutativeMonoid_4028 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_4028
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                     (coe v3))))))
-- Data.Rational.Properties.+-Monomorphism.isGroup
d_isGroup_4030 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_4030
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994)
-- Data.Rational.Properties.+-Monomorphism.isMagma
d_isMagma_4032 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_4032
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994 in
             coe
               (let v4
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v0) in
                coe
                  (let v5
                         = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v1) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                                (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                              (coe v6)))))))))
-- Data.Rational.Properties.+-Monomorphism.isMonoid
d_isMonoid_4034 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_4034
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                     (coe v3))))))
-- Data.Rational.Properties.+-Monomorphism.isSemigroup
d_isSemigroup_4038 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_4038
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994 in
             coe
               (let v4
                      = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v0) in
                coe
                  (let v5
                         = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v1) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                                (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                              (coe v6)))))))))
-- Data.Rational.Properties.+-Monomorphism.⁻¹-cong
d_'8315''185''45'cong_4048 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_4048 = erased
-- Data.Rational.Properties.+-Monomorphism.⁻¹-distrib-∙
d_'8315''185''45'distrib'45''8729'_4050 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'distrib'45''8729'_4050 = erased
-- Data.Rational.Properties.+-assoc
d_'43''45'assoc_4052 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4052 = erased
-- Data.Rational.Properties.+-comm
d_'43''45'comm_4054 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4054 = erased
-- Data.Rational.Properties.+-identityˡ
d_'43''45'identity'737'_4056 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4056 = erased
-- Data.Rational.Properties.+-identityʳ
d_'43''45'identity'691'_4058 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4058 = erased
-- Data.Rational.Properties.+-identity
d_'43''45'identity_4060 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4060
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.+-inverseˡ
d_'43''45'inverse'737'_4062 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_4062 = erased
-- Data.Rational.Properties.+-inverseʳ
d_'43''45'inverse'691'_4064 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_4064 = erased
-- Data.Rational.Properties.+-inverse
d_'43''45'inverse_4066 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_4066
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isMagma_1634)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'inverse_1178)
-- Data.Rational.Properties.-‿cong
d_'45''8255'cong_4068 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''8255'cong_4068 = erased
-- Data.Rational.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_4074 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_4074 = erased
-- Data.Rational.Properties.+-isMagma
d_'43''45'isMagma_4076 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'43''45'isMagma_4076
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                       (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isMagma_1634)))))
-- Data.Rational.Properties.+-isSemigroup
d_'43''45'isSemigroup_4078 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'43''45'isSemigroup_4078
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
                 (coe
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                       (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isSemigroup_1636)))))
-- Data.Rational.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_4080 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'0'45'isMonoid_4080
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
         (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isMonoid_1638)
-- Data.Rational.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4082 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'0'45'isCommutativeMonoid_4082
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
         (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isCommutativeMonoid_1640)
-- Data.Rational.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_4084 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_'43''45'0'45'isGroup_4084
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isGroup_1642)
-- Data.Rational.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_4086 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'0'45'isAbelianGroup_4086
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_384)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3994)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isAbelianGroup_1644)
-- Data.Rational.Properties.+-magma
d_'43''45'magma_4088 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'43''45'magma_4088
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Rational.Base.d__'43'__268 d_'43''45'isMagma_4076
-- Data.Rational.Properties.+-semigroup
d_'43''45'semigroup_4090 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'43''45'semigroup_4090
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      d_'43''45'isSemigroup_4078
-- Data.Rational.Properties.+-0-monoid
d_'43''45'0'45'monoid_4092 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'43''45'0'45'monoid_4092
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      d_'43''45'0'45'isMonoid_4080
-- Data.Rational.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4094 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'43''45'0'45'commutativeMonoid_4094
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      d_'43''45'0'45'isCommutativeMonoid_4082
-- Data.Rational.Properties.+-0-group
d_'43''45'0'45'group_4096 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266
d_'43''45'0'45'group_4096
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Group'46'constructor_22093
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      d_'43''45'0'45'isGroup_4084
-- Data.Rational.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_4098 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378
d_'43''45'0'45'abelianGroup_4098
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_24563
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      d_'43''45'0'45'isAbelianGroup_4086
-- Data.Rational.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4100 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'45''8804'_4100 v0 v1 v2 v3 v4 v5
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3))
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
               MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2)))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
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
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
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
                     MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
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
                        MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3))))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                     (coe d_toℚ'7512''45'homo'45''43'_3866 (coe v1) (coe v3))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'mono'45''8804'_1322
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3))
                  (coe d_toℚ'7512''45'mono'45''8804'_3298 (coe v0) (coe v1) (coe v4))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3298 (coe v2) (coe v3) (coe v5))))
            (d_toℚ'7512''45'homo'45''43'_3866 (coe v0) (coe v2))))
-- Data.Rational.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4122 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'737''45''8804'_4122 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4100 (coe v1) (coe v2) (coe v0) (coe v0)
      (coe v3) (coe d_'8804''45'refl_3382 (coe v0))
-- Data.Rational.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4130 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'691''45''8804'_4130 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4100 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe d_'8804''45'refl_3382 (coe v0)) (coe v3)
-- Data.Rational.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_4136 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''60''45''8804'_4136 v0 v1 v2 v3 v4 v5
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3))
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
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
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
                     MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
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
                        MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3))))
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                        (coe d_toℚ'7512''45'homo'45''43'_3866 (coe v1) (coe v3))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'mono'45''60''45''8804'_1452
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3))
                     (coe d_toℚ'7512''45'mono'45''60'_3430 (coe v0) (coe v1) (coe v4))
                     (coe
                        d_toℚ'7512''45'mono'45''8804'_3298 (coe v2) (coe v3) (coe v5))))
               (d_toℚ'7512''45'homo'45''43'_3866 (coe v0) (coe v2)))))
-- Data.Rational.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4154 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''8804''45''60'_4154 v0 v1 v2 v3 v4 v5
  = coe
      d_'43''45'mono'45''60''45''8804'_4136 (coe v2) (coe v3) (coe v0)
      (coe v1) (coe v5) (coe v4)
-- Data.Rational.Properties.+-mono-<
d_'43''45'mono'45''60'_4176 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''60'_4176 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45'trans_3576
      (MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v2))
      (MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v1) (coe v3))
      (d_'43''45'mono'45''60''45''8804'_4136
         (coe v0) (coe v1) (coe v2) (coe v2) (coe v4)
         (coe d_'8804''45'refl_3382 (coe v2)))
      (d_'43''45'mono'45''8804''45''60'_4154
         (coe v1) (coe v1) (coe v2) (coe v3)
         (coe d_'8804''45'refl_3382 (coe v1)) (coe v5))
-- Data.Rational.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4194 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'737''45''60'_4194 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''60''45''8804'_4136 (coe v1) (coe v2) (coe v0)
      (coe v0) (coe v3) (coe d_'8804''45'refl_3382 (coe v0))
-- Data.Rational.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4202 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'691''45''60'_4202 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804''45''60'_4154 (coe v0) (coe v0) (coe v1)
      (coe v2) (coe d_'8804''45'refl_3382 (coe v0)) (coe v3)
-- Data.Rational.Properties.*-nf
d_'42''45'nf_4208 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'42''45'nf_4208 v0 v1
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
d_'8613''45''42'_4218 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''42'_4218 = erased
-- Data.Rational.Properties.↧-*
d_'8615''45''42'_4228 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''42'_4228 = erased
-- Data.Rational.Properties.toℚᵘ-homo-*
d_toℚ'7512''45'homo'45''42'_4234 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''42'_4234 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> let v8
                        = MAlonzo.Code.Data.Integer.Properties.d__'8799'__2558
                            (coe
                               d_'42''45'nf_4208
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))
                            (coe MAlonzo.Code.Data.Integer.Base.d_0ℤ_12) in
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
d_eq2_4254 ::
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
d_eq2_4254 = erased
-- Data.Rational.Properties._.eq
d_eq_4256 ::
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
d_eq_4256 = erased
-- Data.Rational.Properties.toℚᵘ-homo-1/
d_toℚ'7512''45'homo'45'1'47'_4356 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45'1'47'_4356 v0 ~v1
  = du_toℚ'7512''45'homo'45'1'47'_4356 v0
du_toℚ'7512''45'homo'45'1'47'_4356 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_toℚ'7512''45'homo'45'1'47'_4356 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-isMagmaHomomorphism-*
d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4358
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe d_toℚ'7512''45'isRelHomomorphism_3290)
      (coe d_toℚ'7512''45'homo'45''42'_4234)
-- Data.Rational.Properties.toℚᵘ-isMonoidHomomorphism-*
d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4360
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4358)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isMonoidMonomorphism-*
d_toℚ'7512''45'isMonoidMonomorphism'45''42'_4362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_toℚ'7512''45'isMonoidMonomorphism'45''42'_4362
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_6341
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4360) erased
-- Data.Rational.Properties.toℚᵘ-isNearSemiringHomomorphism-+-*
d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_800
d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4364
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringHomomorphism'46'constructor_16083
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3986)
      (coe d_toℚ'7512''45'homo'45''42'_4234)
-- Data.Rational.Properties.toℚᵘ-isNearSemiringMonomorphism-+-*
d_toℚ'7512''45'isNearSemiringMonomorphism'45''43''45''42'_4366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_828
d_toℚ'7512''45'isNearSemiringMonomorphism'45''43''45''42'_4366
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringMonomorphism'46'constructor_17211
      (coe
         d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4364)
      erased
-- Data.Rational.Properties.toℚᵘ-isSemiringHomomorphism-+-*
d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1166
d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4368
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringHomomorphism'46'constructor_22649
      (coe
         d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4364)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isSemiringMonomorphism-+-*
d_toℚ'7512''45'isSemiringMonomorphism'45''43''45''42'_4370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1200
d_toℚ'7512''45'isSemiringMonomorphism'45''43''45''42'_4370
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringMonomorphism'46'constructor_23957
      (coe d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4368)
      erased
-- Data.Rational.Properties.toℚᵘ-isRingHomomorphism-+-*
d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2016
d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4372
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingHomomorphism'46'constructor_37523
      (coe d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4368)
      (coe d_toℚ'7512''45'homo'8255''45'_3990)
-- Data.Rational.Properties.toℚᵘ-isRingMonomorphism-+-*
d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056
d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingMonomorphism'46'constructor_39007
      (coe d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4372) erased
-- Data.Rational.Properties.+-*-Monomorphism.assoc
d_assoc_4378 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_4378 = erased
-- Data.Rational.Properties.+-*-Monomorphism.comm
d_comm_4386 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_4386 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityʳ
d_identity'691'_4394 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_4394 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityˡ
d_identity'737'_4396 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_4396 = erased
-- Data.Rational.Properties.+-*-Monomorphism.isCommutativeMonoid
d_isCommutativeMonoid_4400 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_4400
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                     (coe v3))))))
-- Data.Rational.Properties.+-*-Monomorphism.isMagma
d_isMagma_4402 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_4402
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                                (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                              (coe v6)))))))))
-- Data.Rational.Properties.+-*-Monomorphism.isMonoid
d_isMonoid_4404 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_4404
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                     (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                     (coe v3))))))
-- Data.Rational.Properties.+-*-Monomorphism.isSemigroup
d_isSemigroup_4408 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_4408
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v0)) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276 (coe v1)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                                (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v4))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                              (coe v6)))))))))
-- Data.Rational.Properties.+-*-Monomorphism.assoc
d_assoc_4418 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_4418 = erased
-- Data.Rational.Properties.+-*-Monomorphism.comm
d_comm_4426 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_4426 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityʳ
d_identity'691'_4434 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_4434 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityˡ
d_identity'737'_4436 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_4436 = erased
-- Data.Rational.Properties.+-*-Monomorphism.isCommutativeMonoid
d_isCommutativeMonoid_4440 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_4440
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                             (coe v0)) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                                (coe v1)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                                (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                              (coe v6)))))))))
-- Data.Rational.Properties.+-*-Monomorphism.isMagma
d_isMagma_4442 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_4442
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                             (coe v0)) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                                (coe v1)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                                (coe v3) in
                      coe
                        (let v7
                               = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
                         coe
                           (let v8
                                  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                            coe
                              (let v9
                                     = coe
                                         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                                         (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                                       (coe v9))))))))))))
-- Data.Rational.Properties.+-*-Monomorphism.isMonoid
d_isMonoid_4444 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_4444
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                             (coe v0)) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                                (coe v1)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                                (coe v3) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4))
                           (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                              (coe v6)))))))))
-- Data.Rational.Properties.+-*-Monomorphism.isSemigroup
d_isSemigroup_4448 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_4448
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                          (coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                             (coe v0)) in
                coe
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                             (coe
                                MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                                (coe v1)) in
                   coe
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                                (coe v3) in
                      coe
                        (let v7
                               = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v4) in
                         coe
                           (let v8
                                  = coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96 (coe v5) in
                            coe
                              (let v9
                                     = coe
                                         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
                                         (coe v6) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v7))
                                    (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v8))
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                                       (coe v9))))))))))))
-- Data.Rational.Properties.+-*-Monomorphism.distribʳ
d_distrib'691'_4460 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_4460 = erased
-- Data.Rational.Properties.+-*-Monomorphism.distribˡ
d_distrib'737'_4462 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'737'_4462 = erased
-- Data.Rational.Properties.+-*-Monomorphism.inverse
d_inverse_4464 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_4464
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                        (coe v1)))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                     (coe v3))))))
-- Data.Rational.Properties.+-*-Monomorphism.inverseʳ
d_inverse'691'_4466 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_4466 = erased
-- Data.Rational.Properties.+-*-Monomorphism.inverseˡ
d_inverse'737'_4468 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_4468 = erased
-- Data.Rational.Properties.+-*-Monomorphism.isAbelianGroup
d_isAbelianGroup_4470 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_isAbelianGroup_4470
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                        (coe v1)))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                     (coe v3))))))
-- Data.Rational.Properties.+-*-Monomorphism.isCommutativeRing
d_isCommutativeRing_4472 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_isCommutativeRing_4472
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isCommutativeRing_534
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374)
-- Data.Rational.Properties.+-*-Monomorphism.isGroup
d_isGroup_4474 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_4474
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374 in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                        (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawGroup_226
                     (coe
                        MAlonzo.Code.Algebra.Bundles.Raw.du_rawRingWithoutOne_290
                        (coe v1)))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_'43''45'isGroupMonomorphism_2100
                     (coe v3))))))
-- Data.Rational.Properties.+-*-Monomorphism.isRing
d_isRing_4476 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_isRing_4476
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isRing_418
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374)
-- Data.Rational.Properties.+-*-Monomorphism.⁻¹-cong
d_'8315''185''45'cong_4478 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_4478 = erased
-- Data.Rational.Properties.+-*-Monomorphism.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_4480 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_4480 = erased
-- Data.Rational.Properties.+-*-Monomorphism.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_4482 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_4482 = erased
-- Data.Rational.Properties.+-*-Monomorphism.zeroʳ
d_zero'691'_4486 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_4486 = erased
-- Data.Rational.Properties.+-*-Monomorphism.zeroˡ
d_zero'737'_4488 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_4488 = erased
-- Data.Rational.Properties.+-*-Monomorphism.⁻¹-distrib-∙
d_'8315''185''45'distrib'45''8729'_4490 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'distrib'45''8729'_4490 = erased
-- Data.Rational.Properties.*-assoc
d_'42''45'assoc_4492 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_4492 = erased
-- Data.Rational.Properties.*-comm
d_'42''45'comm_4494 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_4494 = erased
-- Data.Rational.Properties.*-identityˡ
d_'42''45'identity'737'_4496 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_4496 = erased
-- Data.Rational.Properties.*-identityʳ
d_'42''45'identity'691'_4498 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_4498 = erased
-- Data.Rational.Properties.*-identity
d_'42''45'identity_4500 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_4500
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-zeroˡ
d_'42''45'zero'737'_4502 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_4502 = erased
-- Data.Rational.Properties.*-zeroʳ
d_'42''45'zero'691'_4504 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_4504 = erased
-- Data.Rational.Properties.*-zero
d_'42''45'zero_4506 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_4506
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_4508 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_4508 = erased
-- Data.Rational.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_4510 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_4510 = erased
-- Data.Rational.Properties.*-distrib-+
d_'42''45'distrib'45''43'_4512 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_4512
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-inverseˡ
d_'42''45'inverse'737'_4518 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'inverse'737'_4518 = erased
-- Data.Rational.Properties.*-inverseʳ
d_'42''45'inverse'691'_4530 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'inverse'691'_4530 = erased
-- Data.Rational.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_4538 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_4538 = erased
-- Data.Rational.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_4544 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_4544 = erased
-- Data.Rational.Properties.*-isMagma
d_'42''45'isMagma_4546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_4546
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                       (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isMagma_234
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'isMagma_2452)))))
-- Data.Rational.Properties.*-isSemigroup
d_'42''45'isSemigroup_4548 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_4548
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)) in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
                 (coe
                    MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                    (coe
                       MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)) in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
                       (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Morphism.MagmaMonomorphism.du_isSemigroup_264
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.Raw.du_rawMagma_60 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
                     (coe v3))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'isSemigroup_2454)))))
-- Data.Rational.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_4550 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'1'45'isMonoid_4550
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'1'45'isMonoid_2456)
-- Data.Rational.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_4552 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'1'45'isCommutativeMonoid_4552
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'1'45'isCommutativeMonoid_2458)
-- Data.Rational.Properties.+-*-isRing
d_'43''45''42''45'isRing_4554 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2480
d_'43''45''42''45'isRing_4554
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isRing_418
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45''42''45'isRing_2460)
-- Data.Rational.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_4556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2626
d_'43''45''42''45'isCommutativeRing_4556
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isCommutativeRing_534
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_390)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4374)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45''42''45'isCommutativeRing_2462)
-- Data.Rational.Properties.*-magma
d_'42''45'magma_4558 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'42''45'magma_4558
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Rational.Base.d__'42'__274 d_'42''45'isMagma_4546
-- Data.Rational.Properties.*-semigroup
d_'42''45'semigroup_4560 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'42''45'semigroup_4560
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Rational.Base.d__'42'__274
      d_'42''45'isSemigroup_4548
-- Data.Rational.Properties.*-1-monoid
d_'42''45'1'45'monoid_4562 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'42''45'1'45'monoid_4562
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Rational.Base.d__'42'__274
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'42''45'1'45'isMonoid_4550
-- Data.Rational.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_4564 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'42''45'1'45'commutativeMonoid_4564
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Rational.Base.d__'42'__274
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'42''45'1'45'isCommutativeMonoid_4552
-- Data.Rational.Properties.+-*-ring
d_'43''45''42''45'ring_4566 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514
d_'43''45''42''45'ring_4566
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_62103
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      MAlonzo.Code.Data.Rational.Base.d__'42'__274
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'43''45''42''45'isRing_4554
-- Data.Rational.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_4568 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3716
d_'43''45''42''45'commutativeRing_4568
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_65699
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      MAlonzo.Code.Data.Rational.Base.d__'42'__274
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'43''45''42''45'isCommutativeRing_4556
-- Data.Rational.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_4574 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'691''45''8804''45'pos_4574 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_4574 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'pos_4574 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'691''45''8804''45'pos_4574 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'691''45''8804''45'pos_2032
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
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2)))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v2)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v2)))
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
                     (d_toℚ'7512''45'homo'45''42'_4234 (coe v1) (coe v2)))
                  (d_toℚ'7512''45'mono'45''8804'_3298
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v2))
                     (coe v3)))
               (d_toℚ'7512''45'homo'45''42'_4234 (coe v0) (coe v2)))))
-- Data.Rational.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_4592 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'737''45''8804''45'pos_4592 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_4592 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'pos_4592 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'737''45''8804''45'pos_4592 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_4574 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_4614 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'nonNeg_4614 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonNeg_4614 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonNeg_4614 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'nonNeg_4614 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
               (\ v4 v5 -> v4) v1 v2))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
               (\ v4 v5 -> v5)
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                  (\ v4 v5 -> v5)
                  (\ v4 ->
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                        (\ v4 v5 -> v5)
                        (\ v4 ->
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0))))
                  (d_toℚ'7512''45'homo'45''42'_4234 (coe v2) (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_2110
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3298 (coe v1) (coe v2) (coe v3))))
            (d_toℚ'7512''45'homo'45''42'_4234 (coe v1) (coe v0))))
-- Data.Rational.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_4634 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'nonNeg_4634 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonNeg_4634 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonNeg_4634 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'nonNeg_4634 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_4614 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_4656 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'nonPos_4656 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonPos_4656 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonPos_4656 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'nonPos_4656 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
               v1 v2))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
               (\ v4 ->
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                  (\ v4 ->
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                        (\ v4 ->
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0))))
                  (d_toℚ'7512''45'homo'45''42'_4234 (coe v1) (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''8804''45'nonPos_2192
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3298 (coe v1) (coe v2) (coe v3))))
            (d_toℚ'7512''45'homo'45''42'_4234 (coe v2) (coe v0))))
-- Data.Rational.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_4676 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'nonPos_4676 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonPos_4676 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonPos_4676 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'nonPos_4676 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonPos_4656 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_4696 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'691''45''8804''45'neg_4696 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'neg_4696 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'neg_4696 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'691''45''8804''45'neg_4696 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306 (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'691''45''8804''45'neg_2070
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
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2)))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v2)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v2)))
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
                     (d_toℚ'7512''45'homo'45''42'_4234 (coe v1) (coe v2)))
                  (d_toℚ'7512''45'mono'45''8804'_3298
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v2))
                     (coe v3)))
               (d_toℚ'7512''45'homo'45''42'_4234 (coe v0) (coe v2)))))
-- Data.Rational.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_4714 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'737''45''8804''45'neg_4714 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'neg_4714 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'neg_4714 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'737''45''8804''45'neg_4714 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'neg_4696 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_4736 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'737''45''60''45'pos_4736 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_4736 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_4736 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'737''45''60''45'pos_4736 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
         (\ v4 v5 -> v4) v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
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
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0))))
                     (d_toℚ'7512''45'homo'45''42'_4234 (coe v2) (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''60''45'pos_2236
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe d_toℚ'7512''45'mono'45''60'_3430 (coe v1) (coe v2) (coe v3))))
               (d_toℚ'7512''45'homo'45''42'_4234 (coe v1) (coe v0)))))
-- Data.Rational.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_4756 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'691''45''60''45'pos_4756 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_4756 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_4756 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'691''45''60''45'pos_4756 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_4736 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_4780 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'nonNeg_4780 v0 ~v1 v2 v3 v4
  = du_'42''45'cancel'737''45''60''45'nonNeg_4780 v0 v2 v3 v4
du_'42''45'cancel'737''45''60''45'nonNeg_4780 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'nonNeg_4780 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438 (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'737''45''60''45'nonNeg_2324
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v1)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v1)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2)))
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
                              MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2)))
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
                        (d_toℚ'7512''45'homo'45''42'_4234 (coe v0) (coe v2)))
                     (d_toℚ'7512''45'mono'45''60'_3430
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0) (coe v2))
                        (coe v3)))
                  (d_toℚ'7512''45'homo'45''42'_4234 (coe v0) (coe v1))))))
-- Data.Rational.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_4802 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'nonNeg_4802 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'nonNeg_4802 v0 v2 v3
du_'42''45'cancel'691''45''60''45'nonNeg_4802 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'nonNeg_4802 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_4780 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_4824 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'737''45''60''45'neg_4824 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_4824 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_4824 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'737''45''60''45'neg_4824 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v4 v5 -> v5)
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
         v1 v2)
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         (\ v4 ->
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v4) (coe v0))
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
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
            (coe
               MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
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
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'42'__202
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                           (coe
                              MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v1) (coe v0))))
                     (d_toℚ'7512''45'homo'45''42'_4234 (coe v1) (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''60''45'neg_2346
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe d_toℚ'7512''45'mono'45''60'_3430 (coe v1) (coe v2) (coe v3))))
               (d_toℚ'7512''45'homo'45''42'_4234 (coe v2) (coe v0)))))
-- Data.Rational.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_4844 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'691''45''60''45'neg_4844 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_4844 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_4844 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'691''45''60''45'neg_4844 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_4824 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_4864 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'nonPos_4864 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_4864 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_4864 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'nonPos_4864 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3438 (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'cancel'737''45''60''45'nonPos_2388
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
                        MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
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
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0)))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v1)))
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
                              MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v1)))
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
                        (d_toℚ'7512''45'homo'45''42'_4234 (coe v2) (coe v1)))
                     (d_toℚ'7512''45'mono'45''60'_3430
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v2) (coe v1))
                        (coe v3)))
                  (d_toℚ'7512''45'homo'45''42'_4234 (coe v2) (coe v0))))))
-- Data.Rational.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_4882 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'nonPos_4882 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_4882 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_4882 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'nonPos_4882 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_4864 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.p≤q⇒p⊔q≡q
d_p'8804'q'8658'p'8852'q'8801'q_4898 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8804'q'8658'p'8852'q'8801'q_4898 = erased
-- Data.Rational.Properties.p≥q⇒p⊔q≡p
d_p'8805'q'8658'p'8852'q'8801'p_4924 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8805'q'8658'p'8852'q'8801'p_4924 = erased
-- Data.Rational.Properties.p≤q⇒p⊓q≡p
d_p'8804'q'8658'p'8851'q'8801'p_4950 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8804'q'8658'p'8851'q'8801'p_4950 = erased
-- Data.Rational.Properties.p≥q⇒p⊓q≡q
d_p'8805'q'8658'p'8851'q'8801'q_4976 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8805'q'8658'p'8851'q'8801'q_4976 = erased
-- Data.Rational.Properties.⊓-operator
d_'8851''45'operator_5002 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98
d_'8851''45'operator_5002
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1121
      (coe MAlonzo.Code.Data.Rational.Base.d__'8851'__330) erased erased
-- Data.Rational.Properties.⊔-operator
d_'8852''45'operator_5004 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_'8852''45'operator_5004
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1659
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__320) erased erased
-- Data.Rational.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_5008 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_5008 = erased
-- Data.Rational.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_5010 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_5010 = erased
-- Data.Rational.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_5012 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_5012 = erased
-- Data.Rational.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_5014 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_5014 = erased
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_5016 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x_5016
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_5018 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'x'8851'z'8804'y_5018
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_5020 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'z'8851'x'8804'y_5020
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_5022 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'x'8851'z'8804'y_5022
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3026
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_5024 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'z'8851'x'8804'y_5024
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3038
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_5026 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'y_5026
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_5028 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'z_5028
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_5030 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'y_5030
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_5032 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'x'8658'x'8804'y_5032
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_5034 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'y'8658'y'8804'x_5034
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_5036 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x_5036
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2674
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_5038 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x'8852'y_5038
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3136
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_5040 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'y_5040
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2700
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_5042 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'x'8658'x'8804'y_5042
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2934
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_5044 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'y'8658'y'8804'x_5044
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2966
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_5046 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'y_5046
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3050
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_5048 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'z_5048
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3064
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_5050 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_5050 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5052 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5052 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5054 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_5054
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5056 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5056 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5058 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_5058
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_5066 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_5066
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_2956
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_5068 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_5068 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_5070 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_5070 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5072 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'glb_5072
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5074 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5074 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5082 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_5082
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5084 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_5084
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5086 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_5086
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5090 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_5090
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5092 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_5092
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5094 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_5094
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5096 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'45''8804'_5096
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5100 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'691''45''8804'_5100
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5102 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'737''45''8804'_5102
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5106 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5106
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5108 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_5108
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5110 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_5110
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5112 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5112 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_5120 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_5120
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3036
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_5122 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_5122 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5124 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5124 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5126 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_5126
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2918
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5128 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5128 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5130 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_5130
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2920
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_5138 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_5138
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_2988
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_5140 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_5140 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_5142 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_5142 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5144 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5144 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5152 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_5152
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2900
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5154 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_5154
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2902
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5156 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_5156
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2896
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5160 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_5160
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2904
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5162 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_5162
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2898
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5164 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'glb_5164
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3144
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5166 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_5166
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2914
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5168 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'45''8804'_5168
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3072
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5172 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'691''45''8804'_5172
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3132
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5174 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'737''45''8804'_5174
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3122
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5176 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5176
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2854
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5178 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_5178
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2922
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5180 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_5180
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2916
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5182 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5182 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_5190 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_5190
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3034
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5194 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8851''45'isSemilattice_5194
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5196 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5196
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8851''45'operator_5002 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_5198 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8851''45''8852''45'distributiveLattice_5198
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_806
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_5200 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8851''45''8852''45'isDistributiveLattice_5200
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_796
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_5202 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8851''45''8852''45'isLattice_5202
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_794
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_5204 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8851''45''8852''45'lattice_5204
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_802
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5206 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2526
d_'8851''45'isSemilattice_5206
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5208 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5208
  = let v0 = d_'8804''45'totalPreorder_3422 in
    coe
      (let v1 = d_'8852''45'operator_5004 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_5210 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8852''45''8851''45'distributiveLattice_5210
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_804
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_5212 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2900
d_'8852''45''8851''45'isDistributiveLattice_5212
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_798
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_5214 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2826
d_'8852''45''8851''45'isLattice_5214
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_792
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_5216 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8852''45''8851''45'lattice_5216
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_800
      (coe d_'8804''45'totalPreorder_3422)
      (coe d_'8851''45'operator_5002) (coe d_'8852''45'operator_5004)
-- Data.Rational.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_5224 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_5224 = erased
-- Data.Rational.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_5234 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_5234 = erased
-- Data.Rational.Properties.mono-<-distrib-⊓
d_mono'45''60''45'distrib'45''8851'_5244 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8851'_5244 = erased
-- Data.Rational.Properties.mono-<-distrib-⊔
d_mono'45''60''45'distrib'45''8852'_5316 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8852'_5316 = erased
-- Data.Rational.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_5388 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_5388 = erased
-- Data.Rational.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_5398 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_5398 = erased
-- Data.Rational.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_5410 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonNeg_5410 = erased
-- Data.Rational.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_5422 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonNeg_5422 = erased
-- Data.Rational.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_5434 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonNeg_5434 = erased
-- Data.Rational.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_5446 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonNeg_5446 = erased
-- Data.Rational.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_5458 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonPos_5458 = erased
-- Data.Rational.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_5470 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonPos_5470 = erased
-- Data.Rational.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_5482 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonPos_5482 = erased
-- Data.Rational.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_5494 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonPos_5494 = erased
-- Data.Rational.Properties.nonZero⇒1/nonZero
d_nonZero'8658'1'47'nonZero_5502 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_nonZero'8658'1'47'nonZero_5502 v0 ~v1
  = du_nonZero'8658'1'47'nonZero_5502 v0
du_nonZero'8658'1'47'nonZero_5502 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
du_nonZero'8658'1'47'nonZero_5502 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.1/-involutive
d_1'47''45'involutive_5508 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'47''45'involutive_5508 = erased
-- Data.Rational.Properties.1/pos⇒pos
d_1'47'pos'8658'pos_5522 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_1'47'pos'8658'pos_5522 v0 ~v1 = du_1'47'pos'8658'pos_5522 v0
du_1'47'pos'8658'pos_5522 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_1'47'pos'8658'pos_5522 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.1/neg⇒neg
d_1'47'neg'8658'neg_5528 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_1'47'neg'8658'neg_5528 v0 ~v1 = du_1'47'neg'8658'neg_5528 v0
du_1'47'neg'8658'neg_5528 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_1'47'neg'8658'neg_5528 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1613
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.pos⇒1/pos
d_pos'8658'1'47'pos_5536 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'8658'1'47'pos_5536 v0 ~v1 ~v2 = du_pos'8658'1'47'pos_5536 v0
du_pos'8658'1'47'pos_5536 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'8658'1'47'pos_5536 v0
  = coe
      du_1'47'pos'8658'pos_5522
      (coe MAlonzo.Code.Data.Rational.Base.du_1'47'__290 (coe v0))
-- Data.Rational.Properties.neg⇒1/neg
d_neg'8658'1'47'neg_5546 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_neg'8658'1'47'neg_5546 v0 ~v1 ~v2 = du_neg'8658'1'47'neg_5546 v0
du_neg'8658'1'47'neg_5546 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_neg'8658'1'47'neg_5546 v0
  = coe
      du_1'47'neg'8658'neg_5528
      (coe MAlonzo.Code.Data.Rational.Base.du_1'47'__290 (coe v0))
-- Data.Rational.Properties.toℚᵘ-homo-∣-∣
d_toℚ'7512''45'homo'45''8739''45''8739'_5550 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''8739''45''8739'_5550 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p∣≡0⇒p≡0
d_'8739'p'8739''8801'0'8658'p'8801'0_5554 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'8739''8801'0'8658'p'8801'0_5554 = erased
-- Data.Rational.Properties.0≤∣p∣
d_0'8804''8739'p'8739'_5560 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_0'8804''8739'p'8739'_5560 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe
                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                   (\ v4 v5 v6 ->
                      coe
                        MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2712 v6))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_numerator_14
                      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178))
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_denominator_22
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                         (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2))))
                (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                   (coe
                      MAlonzo.Code.Data.Rational.Base.d_numerator_14
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
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
                            MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                            (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2))))
                   MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                   (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_numerator_14
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                            (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                      (coe
                         MAlonzo.Code.Data.Rational.Base.d_denominator_22
                         (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                         (coe
                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666)
                         (\ v4 v5 v6 v7 v8 ->
                            coe
                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2824
                              v7 v8))
                      MAlonzo.Code.Data.Integer.Base.d_0ℤ_12
                      (MAlonzo.Code.Data.Rational.Base.d_numerator_14
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                            (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                      (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_numerator_14
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                         (coe
                            MAlonzo.Code.Data.Rational.Base.d_denominator_22
                            (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                         (\ v4 v5 v6 v7 v8 -> v8)
                         (MAlonzo.Code.Data.Rational.Base.d_numerator_14
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                               (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                               (coe
                                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                  (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                            (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16))
                         (MAlonzo.Code.Data.Integer.Base.d__'42'__308
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_numerator_14
                               (coe
                                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                  (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                            (coe
                               MAlonzo.Code.Data.Rational.Base.d_denominator_22
                               (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                               (coe
                                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2666))
                            (coe
                               MAlonzo.Code.Data.Integer.Base.d__'42'__308
                               (coe
                                  MAlonzo.Code.Data.Rational.Base.d_numerator_14
                                  (coe
                                     MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                     (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2)))
                               (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16)))
                         erased)
                      (coe
                         MAlonzo.Code.Data.Integer.Base.C_'43''8804''43'_48
                         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)))
                   erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.0≤p⇒∣p∣≡p
d_0'8804'p'8658''8739'p'8739''8801'p_5568 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'p'8658''8739'p'8739''8801'p_5568 = erased
-- Data.Rational.Properties.∣-p∣≡∣p∣
d_'8739''45'p'8739''8801''8739'p'8739'_5576 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'p'8739''8801''8739'p'8739'_5576 = erased
-- Data.Rational.Properties.∣p∣≡p⇒0≤p
d_'8739'p'8739''8801'p'8658'0'8804'p_5590 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'8739''8801'p'8658'0'8804'p_5590 v0 ~v1
  = du_'8739'p'8739''8801'p'8658'0'8804'p_5590 v0
du_'8739'p'8739''8801'p'8658'0'8804'p_5590 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8739'p'8739''8801'p'8658'0'8804'p_5590 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739'p'8739''8771'p'8658'0'8804'p_3310
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
                     (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0)))
                  (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v2 v3 v4 v5 v6 -> v6)
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0)))
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
                     (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5550 (coe v0)))))))
-- Data.Rational.Properties.∣p∣≡p∨∣p∣≡-p
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_5602 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_5602 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
             _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p+q∣≤∣p∣+∣q∣
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5616 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5616 v0 v1
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3306
      (coe
         MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Data.Rational.Base.d__'43'__268
         (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1)))
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
               MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1))))
         (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
            (coe
               MAlonzo.Code.Data.Rational.Base.d__'43'__268
               (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
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
                  MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1))))
            (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
               (coe
                  MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1))))
            (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268
                  (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
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
                        MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
               (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d__'43'__268
                     (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
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
                        MAlonzo.Code.Data.Rational.Base.d__'43'__268
                        (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
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
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
                     (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'43'__268
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
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
                              (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0)))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
                        (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'43'__268
                              (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
                        (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d__'43'__268
                              (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'isPreorder_476))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                              (coe
                                 MAlonzo.Code.Data.Rational.Base.d__'43'__268
                                 (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                                 (coe
                                    MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1)))))
                        (d_toℚ'7512''45'homo'45''43'_3866
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0))
                           (coe
                              MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1))))
                     (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'cong_970
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                           (coe MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336 (coe v1)))
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'8739'_'8739'_260
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                        (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5550 (coe v0))
                        (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5550 (coe v1))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3340
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739''45''8739''45'cong_3206
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                  (coe d_toℚ'7512''45'homo'45''43'_3866 (coe v0) (coe v1))))
            (d_toℚ'7512''45'homo'45''8739''45''8739'_5550
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__268 (coe v0) (coe v1)))))
-- Data.Rational.Properties.∣p-q∣≤∣p∣+∣q∣
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_5630 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_5630 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                       (coe d_'8804''45'isPreorder_3412)
                       (\ v8 v9 v10 -> coe du_'60''8658''8804'_3450 v10))
                    (MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d__'45'__280
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                    (MAlonzo.Code.Data.Rational.Base.d__'43'__268
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                       (coe
                          MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                          (coe d_'8804''45'isPreorder_3412)
                          (coe d_'8804''45''60''45'trans_3542))
                       (MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d__'45'__280
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                       (MAlonzo.Code.Data.Rational.Base.d__'43'__268
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'45'__112
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                       (MAlonzo.Code.Data.Rational.Base.d__'43'__268
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                          (\ v8 v9 v10 v11 v12 -> v12)
                          (MAlonzo.Code.Data.Rational.Base.d__'43'__268
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'45'__112
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                          (MAlonzo.Code.Data.Rational.Base.d__'43'__268
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                          (MAlonzo.Code.Data.Rational.Base.d__'43'__268
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                (coe d_'8804''45'isPreorder_3412))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'43'__268
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_336
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                          erased)
                       (d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5616
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'45'__112
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p*q∣≡∣p∣*∣q∣
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_5646 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_5646
  = erased
-- Data.Rational.Properties.∣-∣-nonNeg
d_'8739''45''8739''45'nonNeg_5658 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'8739''45''8739''45'nonNeg_5658 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣∣p∣∣≡∣p∣
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_5662 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_5662 = erased
-- Data.Rational.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_5670 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'neg_5670 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'neg_5670 v0 v2 v3
du_'42''45'mono'691''45''8804''45'neg_5670 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'neg_5670 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'691''45''8804''45'nonPos_4656
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_5678 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'neg_5678 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'neg_5678 v0 v2 v3
du_'42''45'mono'737''45''8804''45'neg_5678 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'neg_5678 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'737''45''8804''45'nonPos_4676
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_5686 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'pos_5686 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'pos_5686 v0 v2 v3
du_'42''45'mono'691''45''8804''45'pos_5686 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'pos_5686 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'691''45''8804''45'nonNeg_4614
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_5694 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'pos_5694 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'pos_5694 v0 v2 v3
du_'42''45'mono'737''45''8804''45'pos_5694 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'pos_5694 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'737''45''8804''45'nonNeg_4634
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelˡ-<-pos
d_'42''45'cancel'737''45''60''45'pos_5704 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'pos_5704 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'pos_5704 v0 v2 v3
du_'42''45'cancel'737''45''60''45'pos_5704 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'pos_5704 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'737''45''60''45'nonNeg_4780
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelʳ-<-pos
d_'42''45'cancel'691''45''60''45'pos_5714 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'pos_5714 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'pos_5714 v0 v2 v3
du_'42''45'cancel'691''45''60''45'pos_5714 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'pos_5714 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'691''45''60''45'nonNeg_4802
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_5724 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'neg_5724 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'neg_5724 v0 v2 v3
du_'42''45'cancel'737''45''60''45'neg_5724 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'neg_5724 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'737''45''60''45'nonPos_4864 (coe v1) (coe v2)
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_5734 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'neg_5734 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'neg_5734 v0 v2 v3
du_'42''45'cancel'691''45''60''45'neg_5734 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'neg_5734 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'691''45''60''45'nonPos_4882 (coe v1) (coe v2)
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.negative<positive
d_negative'60'positive_5738 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_negative'60'positive_5738 v0 v1 ~v2 ~v3
  = du_negative'60'positive_5738 v0 v1
du_negative'60'positive_5738 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_negative'60'positive_5738 v0 v1
  = coe du_neg'60'pos_3788 (coe v0) (coe v1)
