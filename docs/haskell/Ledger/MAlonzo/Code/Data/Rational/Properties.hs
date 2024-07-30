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
import qualified MAlonzo.Code.Data.Sign.Base
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_518 = erased
-- Data.Rational.Properties._.IsCommutativeRing.*-comm
d_'42''45'comm_520 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_520 = erased
-- Data.Rational.Properties._.IsCommutativeRing.*-cong
d_'42''45'cong_522 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
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
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_528 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2506
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Rational.Properties._.IsCommutativeRing.assoc
d_assoc_546 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_546 = erased
-- Data.Rational.Properties._.IsCommutativeRing.comm
d_comm_548 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_548 = erased
-- Data.Rational.Properties._.IsCommutativeRing.∙-cong
d_'8729''45'cong_550 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
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
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_562 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_562 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Rational.Properties._.IsCommutativeRing.isGroup
d_isGroup_570 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.isMagma
d_isMagma_576 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.isMonoid
d_isMonoid_578 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.isSemigroup
d_isSemigroup_580 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.⁻¹-cong
d_'8315''185''45'cong_584 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_584 = erased
-- Data.Rational.Properties._.IsCommutativeRing.inverse
d_inverse_586 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.distrib
d_distrib_592 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2508
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0))
-- Data.Rational.Properties._.IsCommutativeRing.isEquivalence
d_isEquivalence_602 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.isRing
d_isRing_608 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478
d_isRing_608 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isRing_2640 (coe v0)
-- Data.Rational.Properties._.IsCommutativeRing.isRingWithoutOne
d_isRingWithoutOne_610 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsCommutativeRing.sym
d_sym_624 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_624 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.assoc
d_assoc_640 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_640 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.comm
d_comm_642 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_642 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.isEquivalence
d_isEquivalence_646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemigroup.isMagma
d_isMagma_648 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_648 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_652 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_652 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_524 (coe v0)
-- Data.Rational.Properties._.IsCommutativeSemigroup.sym
d_sym_660 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_660 = erased
-- Data.Rational.Properties._.IsCommutativeSemigroup.∙-cong
d_'8729''45'cong_664 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_664 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-assoc
d_'42''45'assoc_672 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_672 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-comm
d_'42''45'comm_674 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_674 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-cong
d_'42''45'cong_676 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_676 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.*-identity
d_'42''45'identity_682 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemiring.assoc
d_assoc_700 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_700 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.comm
d_comm_702 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_702 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.∙-cong
d_'8729''45'cong_704 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_704 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.identity
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
-- Data.Rational.Properties._.IsCommutativeSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_718 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_718 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemiring.isMagma
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
-- Data.Rational.Properties._.IsCommutativeSemiring.isMonoid
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
-- Data.Rational.Properties._.IsCommutativeSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsCommutativeSemiring.distrib
d_distrib_730 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_730 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)))
-- Data.Rational.Properties._.IsCommutativeSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsCommutativeSemiring.isSemiring
d_isSemiring_744 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_744 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0)
-- Data.Rational.Properties._.IsCommutativeSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_746 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiring.sym
d_sym_756 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_756 = erased
-- Data.Rational.Properties._.IsCommutativeSemiring.zero
d_zero_760 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1540 (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.*-assoc
d_'42''45'assoc_772 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_772 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_774 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_774 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.*-cong
d_'42''45'cong_776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_776 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.comm
d_comm_790 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_790 = erased
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_794 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.isMonoid
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
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.distrib
d_distrib_802 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_802 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1170
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_810 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_810 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
      (coe v0)
-- Data.Rational.Properties._.IsCommutativeSemiringWithoutOne.zero
d_zero_824 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1172
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1242
         (coe v0))
-- Data.Rational.Properties._.IsFlexibleMagma.flex
d_flex_832 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flex_832 = erased
-- Data.Rational.Properties._.IsFlexibleMagma.isEquivalence
d_isEquivalence_834 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_834 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0))
-- Data.Rational.Properties._.IsFlexibleMagma.isMagma
d_isMagma_836 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_836 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_300 (coe v0)
-- Data.Rational.Properties._.IsFlexibleMagma.sym
d_sym_846 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_846 = erased
-- Data.Rational.Properties._.IsFlexibleMagma.∙-cong
d_'8729''45'cong_850 ::
  MAlonzo.Code.Algebra.Structures.T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_850 = erased
-- Data.Rational.Properties._.IsGroup.assoc
d_assoc_860 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_860 = erased
-- Data.Rational.Properties._.IsGroup.identity
d_identity_862 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_862 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Rational.Properties._.IsGroup.inverse
d_inverse_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_868 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_908 (coe v0)
-- Data.Rational.Properties._.IsGroup.isEquivalence
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
-- Data.Rational.Properties._.IsGroup.isMagma
d_isMagma_880 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_880 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)))
-- Data.Rational.Properties._.IsGroup.isMonoid
d_isMonoid_882 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_882 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0)
-- Data.Rational.Properties._.IsGroup.isSemigroup
d_isSemigroup_886 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_886 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_906 (coe v0))
-- Data.Rational.Properties._.IsGroup.sym
d_sym_896 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_896 = erased
-- Data.Rational.Properties._.IsGroup.⁻¹-cong
d_'8315''185''45'cong_904 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_904 = erased
-- Data.Rational.Properties._.IsGroup.∙-cong
d_'8729''45'cong_906 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_906 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.assoc
d_assoc_914 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_914 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.comm
d_comm_916 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_916 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.idem
d_idem_918 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_918 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.identity
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_930 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0)
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isEquivalence
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isMagma
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isMonoid
d_isMonoid_938 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_938 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_724 (coe v0))
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.isSemigroup
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
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.sym
d_sym_952 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_952 = erased
-- Data.Rational.Properties._.IsIdempotentCommutativeMonoid.∙-cong
d_'8729''45'cong_956 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_956 = erased
-- Data.Rational.Properties._.IsIdempotentMagma.idem
d_idem_964 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_idem_964 = erased
-- Data.Rational.Properties._.IsIdempotentMagma.isEquivalence
d_isEquivalence_966 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0))
-- Data.Rational.Properties._.IsIdempotentMagma.isMagma
d_isMagma_968 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_968 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_224 (coe v0)
-- Data.Rational.Properties._.IsIdempotentMagma.sym
d_sym_978 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_978 = erased
-- Data.Rational.Properties._.IsIdempotentMagma.∙-cong
d_'8729''45'cong_982 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_982 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.*-assoc
d_'42''45'assoc_990 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_990 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.*-cong
d_'42''45'cong_992 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_992 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.*-identity
d_'42''45'identity_998 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Rational.Properties._.IsIdempotentSemiring.assoc
d_assoc_1010 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1010 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.comm
d_comm_1012 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1012 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.∙-cong
d_'8729''45'cong_1014 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1014 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.+-idem
d_'43''45'idem_1020 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1020 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.identity
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
-- Data.Rational.Properties._.IsIdempotentSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1030 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Rational.Properties._.IsIdempotentSemiring.isMagma
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
-- Data.Rational.Properties._.IsIdempotentSemiring.isMonoid
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
-- Data.Rational.Properties._.IsIdempotentSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsIdempotentSemiring.distrib
d_distrib_1042 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)))
-- Data.Rational.Properties._.IsIdempotentSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsIdempotentSemiring.isSemiring
d_isSemiring_1054 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1054 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0)
-- Data.Rational.Properties._.IsIdempotentSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1056 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1056 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Rational.Properties._.IsIdempotentSemiring.sym
d_sym_1066 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1066 = erased
-- Data.Rational.Properties._.IsIdempotentSemiring.zero
d_zero_1070 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1070 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1434
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1782 (coe v0))
-- Data.Rational.Properties._.IsInvertibleMagma.inverse
d_inverse_1078 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1078 v0
  = coe MAlonzo.Code.Algebra.Structures.d_inverse_796 (coe v0)
-- Data.Rational.Properties._.IsInvertibleMagma.isEquivalence
d_isEquivalence_1084 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1084 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0))
-- Data.Rational.Properties._.IsInvertibleMagma.isMagma
d_isMagma_1086 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1086 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_794 (coe v0)
-- Data.Rational.Properties._.IsInvertibleMagma.sym
d_sym_1096 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1096 = erased
-- Data.Rational.Properties._.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_1100 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1100 = erased
-- Data.Rational.Properties._.IsInvertibleMagma.∙-cong
d_'8729''45'cong_1102 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1102 = erased
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.identity
d_identity_1110 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1110 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_846 (coe v0)
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.inverse
d_inverse_1116 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.isEquivalence
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
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1124 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleMagma_780
d_isInvertibleMagma_1124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0)
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.isMagma
d_isMagma_1126 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_794
      (coe
         MAlonzo.Code.Algebra.Structures.d_isInvertibleMagma_844 (coe v0))
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.sym
d_sym_1138 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1138 = erased
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.⁻¹-cong
d_'8315''185''45'cong_1142 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1142 = erased
-- Data.Rational.Properties._.IsInvertibleUnitalMagma.∙-cong
d_'8729''45'cong_1144 ::
  MAlonzo.Code.Algebra.Structures.T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1144 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.*-assoc
d_'42''45'assoc_1152 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1152 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.*-cong
d_'42''45'cong_1154 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1154 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.*-identity
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
-- Data.Rational.Properties._.IsKleeneAlgebra.assoc
d_assoc_1172 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1172 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.comm
d_comm_1174 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1174 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.∙-cong
d_'8729''45'cong_1176 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1176 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.+-idem
d_'43''45'idem_1182 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'idem_1182 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.identity
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
-- Data.Rational.Properties._.IsKleeneAlgebra.+-isCommutativeMonoid
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isMagma
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isMonoid
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isSemigroup
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
-- Data.Rational.Properties._.IsKleeneAlgebra.distrib
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isEquivalence
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
-- Data.Rational.Properties._.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1212 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentSemiring_1768
d_isIdempotentSemiring_1212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
      (coe v0)
-- Data.Rational.Properties._.IsKleeneAlgebra.isSemiring
d_isSemiring_1218 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418
d_isSemiring_1218 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1782
      (coe
         MAlonzo.Code.Algebra.Structures.d_isIdempotentSemiring_1898
         (coe v0))
-- Data.Rational.Properties._.IsKleeneAlgebra.isSemiringWithoutAnnihilatingZero
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
-- Data.Rational.Properties._.IsKleeneAlgebra.starDestructive
d_starDestructive_1230 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_starDestructive_1902 (coe v0)
-- Data.Rational.Properties._.IsKleeneAlgebra.starExpansive
d_starExpansive_1236 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1236 v0
  = coe MAlonzo.Code.Algebra.Structures.d_starExpansive_1900 (coe v0)
-- Data.Rational.Properties._.IsKleeneAlgebra.sym
d_sym_1242 ::
  MAlonzo.Code.Algebra.Structures.T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1242 = erased
-- Data.Rational.Properties._.IsKleeneAlgebra.zero
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
-- Data.Rational.Properties._.IsLeftBolLoop.//-cong
d_'47''47''45'cong_1254 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1254 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.\\-cong
d_'92''92''45'cong_1260 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1260 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.identity
d_identity_1266 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1266 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Rational.Properties._.IsLeftBolLoop.isEquivalence
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
-- Data.Rational.Properties._.IsLeftBolLoop.isLoop
d_isLoop_1274 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1274 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)
-- Data.Rational.Properties._.IsLeftBolLoop.isMagma
d_isMagma_1276 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Rational.Properties._.IsLeftBolLoop.isQuasigroup
d_isQuasigroup_1280 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0))
-- Data.Rational.Properties._.IsLeftBolLoop.leftBol
d_leftBol_1282 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1282 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.leftDivides
d_leftDivides_1284 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1284 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Rational.Properties._.IsLeftBolLoop.rightDivides
d_rightDivides_1294 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_2946 (coe v0)))
-- Data.Rational.Properties._.IsLeftBolLoop.sym
d_sym_1302 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1302 = erased
-- Data.Rational.Properties._.IsLeftBolLoop.∙-cong
d_'8729''45'cong_1306 ::
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1306 = erased
-- Data.Rational.Properties._.IsLoop.//-cong
d_'47''47''45'cong_1314 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1314 = erased
-- Data.Rational.Properties._.IsLoop.\\-cong
d_'92''92''45'cong_1320 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1320 = erased
-- Data.Rational.Properties._.IsLoop.identity
d_identity_1326 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1326 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_2870 (coe v0)
-- Data.Rational.Properties._.IsLoop.isEquivalence
d_isEquivalence_1332 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1332 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_2790
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)))
-- Data.Rational.Properties._.IsLoop.isMagma
d_isMagma_1334 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1334 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Rational.Properties._.IsLoop.isQuasigroup
d_isQuasigroup_1338 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1338 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0)
-- Data.Rational.Properties._.IsLoop.leftDivides
d_leftDivides_1340 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Rational.Properties._.IsLoop.rightDivides
d_rightDivides_1350 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1350 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868 (coe v0))
-- Data.Rational.Properties._.IsLoop.sym
d_sym_1358 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1358 = erased
-- Data.Rational.Properties._.IsLoop.∙-cong
d_'8729''45'cong_1362 ::
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1362 = erased
-- Data.Rational.Properties._.IsMagma.isEquivalence
d_isEquivalence_1370 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1370 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_152 (coe v0)
-- Data.Rational.Properties._.IsMagma.sym
d_sym_1380 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1380 = erased
-- Data.Rational.Properties._.IsMagma.∙-cong
d_'8729''45'cong_1384 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1384 = erased
-- Data.Rational.Properties._.IsMedialMagma.isEquivalence
d_isEquivalence_1392 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1392 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0))
-- Data.Rational.Properties._.IsMedialMagma.isMagma
d_isMagma_1394 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1394 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_336 (coe v0)
-- Data.Rational.Properties._.IsMedialMagma.medial
d_medial_1398 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_medial_1398 = erased
-- Data.Rational.Properties._.IsMedialMagma.sym
d_sym_1406 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1406 = erased
-- Data.Rational.Properties._.IsMedialMagma.∙-cong
d_'8729''45'cong_1410 ::
  MAlonzo.Code.Algebra.Structures.T_IsMedialMagma_328 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1410 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.//-cong
d_'47''47''45'cong_1418 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1418 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.\\-cong
d_'92''92''45'cong_1424 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1424 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.identity
d_identity_1430 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Rational.Properties._.IsMiddleBolLoop.isEquivalence
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
-- Data.Rational.Properties._.IsMiddleBolLoop.isLoop
d_isLoop_1438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1438 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)
-- Data.Rational.Properties._.IsMiddleBolLoop.isMagma
d_isMagma_1440 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Rational.Properties._.IsMiddleBolLoop.isQuasigroup
d_isQuasigroup_1444 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1444 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0))
-- Data.Rational.Properties._.IsMiddleBolLoop.leftDivides
d_leftDivides_1446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Rational.Properties._.IsMiddleBolLoop.middleBol
d_middleBol_1452 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_middleBol_1452 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.rightDivides
d_rightDivides_1458 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1458 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3200 (coe v0)))
-- Data.Rational.Properties._.IsMiddleBolLoop.sym
d_sym_1466 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1466 = erased
-- Data.Rational.Properties._.IsMiddleBolLoop.∙-cong
d_'8729''45'cong_1470 ::
  MAlonzo.Code.Algebra.Structures.T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1470 = erased
-- Data.Rational.Properties._.IsMonoid.assoc
d_assoc_1478 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1478 = erased
-- Data.Rational.Properties._.IsMonoid.identity
d_identity_1480 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1480 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_616 (coe v0)
-- Data.Rational.Properties._.IsMonoid.isEquivalence
d_isEquivalence_1486 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_448
         (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)))
-- Data.Rational.Properties._.IsMonoid.isMagma
d_isMagma_1488 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1488 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_448
      (coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0))
-- Data.Rational.Properties._.IsMonoid.isSemigroup
d_isSemigroup_1492 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1492 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_614 (coe v0)
-- Data.Rational.Properties._.IsMonoid.sym
d_sym_1502 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1502 = erased
-- Data.Rational.Properties._.IsMonoid.∙-cong
d_'8729''45'cong_1506 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1506 = erased
-- Data.Rational.Properties._.IsMoufangLoop.//-cong
d_'47''47''45'cong_1514 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1514 = erased
-- Data.Rational.Properties._.IsMoufangLoop.\\-cong
d_'92''92''45'cong_1520 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1520 = erased
-- Data.Rational.Properties._.IsMoufangLoop.identical
d_identical_1526 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identical_1526 = erased
-- Data.Rational.Properties._.IsMoufangLoop.identity
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
-- Data.Rational.Properties._.IsMoufangLoop.isEquivalence
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
-- Data.Rational.Properties._.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_1536 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLeftBolLoop_2932
d_isLeftBolLoop_1536 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0)
-- Data.Rational.Properties._.IsMoufangLoop.isLoop
d_isLoop_1538 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLoop_2946
      (coe MAlonzo.Code.Algebra.Structures.d_isLeftBolLoop_3112 (coe v0))
-- Data.Rational.Properties._.IsMoufangLoop.isMagma
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
-- Data.Rational.Properties._.IsMoufangLoop.isQuasigroup
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
-- Data.Rational.Properties._.IsMoufangLoop.leftBol
d_leftBol_1546 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_leftBol_1546 = erased
-- Data.Rational.Properties._.IsMoufangLoop.leftDivides
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
-- Data.Rational.Properties._.IsMoufangLoop.rightBol
d_rightBol_1558 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1558 = erased
-- Data.Rational.Properties._.IsMoufangLoop.rightDivides
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
-- Data.Rational.Properties._.IsMoufangLoop.sym
d_sym_1568 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1568 = erased
-- Data.Rational.Properties._.IsMoufangLoop.∙-cong
d_'8729''45'cong_1572 ::
  MAlonzo.Code.Algebra.Structures.T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1572 = erased
-- Data.Rational.Properties._.IsNearSemiring.*-assoc
d_'42''45'assoc_1580 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1580 = erased
-- Data.Rational.Properties._.IsNearSemiring.*-cong
d_'42''45'cong_1582 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1582 = erased
-- Data.Rational.Properties._.IsNearSemiring.assoc
d_assoc_1592 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1592 = erased
-- Data.Rational.Properties._.IsNearSemiring.∙-cong
d_'8729''45'cong_1594 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1594 = erased
-- Data.Rational.Properties._.IsNearSemiring.identity
d_identity_1600 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Rational.Properties._.IsNearSemiring.isMagma
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
-- Data.Rational.Properties._.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1608 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0)
-- Data.Rational.Properties._.IsNearSemiring.isSemigroup
d_isSemigroup_1610 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_1084 (coe v0))
-- Data.Rational.Properties._.IsNearSemiring.distribʳ
d_distrib'691'_1614 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691'_1614 = erased
-- Data.Rational.Properties._.IsNearSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsNearSemiring.sym
d_sym_1626 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1626 = erased
-- Data.Rational.Properties._.IsNearSemiring.zeroˡ
d_zero'737'_1630 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_1066 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_1630 = erased
-- Data.Rational.Properties._.IsNearring.*-assoc
d_'42''45'assoc_1634 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1634 = erased
-- Data.Rational.Properties._.IsNearring.*-cong
d_'42''45'cong_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1636 = erased
-- Data.Rational.Properties._.IsNearring.*-identity
d_'42''45'identity_1642 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Rational.Properties._.IsNearring.assoc
d_assoc_1654 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1654 = erased
-- Data.Rational.Properties._.IsNearring.∙-cong
d_'8729''45'cong_1656 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1656 = erased
-- Data.Rational.Properties._.IsNearring.identity
d_identity_1662 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1662 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))
-- Data.Rational.Properties._.IsNearring.+-inverse
d_'43''45'inverse_1668 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_1668 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'inverse_2386 (coe v0)
-- Data.Rational.Properties._.IsNearring.isMagma
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
-- Data.Rational.Properties._.IsNearring.+-isMonoid
d_'43''45'isMonoid_1676 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Rational.Properties._.IsNearring.isSemigroup
d_isSemigroup_1678 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1678 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030
         (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)))
-- Data.Rational.Properties._.IsNearring.distrib
d_distrib_1682 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1682 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_2038
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Rational.Properties._.IsNearring.isEquivalence
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
-- Data.Rational.Properties._.IsNearring.isQuasiring
d_isQuasiring_1696 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008
d_isQuasiring_1696 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0)
-- Data.Rational.Properties._.IsNearring.sym
d_sym_1704 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1704 = erased
-- Data.Rational.Properties._.IsNearring.zero
d_zero_1708 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_2040
      (coe MAlonzo.Code.Algebra.Structures.d_isQuasiring_2384 (coe v0))
-- Data.Rational.Properties._.IsNearring.⁻¹-cong
d_'8315''185''45'cong_1714 ::
  MAlonzo.Code.Algebra.Structures.T_IsNearring_2366 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1714 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.*-cong
d_'42''45'cong_1720 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1720 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.*-identity
d_'42''45'identity_1726 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1726 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2262 (coe v0)
-- Data.Rational.Properties._.IsNonAssociativeRing.assoc
d_assoc_1736 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1736 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.comm
d_comm_1738 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_1738 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.∙-cong
d_'8729''45'cong_1740 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1740 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.identity
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
-- Data.Rational.Properties._.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_1752 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
      (coe v0)
-- Data.Rational.Properties._.IsNonAssociativeRing.isGroup
d_isGroup_1760 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_1760 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2258
         (coe v0))
-- Data.Rational.Properties._.IsNonAssociativeRing.isMagma
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
-- Data.Rational.Properties._.IsNonAssociativeRing.isMonoid
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
-- Data.Rational.Properties._.IsNonAssociativeRing.isSemigroup
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
-- Data.Rational.Properties._.IsNonAssociativeRing.⁻¹-cong
d_'8315''185''45'cong_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_1774 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.inverse
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
-- Data.Rational.Properties._.IsNonAssociativeRing.distrib
d_distrib_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1782 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2264 (coe v0)
-- Data.Rational.Properties._.IsNonAssociativeRing.isEquivalence
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
-- Data.Rational.Properties._.IsNonAssociativeRing.sym
d_sym_1798 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1798 = erased
-- Data.Rational.Properties._.IsNonAssociativeRing.zero
d_zero_1806 ::
  MAlonzo.Code.Algebra.Structures.T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1806 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2266 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.//-cong
d_'47''47''45'cong_1814 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1814 = erased
-- Data.Rational.Properties._.IsQuasigroup.\\-cong
d_'92''92''45'cong_1820 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1820 = erased
-- Data.Rational.Properties._.IsQuasigroup.isEquivalence
d_isEquivalence_1826 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0))
-- Data.Rational.Properties._.IsQuasigroup.isMagma
d_isMagma_1828 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1828 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_2790 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.leftDivides
d_leftDivides_1832 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1832 v0
  = coe MAlonzo.Code.Algebra.Structures.d_leftDivides_2796 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.rightDivides
d_rightDivides_1842 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1842 v0
  = coe MAlonzo.Code.Algebra.Structures.d_rightDivides_2798 (coe v0)
-- Data.Rational.Properties._.IsQuasigroup.sym
d_sym_1850 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1850 = erased
-- Data.Rational.Properties._.IsQuasigroup.∙-cong
d_'8729''45'cong_1854 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1854 = erased
-- Data.Rational.Properties._.IsQuasiring.*-assoc
d_'42''45'assoc_1862 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1862 = erased
-- Data.Rational.Properties._.IsQuasiring.*-cong
d_'42''45'cong_1864 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_1864 = erased
-- Data.Rational.Properties._.IsQuasiring.*-identity
d_'42''45'identity_1870 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1870 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2036 (coe v0)
-- Data.Rational.Properties._.IsQuasiring.assoc
d_assoc_1882 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_1882 = erased
-- Data.Rational.Properties._.IsQuasiring.∙-cong
d_'8729''45'cong_1884 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1884 = erased
-- Data.Rational.Properties._.IsQuasiring.identity
d_identity_1890 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1890 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_616
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Rational.Properties._.IsQuasiring.isMagma
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
-- Data.Rational.Properties._.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_1898 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'isMonoid_1898 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0)
-- Data.Rational.Properties._.IsQuasiring.isSemigroup
d_isSemigroup_1900 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_1900 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_2030 (coe v0))
-- Data.Rational.Properties._.IsQuasiring.distrib
d_distrib_1904 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1904 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2038 (coe v0)
-- Data.Rational.Properties._.IsQuasiring.isEquivalence
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
-- Data.Rational.Properties._.IsQuasiring.sym
d_sym_1924 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1924 = erased
-- Data.Rational.Properties._.IsQuasiring.zero
d_zero_1928 ::
  MAlonzo.Code.Algebra.Structures.T_IsQuasiring_2008 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1928 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_2040 (coe v0)
-- Data.Rational.Properties._.IsRightBolLoop.//-cong
d_'47''47''45'cong_1936 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''47''45'cong_1936 = erased
-- Data.Rational.Properties._.IsRightBolLoop.\\-cong
d_'92''92''45'cong_1942 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'92''92''45'cong_1942 = erased
-- Data.Rational.Properties._.IsRightBolLoop.identity
d_identity_1948 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1948 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_2870
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Rational.Properties._.IsRightBolLoop.isEquivalence
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
-- Data.Rational.Properties._.IsRightBolLoop.isLoop
d_isLoop_1956 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsLoop_2854
d_isLoop_1956 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)
-- Data.Rational.Properties._.IsRightBolLoop.isMagma
d_isMagma_1958 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_1958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_2790
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Rational.Properties._.IsRightBolLoop.isQuasigroup
d_isQuasigroup_1962 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Algebra.Structures.T_IsQuasigroup_2772
d_isQuasigroup_1962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
      (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0))
-- Data.Rational.Properties._.IsRightBolLoop.leftDivides
d_leftDivides_1964 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_1964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_leftDivides_2796
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Rational.Properties._.IsRightBolLoop.rightBol
d_rightBol_1974 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rightBol_1974 = erased
-- Data.Rational.Properties._.IsRightBolLoop.rightDivides
d_rightDivides_1976 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_1976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_rightDivides_2798
      (coe
         MAlonzo.Code.Algebra.Structures.d_isQuasigroup_2868
         (coe MAlonzo.Code.Algebra.Structures.d_isLoop_3028 (coe v0)))
-- Data.Rational.Properties._.IsRightBolLoop.sym
d_sym_1984 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_1984 = erased
-- Data.Rational.Properties._.IsRightBolLoop.∙-cong
d_'8729''45'cong_1988 ::
  MAlonzo.Code.Algebra.Structures.T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_1988 = erased
-- Data.Rational.Properties._.IsRing.*-assoc
d_'42''45'assoc_1998 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_1998 = erased
-- Data.Rational.Properties._.IsRing.*-cong
d_'42''45'cong_2000 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2000 = erased
-- Data.Rational.Properties._.IsRing.*-identity
d_'42''45'identity_2006 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_2506 (coe v0)
-- Data.Rational.Properties._.IsRing.assoc
d_assoc_2018 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2018 = erased
-- Data.Rational.Properties._.IsRing.comm
d_comm_2020 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2020 = erased
-- Data.Rational.Properties._.IsRing.∙-cong
d_'8729''45'cong_2022 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2022 = erased
-- Data.Rational.Properties._.IsRing.identity
d_identity_2028 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2034 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2500
      (coe v0)
-- Data.Rational.Properties._.IsRing.isGroup
d_isGroup_2042 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.isMagma
d_isMagma_2048 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.isMonoid
d_isMonoid_2050 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.isSemigroup
d_isSemigroup_2052 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.⁻¹-cong
d_'8315''185''45'cong_2056 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2056 = erased
-- Data.Rational.Properties._.IsRing.inverse
d_inverse_2058 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.distrib
d_distrib_2064 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2064 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2508 (coe v0)
-- Data.Rational.Properties._.IsRing.isEquivalence
d_isEquivalence_2070 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
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
-- Data.Rational.Properties._.IsRing.isRingWithoutOne
d_isRingWithoutOne_2076 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114
d_isRingWithoutOne_2076 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Algebra.Structures.du_isRingWithoutOne_2510 v5
-- Data.Rational.Properties._.IsRing.sym
d_sym_2090 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2090 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2108 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2108 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.*-cong
d_'42''45'cong_2110 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2110 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.assoc
d_assoc_2120 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2120 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.comm
d_comm_2122 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2122 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.∙-cong
d_'8729''45'cong_2124 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2124 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.identity
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
-- Data.Rational.Properties._.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2136 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2136 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
      (coe v0)
-- Data.Rational.Properties._.IsRingWithoutOne.isGroup
d_isGroup_2144 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_2144 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_992
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_2132
         (coe v0))
-- Data.Rational.Properties._.IsRingWithoutOne.isMagma
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
-- Data.Rational.Properties._.IsRingWithoutOne.isMonoid
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
-- Data.Rational.Properties._.IsRingWithoutOne.isSemigroup
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
-- Data.Rational.Properties._.IsRingWithoutOne.⁻¹-cong
d_'8315''185''45'cong_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_2158 = erased
-- Data.Rational.Properties._.IsRingWithoutOne.inverse
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
-- Data.Rational.Properties._.IsRingWithoutOne.distrib
d_distrib_2166 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2166 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_2138 (coe v0)
-- Data.Rational.Properties._.IsRingWithoutOne.isEquivalence
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
-- Data.Rational.Properties._.IsRingWithoutOne.sym
d_sym_2182 ::
  MAlonzo.Code.Algebra.Structures.T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2182 = erased
-- Data.Rational.Properties._.IsSelectiveMagma.isEquivalence
d_isEquivalence_2198 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0))
-- Data.Rational.Properties._.IsSelectiveMagma.isMagma
d_isMagma_2200 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2200 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v0)
-- Data.Rational.Properties._.IsSelectiveMagma.sel
d_sel_2208 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_2208 v0
  = coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0)
-- Data.Rational.Properties._.IsSelectiveMagma.sym
d_sym_2212 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2212 = erased
-- Data.Rational.Properties._.IsSelectiveMagma.∙-cong
d_'8729''45'cong_2216 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2216 = erased
-- Data.Rational.Properties._.IsSemigroup.assoc
d_assoc_2224 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2224 = erased
-- Data.Rational.Properties._.IsSemigroup.isEquivalence
d_isEquivalence_2226 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2226 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0))
-- Data.Rational.Properties._.IsSemigroup.isMagma
d_isMagma_2228 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2228 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_448 (coe v0)
-- Data.Rational.Properties._.IsSemigroup.sym
d_sym_2238 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2238 = erased
-- Data.Rational.Properties._.IsSemigroup.∙-cong
d_'8729''45'cong_2242 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2242 = erased
-- Data.Rational.Properties._.IsSemimedialMagma.isEquivalence
d_isEquivalence_2250 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2250 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0))
-- Data.Rational.Properties._.IsSemimedialMagma.isMagma
d_isMagma_2252 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2252 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_372 (coe v0)
-- Data.Rational.Properties._.IsSemimedialMagma.semiMedial
d_semiMedial_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_2260 v0
  = coe MAlonzo.Code.Algebra.Structures.d_semiMedial_374 (coe v0)
-- Data.Rational.Properties._.IsSemimedialMagma.sym
d_sym_2268 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2268 = erased
-- Data.Rational.Properties._.IsSemimedialMagma.∙-cong
d_'8729''45'cong_2272 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2272 = erased
-- Data.Rational.Properties._.IsSemiring.*-assoc
d_'42''45'assoc_2280 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2280 = erased
-- Data.Rational.Properties._.IsSemiring.*-cong
d_'42''45'cong_2282 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2282 = erased
-- Data.Rational.Properties._.IsSemiring.*-identity
d_'42''45'identity_2288 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Rational.Properties._.IsSemiring.assoc
d_assoc_2300 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2300 = erased
-- Data.Rational.Properties._.IsSemiring.comm
d_comm_2302 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2302 = erased
-- Data.Rational.Properties._.IsSemiring.∙-cong
d_'8729''45'cong_2304 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2304 = erased
-- Data.Rational.Properties._.IsSemiring.identity
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
-- Data.Rational.Properties._.IsSemiring.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2318 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Rational.Properties._.IsSemiring.isMagma
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
-- Data.Rational.Properties._.IsSemiring.isMonoid
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
-- Data.Rational.Properties._.IsSemiring.isSemigroup
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
-- Data.Rational.Properties._.IsSemiring.distrib
d_distrib_2330 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2330 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1344
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
         (coe v0))
-- Data.Rational.Properties._.IsSemiring.isEquivalence
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
-- Data.Rational.Properties._.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2342 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1432
      (coe v0)
-- Data.Rational.Properties._.IsSemiring.sym
d_sym_2352 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2352 = erased
-- Data.Rational.Properties._.IsSemiring.zero
d_zero_2356 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2356 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1434 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_2364 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2364 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_2366 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2366 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_2372 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2372 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'identity_1342 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.assoc
d_assoc_2384 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_2384 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.comm
d_comm_2386 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2386 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.∙-cong
d_'8729''45'cong_2388 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2388 = erased
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.identity
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2402 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
      (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isMagma
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isMonoid
d_isMonoid_2408 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2408 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1336
         (coe v0))
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isSemigroup
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_2414 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2414 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1344 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.isEquivalence
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
-- Data.Rational.Properties._.IsSemiringWithoutAnnihilatingZero.sym
d_sym_2430 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2430 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_2440 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2440 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.*-cong
d_'42''45'cong_2442 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cong_2442 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.comm
d_comm_2452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_2452 = erased
-- Data.Rational.Properties._.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2456 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_2456 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
      (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutOne.isMonoid
d_isMonoid_2460 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_2460 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_664
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1164
         (coe v0))
-- Data.Rational.Properties._.IsSemiringWithoutOne.distrib
d_distrib_2464 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2464 v0
  = coe MAlonzo.Code.Algebra.Structures.d_distrib_1170 (coe v0)
-- Data.Rational.Properties._.IsSemiringWithoutOne.zero
d_zero_2484 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2484 v0
  = coe MAlonzo.Code.Algebra.Structures.d_zero_1172 (coe v0)
-- Data.Rational.Properties._.IsUnitalMagma.identity
d_identity_2492 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2492 v0
  = coe MAlonzo.Code.Algebra.Structures.d_identity_572 (coe v0)
-- Data.Rational.Properties._.IsUnitalMagma.isEquivalence
d_isEquivalence_2498 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2498 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0))
-- Data.Rational.Properties._.IsUnitalMagma.isMagma
d_isMagma_2500 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_2500 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isMagma_570 (coe v0)
-- Data.Rational.Properties._.IsUnitalMagma.sym
d_sym_2510 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_sym_2510 = erased
-- Data.Rational.Properties._.IsUnitalMagma.∙-cong
d_'8729''45'cong_2514 ::
  MAlonzo.Code.Algebra.Structures.T_IsUnitalMagma_560 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'cong_2514 = erased
-- Data.Rational.Properties.mkℚ-cong
d_mkℚ'45'cong_2538 ::
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
d_mkℚ'45'cong_2538 = erased
-- Data.Rational.Properties.mkℚ-injective
d_mkℚ'45'injective_2552 ::
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
d_mkℚ'45'injective_2552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_mkℚ'45'injective_2552
du_mkℚ'45'injective_2552 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkℚ'45'injective_2552
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties._≟_
d__'8799'__2554 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__2554 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                    (coe MAlonzo.Code.Data.Product.Base.du_uncurry_244 erased)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                       (coe
                          MAlonzo.Code.Data.Integer.Properties.d__'8799'__2562 (coe v2)
                          (coe v5))
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v3)
                          (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≡-setoid
d_'8801''45'setoid_2564 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_2564
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402
-- Data.Rational.Properties.≡-decSetoid
d_'8801''45'decSetoid_2566 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_2566
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
      (coe d__'8799'__2554)
-- Data.Rational.Properties.mkℚ+-cong
d_mkℚ'43''45'cong_2584 ::
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
d_mkℚ'43''45'cong_2584 = erased
-- Data.Rational.Properties.mkℚ+-injective
d_mkℚ'43''45'injective_2602 ::
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
d_mkℚ'43''45'injective_2602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_mkℚ'43''45'injective_2602
du_mkℚ'43''45'injective_2602 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mkℚ'43''45'injective_2602
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.↥-mkℚ+
d_'8613''45'mkℚ'43'_2612 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'mkℚ'43'_2612 = erased
-- Data.Rational.Properties.↧-mkℚ+
d_'8615''45'mkℚ'43'_2626 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'mkℚ'43'_2626 = erased
-- Data.Rational.Properties.mkℚ+-nonNeg
d_mkℚ'43''45'nonNeg_2640 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_mkℚ'43''45'nonNeg_2640 ~v0 ~v1 ~v2 ~v3
  = du_mkℚ'43''45'nonNeg_2640
du_mkℚ'43''45'nonNeg_2640 ::
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_mkℚ'43''45'nonNeg_2640
  = coe
      MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Rational.Properties.mkℚ+-pos
d_mkℚ'43''45'pos_2656 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_mkℚ'43''45'pos_2656 ~v0 ~v1 ~v2 ~v3 ~v4 = du_mkℚ'43''45'pos_2656
du_mkℚ'43''45'pos_2656 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_mkℚ'43''45'pos_2656
  = coe
      MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Rational.Properties.drop-*≡*
d_drop'45''42''8801''42'_2662 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_drop'45''42''8801''42'_2662 = erased
-- Data.Rational.Properties.≡⇒≃
d_'8801''8658''8771'_2666 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
d_'8801''8658''8771'_2666 ~v0 ~v1 ~v2 = du_'8801''8658''8771'_2666
du_'8801''8658''8771'_2666 ::
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
du_'8801''8658''8771'_2666
  = coe MAlonzo.Code.Data.Rational.Base.C_'42''8801''42'_46
-- Data.Rational.Properties.≃⇒≡
d_'8771''8658''8801'_2668 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8771''8658''8801'_2668 = erased
-- Data.Rational.Properties._.1+d₂∣1+d₁
d_1'43'd'8322''8739'1'43'd'8321'_2690 ::
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
d_1'43'd'8322''8739'1'43'd'8321'_2690 v0 v1 ~v2 v3 v4 ~v5 ~v6
  = du_1'43'd'8322''8739'1'43'd'8321'_2690 v0 v1 v3 v4
du_1'43'd'8322''8739'1'43'd'8321'_2690 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_1'43'd'8322''8739'1'43'd'8321'_2690 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Coprimality.du_coprime'45'divisor_22
      (coe addInt (coe (1 :: Integer)) (coe v3)) (coe v2)
      (coe addInt (coe (1 :: Integer)) (coe v1))
      (coe
         MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
         (MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0)))
-- Data.Rational.Properties._.helper
d_helper_2692 ::
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
d_helper_2692 = erased
-- Data.Rational.Properties.≃-sym
d_'8771''45'sym_2702 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
d_'8771''45'sym_2702 ~v0 ~v1 = du_'8771''45'sym_2702
du_'8771''45'sym_2702 ::
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40
du_'8771''45'sym_2702
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (\ v0 -> coe du_'8801''8658''8771'_2666)
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216 erased erased)
-- Data.Rational.Properties.↥p≡0⇒p≡0
d_'8613'p'8801'0'8658'p'8801'0_2706 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'8801'0'8658'p'8801'0_2706 = erased
-- Data.Rational.Properties._.d-1≡0
d_d'45'1'8801'0_2718 ::
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_d'45'1'8801'0_2718 = erased
-- Data.Rational.Properties.p≡0⇒↥p≡0
d_p'8801'0'8658''8613'p'8801'0_2722 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8801'0'8658''8613'p'8801'0_2722 = erased
-- Data.Rational.Properties.↥p≡↥q≡0⇒p≡q
d_'8613'p'8801''8613'q'8801'0'8658'p'8801'q_2730 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'8801''8613'q'8801'0'8658'p'8801'q_2730 = erased
-- Data.Rational.Properties.nonNeg≢neg
d_nonNeg'8802'neg_2744 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nonNeg'8802'neg_2744 = erased
-- Data.Rational.Properties.pos⇒nonNeg
d_pos'8658'nonNeg_2748 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_pos'8658'nonNeg_2748 v0 ~v1 = du_pos'8658'nonNeg_2748 v0
du_pos'8658'nonNeg_2748 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_pos'8658'nonNeg_2748 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_pos'8658'nonNeg_914
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
-- Data.Rational.Properties.neg⇒nonPos
d_neg'8658'nonPos_2754 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
d_neg'8658'nonPos_2754 v0 ~v1 = du_neg'8658'nonPos_2754 v0
du_neg'8658'nonPos_2754 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154
du_neg'8658'nonPos_2754 v0
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_neg'8658'nonPos_920
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
-- Data.Rational.Properties.nonNeg∧nonZero⇒pos
d_nonNeg'8743'nonZero'8658'pos_2760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_nonNeg'8743'nonZero'8658'pos_2760 v0 ~v1 ~v2
  = du_nonNeg'8743'nonZero'8658'pos_2760 v0
du_nonNeg'8743'nonZero'8658'pos_2760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_nonNeg'8743'nonZero'8658'pos_2760 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.pos⇒nonZero
d_pos'8658'nonZero_2764 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_pos'8658'nonZero_2764 v0 ~v1 = du_pos'8658'nonZero_2764 v0
du_pos'8658'nonZero_2764 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_pos'8658'nonZero_2764 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.neg⇒nonZero
d_neg'8658'nonZero_2768 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_neg'8658'nonZero_2768 v0 ~v1 = du_neg'8658'nonZero_2768 v0
du_neg'8658'nonZero_2768 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_neg'8658'nonZero_2768 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.↥-neg
d_'8613''45'neg_2772 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'neg_2772 = erased
-- Data.Rational.Properties.↧-neg
d_'8615''45'neg_2776 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'neg_2776 = erased
-- Data.Rational.Properties.neg-injective
d_neg'45'injective_2778 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'injective_2778 = erased
-- Data.Rational.Properties.neg-pos
d_neg'45'pos_2800 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_neg'45'pos_2800 v0 ~v1 = du_neg'45'pos_2800 v0
du_neg'45'pos_2800 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_neg'45'pos_2800 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1613
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.normalize-coprime
d_normalize'45'coprime_2808 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'coprime_2808 = erased
-- Data.Rational.Properties._.d
d_d_2820 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer
d_d_2820 ~v0 v1 ~v2 = du_d_2820 v1
du_d_2820 :: Integer -> Integer
du_d_2820 v0 = coe addInt (coe (1 :: Integer)) (coe v0)
-- Data.Rational.Properties._.g
d_g_2822 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer
d_g_2822 v0 v1 ~v2 = du_g_2822 v0 v1
du_g_2822 :: Integer -> Integer -> Integer
du_g_2822 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0)
      (coe du_d_2820 (coe v1))
-- Data.Rational.Properties._.c′
d_c'8242'_2824 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'8242'_2824 = erased
-- Data.Rational.Properties._.c₂
d_c'8322'_2826 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'8322'_2826 = erased
-- Data.Rational.Properties._.g≡1
d_g'8801'1_2828 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_g'8801'1_2828 = erased
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2830 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_2830 v0 v1 ~v2 = du_g'8802'0_2830 v0 v1
du_g'8802'0_2830 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_2830 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe
         MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0)
         (coe du_d_2820 (coe v1)))
-- Data.Rational.Properties.↥-normalize
d_'8613''45'normalize_2844 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45'normalize_2844 = erased
-- Data.Rational.Properties._.g
d_g_2854 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_2854 v0 v1 ~v2 = du_g_2854 v0 v1
du_g_2854 :: Integer -> Integer -> Integer
du_g_2854 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2856 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_2856 v0 v1 ~v2 = du_g'8802'0_2856 v0 v1
du_g'8802'0_2856 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_2856 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties._.i/g
d_i'47'g_2860 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_i'47'g_2860 v0 v1 ~v2 = du_i'47'g_2860 v0 v1
du_i'47'g_2860 :: Integer -> Integer -> Integer
du_i'47'g_2860 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v0)
      (coe du_g_2854 (coe v0) (coe v1))
-- Data.Rational.Properties.↧-normalize
d_'8615''45'normalize_2872 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45'normalize_2872 = erased
-- Data.Rational.Properties._.g
d_g_2882 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_2882 v0 v1 ~v2 = du_g_2882 v0 v1
du_g_2882 :: Integer -> Integer -> Integer
du_g_2882 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-cong
d_normalize'45'cong_2904 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'cong_2904 = erased
-- Data.Rational.Properties._.g
d_g_2914 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_2914 v0 v1 ~v2 ~v3 = du_g_2914 v0 v1
du_g_2914 :: Integer -> Integer -> Integer
du_g_2914 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-nonNeg
d_normalize'45'nonNeg_2926 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_normalize'45'nonNeg_2926 ~v0 ~v1 ~v2
  = du_normalize'45'nonNeg_2926
du_normalize'45'nonNeg_2926 ::
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
du_normalize'45'nonNeg_2926 = coe du_mkℚ'43''45'nonNeg_2640
-- Data.Rational.Properties._.g
d_g_2936 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_2936 v0 v1 ~v2 = du_g_2936 v0 v1
du_g_2936 :: Integer -> Integer -> Integer
du_g_2936 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties.normalize-pos
d_normalize'45'pos_2950 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_normalize'45'pos_2950 ~v0 ~v1 ~v2 ~v3 = du_normalize'45'pos_2950
du_normalize'45'pos_2950 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_normalize'45'pos_2950 = coe du_mkℚ'43''45'pos_2656
-- Data.Rational.Properties._.g≢0
d_g'8802'0_2962 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_g'8802'0_2962 v0 v1 ~v2 ~v3 = du_g'8802'0_2962 v0 v1
du_g'8802'0_2962 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_g'8802'0_2962 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'8802''45'nonZero_126
      (coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1))
-- Data.Rational.Properties.normalize-injective-≃
d_normalize'45'injective'45''8771'_2980 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_normalize'45'injective'45''8771'_2980 = erased
-- Data.Rational.Properties._.gcd[m,c]
d_gcd'91'm'44'c'93'_2996 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_gcd'91'm'44'c'93'_2996 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93'_2996 v0 v2
du_gcd'91'm'44'c'93'_2996 :: Integer -> Integer -> Integer
du_gcd'91'm'44'c'93'_2996 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.gcd[n,d]
d_gcd'91'n'44'd'93'_2998 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> Integer
d_gcd'91'n'44'd'93'_2998 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93'_2998 v1 v3
du_gcd'91'n'44'd'93'_2998 :: Integer -> Integer -> Integer
du_gcd'91'n'44'd'93'_2998 v0 v1
  = coe MAlonzo.Code.Data.Nat.GCD.d_gcd_152 (coe v0) (coe v1)
-- Data.Rational.Properties._.gcd[m,c]∣m
d_gcd'91'm'44'c'93''8739'm_3000 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'm'44'c'93''8739'm_3000 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8739'm_3000 v0 v2
du_gcd'91'm'44'c'93''8739'm_3000 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'm'44'c'93''8739'm_3000 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[m,c]∣c
d_gcd'91'm'44'c'93''8739'c_3002 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'm'44'c'93''8739'c_3002 v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6
  = du_gcd'91'm'44'c'93''8739'c_3002 v0 v2
du_gcd'91'm'44'c'93''8739'c_3002 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'm'44'c'93''8739'c_3002 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[n,d]∣n
d_gcd'91'n'44'd'93''8739'n_3004 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'n'44'd'93''8739'n_3004 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8739'n_3004 v1 v3
du_gcd'91'n'44'd'93''8739'n_3004 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'n'44'd'93''8739'n_3004 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.gcd[n,d]∣d
d_gcd'91'n'44'd'93''8739'd_3006 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_gcd'91'n'44'd'93''8739'd_3006 ~v0 v1 ~v2 v3 ~v4 ~v5 ~v6
  = du_gcd'91'n'44'd'93''8739'd_3006 v1 v3
du_gcd'91'n'44'd'93''8739'd_3006 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_gcd'91'n'44'd'93''8739'd_3006 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278 (coe v0)
      (coe v1)
-- Data.Rational.Properties._.md∣gcd[m,c]gcd[n,d]
d_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 v0 v1 v2 v3
du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_md'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3008 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.du_'42''45'pres'45''8739'_74
      (coe du_gcd'91'm'44'c'93''8739'm_3000 (coe v0) (coe v2))
      (coe du_gcd'91'n'44'd'93''8739'd_3006 (coe v1) (coe v3))
-- Data.Rational.Properties._.nc∣gcd[n,d]gcd[m,c]
d_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3010 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3010 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3010 v0 v1 v2 v3
du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3010 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3010 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.du_'42''45'pres'45''8739'_74
      (coe du_gcd'91'n'44'd'93''8739'n_3004 (coe v1) (coe v3))
      (coe du_gcd'91'm'44'c'93''8739'c_3002 (coe v0) (coe v2))
-- Data.Rational.Properties._.nc∣gcd[m,c]gcd[n,d]
d_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3012 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3012 v0 v1 v2 v3 ~v4
                                                  ~v5 ~v6
  = du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3012 v0 v1 v2 v3
du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3012 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_nc'8739'gcd'91'm'44'c'93'gcd'91'n'44'd'93'_3012 v0 v1 v2 v3
  = coe
      du_nc'8739'gcd'91'n'44'd'93'gcd'91'm'44'c'93'_3010 (coe v0)
      (coe v1) (coe v2) (coe v3)
-- Data.Rational.Properties._.gcd[m,c]≢0′
d_gcd'91'm'44'c'93''8802'0'8242'_3016 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'm'44'c'93''8802'0'8242'_3016 = erased
-- Data.Rational.Properties._.gcd[n,d]≢0′
d_gcd'91'n'44'd'93''8802'0'8242'_3018 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'n'44'd'93''8802'0'8242'_3018 = erased
-- Data.Rational.Properties._.gcd[m,c]*gcd[n,d]≢0′
d_gcd'91'm'44'c'93''42'gcd'91'n'44'd'93''8802'0'8242'_3020 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'm'44'c'93''42'gcd'91'n'44'd'93''8802'0'8242'_3020 = erased
-- Data.Rational.Properties._.div
d_div_3036 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_div_3036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_div_3036
du_div_3036 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_div_3036 = coe du_mkℚ'43''45'injective_2602
-- Data.Rational.Properties._.m/gcd[m,c]≡n/gcd[n,d]
d_m'47'gcd'91'm'44'c'93''8801'n'47'gcd'91'n'44'd'93'_3038 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'gcd'91'm'44'c'93''8801'n'47'gcd'91'n'44'd'93'_3038 = erased
-- Data.Rational.Properties._.c/gcd[m,c]≡d/gcd[n,d]
d_c'47'gcd'91'm'44'c'93''8801'd'47'gcd'91'n'44'd'93'_3040 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'47'gcd'91'm'44'c'93''8801'd'47'gcd'91'n'44'd'93'_3040 = erased
-- Data.Rational.Properties.↥-/
d_'8613''45''47'_3048 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''47'_3048 = erased
-- Data.Rational.Properties._.g
d_g_3062 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3062 v0 v1 ~v2 = du_g_3062 v0 v1
du_g_3062 :: Integer -> Integer -> Integer
du_g_3062 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties._.norm
d_norm_3064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_norm_3064 v0 v1 ~v2 = du_norm_3064 v0 v1
du_norm_3064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_norm_3064 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Base.du_normalize_136
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties.↧-/
d_'8615''45''47'_3074 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''47'_3074 = erased
-- Data.Rational.Properties._.g
d_g_3088 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer
d_g_3088 v0 v1 ~v2 = du_g_3088 v0 v1
du_g_3088 :: Integer -> Integer -> Integer
du_g_3088 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties._.norm
d_norm_3090 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_norm_3090 v0 v1 ~v2 = du_norm_3090 v0 v1
du_norm_3090 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_norm_3090 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Rational.Base.du_normalize_136
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Rational.Properties.↥p/↧p≡p
d_'8613'p'47''8615'p'8801'p_3096 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613'p'47''8615'p'8801'p_3096 = erased
-- Data.Rational.Properties.0/n≡0
d_0'47'n'8801'0_3114 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'47'n'8801'0_3114 = erased
-- Data.Rational.Properties._.0-cop-1
d_0'45'cop'45'1_3126 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'45'cop'45'1_3126 = erased
-- Data.Rational.Properties._.n/n≢0
d_n'47'n'8802'0_3128 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_n'47'n'8802'0_3128 ~v0 ~v1 = du_n'47'n'8802'0_3128
du_n'47'n'8802'0_3128 :: MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_n'47'n'8802'0_3128
  = coe
      MAlonzo.Code.Data.Nat.Base.du_'62''45'nonZero_136
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_34
         (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26))
-- Data.Rational.Properties./-cong
d_'47''45'cong_3144 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong_3144 = erased
-- Data.Rational.Properties./-injective-≃-helper
d_'47''45'injective'45''8771''45'helper_3162 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'47''45'injective'45''8771''45'helper_3162 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 ~v6
  = du_'47''45'injective'45''8771''45'helper_3162
du_'47''45'injective'45''8771''45'helper_3162 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'47''45'injective'45''8771''45'helper_3162
  = coe
      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
-- Data.Rational.Properties./-injective-≃
d_'47''45'injective'45''8771'_3186 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_'47''45'injective'45''8771'_3186 v0 v1 ~v2
  = du_'47''45'injective'45''8771'_3186 v0 v1
du_'47''45'injective'45''8771'_3186 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_'47''45'injective'45''8771'_3186 v0 v1
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
                                 (coe du_'47''45'injective'45''8771''45'helper_3162)
                   _ -> MAlonzo.RTE.mazUnreachableError
             _ -> case coe v1 of
                    MAlonzo.Code.Data.Rational.Unnormalised.Base.C_mkℚ'7512'_22 v4 v5
                      -> case coe v4 of
                           _ | coe geqInt (coe v4) (coe (0 :: Integer)) ->
                               coe du_'47''45'injective'45''8771''45'helper_3162
                           _ -> coe
                                  MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
                    _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.↥ᵘ-toℚᵘ
d_'8613''7512''45'toℚ'7512'_3234 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''7512''45'toℚ'7512'_3234 = erased
-- Data.Rational.Properties.↧ᵘ-toℚᵘ
d_'8615''7512''45'toℚ'7512'_3240 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''7512''45'toℚ'7512'_3240 = erased
-- Data.Rational.Properties.toℚᵘ-injective
d_toℚ'7512''45'injective_3244 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_toℚ'7512''45'injective_3244 = erased
-- Data.Rational.Properties.fromℚᵘ-injective
d_fromℚ'7512''45'injective_3252 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_fromℚ'7512''45'injective_3252 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (\ v2 ->
            coe du_'47''45'injective'45''8771'_3186 (coe v0) (coe v1)))
-- Data.Rational.Properties.fromℚᵘ-toℚᵘ
d_fromℚ'7512''45'toℚ'7512'_3260 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℚ'7512''45'toℚ'7512'_3260 = erased
-- Data.Rational.Properties.toℚᵘ-fromℚᵘ
d_toℚ'7512''45'fromℚ'7512'_3276 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'fromℚ'7512'_3276 v0
  = coe
      d_fromℚ'7512''45'injective_3252
      (MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
         (coe MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172 (coe v0)))
      v0 erased
-- Data.Rational.Properties.toℚᵘ-cong
d_toℚ'7512''45'cong_3280 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'cong_3280 ~v0 ~v1 ~v2 = du_toℚ'7512''45'cong_3280
du_toℚ'7512''45'cong_3280 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_toℚ'7512''45'cong_3280
  = coe
      MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30
-- Data.Rational.Properties.fromℚᵘ-cong
d_fromℚ'7512''45'cong_3282 ::
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fromℚ'7512''45'cong_3282 = erased
-- Data.Rational.Properties.toℚᵘ-isRelHomomorphism
d_toℚ'7512''45'isRelHomomorphism_3294 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_toℚ'7512''45'isRelHomomorphism_3294
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3280)
-- Data.Rational.Properties.toℚᵘ-isRelMonomorphism
d_toℚ'7512''45'isRelMonomorphism_3296 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_toℚ'7512''45'isRelMonomorphism_3296
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1555
      (coe d_toℚ'7512''45'isRelHomomorphism_3294) erased
-- Data.Rational.Properties.drop-*≤*
d_drop'45''42''8804''42'_3298 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_drop'45''42''8804''42'_3298 ~v0 ~v1 v2
  = du_drop'45''42''8804''42'_3298 v2
du_drop'45''42''8804''42'_3298 ::
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
du_drop'45''42''8804''42'_3298 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-mono-≤
d_toℚ'7512''45'mono'45''8804'_3302 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38
d_toℚ'7512''45'mono'45''8804'_3302 v0 v1 v2
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
d_toℚ'7512''45'cancel'45''8804'_3310 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8804'__38 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_toℚ'7512''45'cancel'45''8804'_3310 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8804''42'_44 v5
              -> coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-isOrderHomomorphism-≤
d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3318 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3318
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3280)
      (coe d_toℚ'7512''45'mono'45''8804'_3302)
-- Data.Rational.Properties.toℚᵘ-isOrderMonomorphism-≤
d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3320 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3320
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9041
      (coe d_toℚ'7512''45'isOrderHomomorphism'45''8804'_3318) erased
      (coe d_toℚ'7512''45'cancel'45''8804'_3310)
-- Data.Rational.Properties.≤-Monomorphism.trans
d_trans_3364 ::
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
d_trans_3364
  = let v0 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
    coe
      (let v1 = d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3320 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
            (coe v0)
            (coe
               MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
               (coe v1))))
-- Data.Rational.Properties.≤-Monomorphism.EqM.trans
d_trans_3382 ::
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
d_trans_3382 = erased
-- Data.Rational.Properties.≤-reflexive
d_'8804''45'reflexive_3384 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'reflexive_3384 v0 ~v1 ~v2
  = du_'8804''45'reflexive_3384 v0
du_'8804''45'reflexive_3384 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8804''45'reflexive_3384 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'refl_2598
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≤-refl
d_'8804''45'refl_3386 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'refl_3386 v0 = coe du_'8804''45'reflexive_3384 (coe v0)
-- Data.Rational.Properties.≤-trans
d_'8804''45'trans_3388 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''45'trans_3388 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.RelMonomorphism.du_trans_46
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.du_isRelMonomorphism_218
         (coe d_toℚ'7512''45'isOrderMonomorphism'45''8804'_3320))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8804''45'trans_404)
      (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.≤-antisym
d_'8804''45'antisym_3390 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_3390 = erased
-- Data.Rational.Properties.≤-total
d_'8804''45'total_3396 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_3396 v0 v1
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
      (MAlonzo.Code.Data.Integer.Properties.d_'8804''45'total_2624
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._≤?_
d__'8804''63'__3402 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__3402 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2642
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._≥?_
d__'8805''63'__3408 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8805''63'__3408 v0 v1
  = coe d__'8804''63'__3402 (coe v1) (coe v0)
-- Data.Rational.Properties.≤-irrelevant
d_'8804''45'irrelevant_3410 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_3410 = erased
-- Data.Rational.Properties.≤-isPreorder
d_'8804''45'isPreorder_3416 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_3416
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_3384 v0)
      (coe d_'8804''45'trans_3388)
-- Data.Rational.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_3418 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_'8804''45'isTotalPreorder_3418
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_8307
      (coe d_'8804''45'isPreorder_3416) (coe d_'8804''45'total_3396)
-- Data.Rational.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_3420 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8804''45'isPartialOrder_3420
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe d_'8804''45'isPreorder_3416) erased
-- Data.Rational.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_3422 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_404
d_'8804''45'isTotalOrder_3422
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_20499
      (coe d_'8804''45'isPartialOrder_3420) (coe d_'8804''45'total_3396)
-- Data.Rational.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_3424 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_460
d_'8804''45'isDecTotalOrder_3424
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_22635
      (coe d_'8804''45'isTotalOrder_3422) (coe d__'8799'__2554)
      (coe d__'8804''63'__3402)
-- Data.Rational.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_3426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_222
d_'8804''45'totalPreorder_3426
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_4543
      d_'8804''45'isTotalPreorder_3418
-- Data.Rational.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_3428 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_866
d_'8804''45'decTotalOrder_3428
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_17747
      d_'8804''45'isDecTotalOrder_3424
-- Data.Rational.Properties.drop-*<*
d_drop'45''42''60''42'_3430 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
d_drop'45''42''60''42'_3430 ~v0 ~v1 v2
  = du_drop'45''42''60''42'_3430 v2
du_drop'45''42''60''42'_3430 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Integer.Base.T__'60'__50
du_drop'45''42''60''42'_3430 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-mono-<
d_toℚ'7512''45'mono'45''60'_3434 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46
d_toℚ'7512''45'mono'45''60'_3434 v0 v1 v2
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
d_toℚ'7512''45'cancel'45''60'_3442 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'60'__46 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_toℚ'7512''45'cancel'45''60'_3442 v0 v1 v2
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (case coe v2 of
            MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''60''42'_52 v5
              -> coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v5
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Rational.Properties.toℚᵘ-isOrderHomomorphism-<
d_toℚ'7512''45'isOrderHomomorphism'45''60'_3450 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_toℚ'7512''45'isOrderHomomorphism'45''60'_3450
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (\ v0 v1 v2 -> coe du_toℚ'7512''45'cong_3280)
      (coe d_toℚ'7512''45'mono'45''60'_3434)
-- Data.Rational.Properties.toℚᵘ-isOrderMonomorphism-<
d_toℚ'7512''45'isOrderMonomorphism'45''60'_3452 ::
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderMonomorphism_182
d_toℚ'7512''45'isOrderMonomorphism'45''60'_3452
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderMonomorphism'46'constructor_9041
      (coe d_toℚ'7512''45'isOrderHomomorphism'45''60'_3450) erased
      (coe d_toℚ'7512''45'cancel'45''60'_3442)
-- Data.Rational.Properties.<⇒≤
d_'60''8658''8804'_3454 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'60''8658''8804'_3454 ~v0 ~v1 v2 = du_'60''8658''8804'_3454 v2
du_'60''8658''8804'_3454 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'60''8658''8804'_3454 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v3
        -> coe
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
             (coe
                MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2716
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.≮⇒≥
d_'8814''8658''8805'_3458 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8814''8658''8805'_3458 v0 v1 ~v2
  = du_'8814''8658''8805'_3458 v0 v1
du_'8814''8658''8805'_3458 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8814''8658''8805'_3458 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8814''8658''8805'_2770
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≰⇒>
d_'8816''8658''62'_3466 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  (MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'8816''8658''62'_3466 v0 v1 ~v2 = du_'8816''8658''62'_3466 v0 v1
du_'8816''8658''62'_3466 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'8816''8658''62'_3466 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8816''8658''62'_2744
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.<⇒≢
d_'60''8658''8802'_3474 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''8802'_3474 = erased
-- Data.Rational.Properties.<-irrefl
d_'60''45'irrefl_3482 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_3482 = erased
-- Data.Rational.Properties.<-asym
d_'60''45'asym_3486 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asym_3486 = erased
-- Data.Rational.Properties.<-dense
d_'60''45'dense_3492 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'dense_3492 v0 v1 v2
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
                  d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            d_toℚ'7512''45'cancel'45''60'_3442 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe
                        d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2)))))
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'resp'691''45''8771'_698
               (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))
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
                              d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                  (coe
                     d_toℚ'7512''45'fromℚ'7512'_3276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe
                           d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2)))))))
         (coe
            d_toℚ'7512''45'cancel'45''60'_3442
            (coe
               MAlonzo.Code.Data.Rational.Base.d_fromℚ'7512'_172
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe
                        d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2)))))
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
                     (coe d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))
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
                              d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'sym_134
                  (coe
                     d_toℚ'7512''45'fromℚ'7512'_3276
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                           (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                           (coe
                              d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                     (coe
                        MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'60''45'dense_556
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                        (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                        (coe
                           d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v2))))))))
-- Data.Rational.Properties.<-≤-trans
d_'60''45''8804''45'trans_3512 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45''8804''45'trans_3512 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6172
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
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2856
                                                 v15 v16)
                                            (coe
                                               MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2842
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
                                                        MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2828
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
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670))
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
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_5964
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
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''60''45'pos_6114
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
d_'8804''45''60''45'trans_3546 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'8804''45''60''45'trans_3546 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60 v7
        -> case coe v4 of
             MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68 v10
               -> coe
                    MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68
                    (coe
                       MAlonzo.Code.Data.Integer.Properties.du_'42''45'cancel'691''45''60''45'nonNeg_6172
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
                                               MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670)
                                            (\ v12 v13 v14 v15 v16 ->
                                               coe
                                                 MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2828
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
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45'trans_2856
                                                          v15 v16)
                                                     (coe
                                                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                                     (\ v12 v13 v14 v15 v16 ->
                                                        coe
                                                          MAlonzo.Code.Data.Integer.Properties.du_'60''45''8804''45'trans_2842
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
                                                                 MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670))
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
                                                     MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'737''45''60''45'pos_6082
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
                                            MAlonzo.Code.Data.Integer.Properties.du_'42''45'mono'691''45''8804''45'nonNeg_5922
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
d_'60''45'trans_3580 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'trans_3580 v0 v1 v2 v3
  = coe
      d_'8804''45''60''45'trans_3546 (coe v0) (coe v1) (coe v2)
      (coe du_'60''8658''8804'_3454 (coe v3))
-- Data.Rational.Properties._<?_
d__'60''63'__3584 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__3584 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''60''42'_68)
      (coe
         MAlonzo.Code.Data.Integer.Properties.d__'60''63'__2952
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d__'42'__308
            (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
            (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties._>?_
d__'62''63'__3590 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'62''63'__3590 v0 v1 = coe d__'60''63'__3584 (coe v1) (coe v0)
-- Data.Rational.Properties.<-cmp
d_'60''45'cmp_3592 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_'60''45'cmp_3592 v0 v1
  = let v2
          = MAlonzo.Code.Data.Integer.Properties.d_'60''45'cmp_2862
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
d_'60''45'irrelevant_3632 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_3632 = erased
-- Data.Rational.Properties.<-respʳ-≡
d_'60''45'resp'691''45''8801'_3638 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'resp'691''45''8801'_3638 ~v0 ~v1 ~v2 ~v3 v4
  = du_'60''45'resp'691''45''8801'_3638 v4
du_'60''45'resp'691''45''8801'_3638 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'60''45'resp'691''45''8801'_3638 v0 = coe v0
-- Data.Rational.Properties.<-respˡ-≡
d_'60''45'resp'737''45''8801'_3642 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'60''45'resp'737''45''8801'_3642 ~v0 ~v1 ~v2 ~v3 v4
  = du_'60''45'resp'737''45''8801'_3642 v4
du_'60''45'resp'737''45''8801'_3642 ::
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'60''45'resp'737''45''8801'_3642 v0 = coe v0
-- Data.Rational.Properties.<-resp-≡
d_'60''45'resp'45''8801'_3646 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8801'_3646
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_3648 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_290
d_'60''45'isStrictPartialOrder_3648
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_14011
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
      d_'60''45'trans_3580 d_'60''45'resp'45''8801'_3646
-- Data.Rational.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_3650 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_534
d_'60''45'isStrictTotalOrder_3650
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_24885
      (coe d_'60''45'isStrictPartialOrder_3648) (coe d_'60''45'cmp_3592)
-- Data.Rational.Properties.<-isDenseLinearOrder
d_'60''45'isDenseLinearOrder_3652 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_594
d_'60''45'isDenseLinearOrder_3652
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDenseLinearOrder'46'constructor_28059
      (coe d_'60''45'isStrictTotalOrder_3650) (coe d_'60''45'dense_3492)
-- Data.Rational.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_3654 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_556
d_'60''45'strictPartialOrder_3654
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_11031
      d_'60''45'isStrictPartialOrder_3648
-- Data.Rational.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_3656 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_1036
d_'60''45'strictTotalOrder_3656
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_20945
      d_'60''45'isStrictTotalOrder_3650
-- Data.Rational.Properties.<-denseLinearOrder
d_'60''45'denseLinearOrder_3658 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DenseLinearOrder_1140
d_'60''45'denseLinearOrder_3658
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DenseLinearOrder'46'constructor_23199
      d_'60''45'isDenseLinearOrder_3652
-- Data.Rational.Properties.≤-Reasoning.Triple._IsRelatedTo_
d__IsRelatedTo__3664 a0 a1 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple._∎
d__'8718'_3666 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_3666
  = let v0 = d_'8804''45'isPreorder_3416 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v0)))
-- Data.Rational.Properties.≤-Reasoning.Triple.<-go
d_'60''45'go_3668 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_3668
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe d_'60''45'trans_3580)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
      (coe d_'60''45''8804''45'trans_3512)
-- Data.Rational.Properties.≤-Reasoning.Triple.IsEquality
d_IsEquality_3670 a0 a1 a2 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple.IsEquality?
d_IsEquality'63'_3672 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_3672 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Data.Rational.Properties.≤-Reasoning.Triple.IsStrict
d_IsStrict_3674 a0 a1 a2 = ()
-- Data.Rational.Properties.≤-Reasoning.Triple.IsStrict?
d_IsStrict'63'_3676 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_3676 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3678 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_begin__3678
  = let v0 = d_'8804''45'isPreorder_3416 in
    coe
      (let v1 = \ v1 v2 v3 -> coe du_'60''8658''8804'_3454 v3 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v0) (coe v1))))
-- Data.Rational.Properties.≤-Reasoning.Triple.begin-contradiction_
d_begin'45'contradiction__3680 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__3680 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3682 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin__3682 = erased
-- Data.Rational.Properties.≤-Reasoning.Triple.begin_
d_begin__3684 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_begin__3684
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Data.Rational.Properties.≤-Reasoning.Triple.eqRelation
d_eqRelation_3686 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_3686
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Data.Rational.Properties.≤-Reasoning.Triple.extractEquality
d_extractEquality_3690 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_3690 = erased
-- Data.Rational.Properties.≤-Reasoning.Triple.extractStrict
d_extractStrict_3692 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_extractStrict_3692 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Data.Rational.Properties.≤-Reasoning.Triple.start
d_start_3700 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_start_3700
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe d_'8804''45'isPreorder_3416)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_3454 v2)
-- Data.Rational.Properties.≤-Reasoning.Triple.step-<
d_step'45''60'_3702 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_3702
  = let v0 = d_'60''45'trans_3580 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144 in
       coe
         (let v2 = d_'60''45''8804''45'trans_3512 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v0) (coe v1) (coe v2)))))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡
d_step'45''8801'_3712 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_3712
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-∣
d_step'45''8801''45''8739'_3714 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_3714 ~v0 ~v1 v2
  = du_step'45''8801''45''8739'_3714 v2
du_step'45''8801''45''8739'_3714 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_3714 v0 = coe v0
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-⟨
d_step'45''8801''45''10216'_3716 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_3716
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡-⟩
d_step'45''8801''45''10217'_3718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_3718
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≡˘
d_step'45''8801''728'_3720 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_3720
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Rational.Properties.≤-Reasoning.Triple.step-≤
d_step'45''8804'_3722 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_3722
  = let v0 = d_'8804''45'isPreorder_3416 in
    coe
      (let v1 = d_'8804''45''60''45'trans_3546 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v0) (coe v1))))
-- Data.Rational.Properties.≤-Reasoning.Triple.stop
d_stop_3724 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_3724
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe d_'8804''45'isPreorder_3416)
-- Data.Rational.Properties.≤-Reasoning.Triple.strictRelation
d_strictRelation_3728 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_3728
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Data.Rational.Properties.≤-Reasoning.Triple.≈-go
d_'8776''45'go_3730 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_3730
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe d_'8804''45'isPreorder_3416)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
-- Data.Rational.Properties.≤-Reasoning.Triple.≡-go
d_'8801''45'go_3732 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_3732 ~v0 ~v1 ~v2 ~v3 v4 = du_'8801''45'go_3732 v4
du_'8801''45'go_3732 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_3732 v0 = coe v0
-- Data.Rational.Properties.≤-Reasoning.Triple.≤-go
d_'8804''45'go_3734 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_3734
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe d_'8804''45'isPreorder_3416)
      (coe d_'8804''45''60''45'trans_3546)
-- Data.Rational.Properties.≤-Reasoning.≃-go
d_'8771''45'go_3752 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8771''45'go_3752 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
         (coe d_'8804''45'isPreorder_3416)
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
         (coe v0) (coe v1) (coe v2))
      erased
-- Data.Rational.Properties.≤-Reasoning._.step-≃-⟨
d_step'45''8771''45''10216'_3760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10216'_3760
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10216'_390
      (coe d_'8771''45'go_3752) (\ v0 v1 -> coe du_'8771''45'sym_2702)
-- Data.Rational.Properties.≤-Reasoning._.step-≃-⟩
d_step'45''8771''45''10217'_3762 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Data.Rational.Base.T__'8771'__40 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8771''45''10217'_3762
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8771''45''10217'_388
      (coe d_'8771''45'go_3752)
-- Data.Rational.Properties.positive⁻¹
d_positive'8315''185'_3766 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_positive'8315''185'_3766 v0 ~v1 = du_positive'8315''185'_3766 v0
du_positive'8315''185'_3766 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_positive'8315''185'_3766 v0
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_positive'8315''185'_890
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.nonNegative⁻¹
d_nonNegative'8315''185'_3772 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_nonNegative'8315''185'_3772 v0 ~v1
  = du_nonNegative'8315''185'_3772 v0
du_nonNegative'8315''185'_3772 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_nonNegative'8315''185'_3772 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178) (coe v0)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_nonNegative'8315''185'_896
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.negative⁻¹
d_negative'8315''185'_3778 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_negative'8315''185'_3778 v0 ~v1 = du_negative'8315''185'_3778 v0
du_negative'8315''185'_3778 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_negative'8315''185'_3778 v0
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442 (coe v0)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_negative'8315''185'_902
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.nonPositive⁻¹
d_nonPositive'8315''185'_3784 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_nonPositive'8315''185'_3784 v0 ~v1
  = du_nonPositive'8315''185'_3784 v0
du_nonPositive'8315''185'_3784 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_nonPositive'8315''185'_3784 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310 (coe v0)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_nonPositive'8315''185'_908
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0)))
-- Data.Rational.Properties.neg<pos
d_neg'60'pos_3792 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_neg'60'pos_3792 v0 v1 ~v2 ~v3 = du_neg'60'pos_3792 v0 v1
du_neg'60'pos_3792 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_neg'60'pos_3792 v0 v1
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_neg'60'pos_928
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
         (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
-- Data.Rational.Properties.neg-antimono-<
d_neg'45'antimono'45''60'_3798 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_neg'45'antimono'45''60'_3798 v0 v1 v2
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
d_neg'45'antimono'45''8804'_3808 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_neg'45'antimono'45''8804'_3808 v0 v1 v2
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
d_'8804''7495''8658''8804'_3818 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8804''7495''8658''8804'_3818 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60)
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Integer.Properties.du_'8804''7495''8658''8804'_2690
           (coe
              MAlonzo.Code.Data.Integer.Base.d__'42'__308
              (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v0))
              (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1)))
           (coe
              MAlonzo.Code.Data.Integer.Base.d__'42'__308
              (coe MAlonzo.Code.Data.Rational.Base.d_numerator_14 (coe v1))
              (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))))
-- Data.Rational.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_3820 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 -> AgdaAny
d_'8804''8658''8804''7495'_3820 ~v0 ~v1
  = du_'8804''8658''8804''7495'_3820
du_'8804''8658''8804''7495'_3820 ::
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 -> AgdaAny
du_'8804''8658''8804''7495'_3820
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         MAlonzo.Code.Data.Integer.Properties.du_'8804''8658''8804''7495'_2698)
      (coe du_drop'45''42''8804''42'_3298)
-- Data.Rational.Properties.↥+ᵘ
d_'8613''43''7512'_3822 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'8613''43''7512'_3822 v0 v1
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
d_'8615''43''7512'_3828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'8615''43''7512'_3828 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'42'__308
      (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v0))
      (coe MAlonzo.Code.Data.Rational.Base.d_denominator_22 (coe v1))
-- Data.Rational.Properties.+-nf
d_'43''45'nf_3834 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'43''45'nf_3834 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.GCD.d_gcd_136
      (coe d_'8613''43''7512'_3822 (coe v0) (coe v1))
      (coe d_'8615''43''7512'_3828 (coe v0) (coe v1))
-- Data.Rational.Properties.↥-+
d_'8613''45''43'_3844 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''43'_3844 = erased
-- Data.Rational.Properties.↧-+
d_'8615''45''43'_3854 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''43'_3854 = erased
-- Data.Rational.Properties._.Homomorphic₁
d_Homomorphic'8321'_3864 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  ()
d_Homomorphic'8321'_3864 = erased
-- Data.Rational.Properties._.Homomorphic₂
d_Homomorphic'8322'_3866 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8) ->
  ()
d_Homomorphic'8322'_3866 = erased
-- Data.Rational.Properties.toℚᵘ-homo-+
d_toℚ'7512''45'homo'45''43'_3870 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''43'_3870 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> let v8
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                            erased
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                               (coe
                                  MAlonzo.Code.Data.Nat.GCD.d_gcd_152
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        d_'8613''43''7512'_3822
                                        (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                                        (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6)))
                                  (coe
                                     MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                     (coe
                                        d_'8615''43''7512'_3828
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
d_eq2_3890 ::
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
d_eq2_3890 = erased
-- Data.Rational.Properties._.eq
d_eq_3892 ::
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
d_eq_3892 = erased
-- Data.Rational.Properties.toℚᵘ-isMagmaHomomorphism-+
d_toℚ'7512''45'isMagmaHomomorphism'45''43'_3988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_toℚ'7512''45'isMagmaHomomorphism'45''43'_3988
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe d_toℚ'7512''45'isRelHomomorphism_3294)
      (coe d_toℚ'7512''45'homo'45''43'_3870)
-- Data.Rational.Properties.toℚᵘ-isMonoidHomomorphism-+
d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3990
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe d_toℚ'7512''45'isMagmaHomomorphism'45''43'_3988)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isMonoidMonomorphism-+
d_toℚ'7512''45'isMonoidMonomorphism'45''43'_3992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_toℚ'7512''45'isMonoidMonomorphism'45''43'_3992
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_6341
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3990) erased
-- Data.Rational.Properties.toℚᵘ-homo‿-
d_toℚ'7512''45'homo'8255''45'_3994 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'8255''45'_3994 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-isGroupHomomorphism-+
d_toℚ'7512''45'isGroupHomomorphism'45''43'_3996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupHomomorphism_506
d_toℚ'7512''45'isGroupHomomorphism'45''43'_3996
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupHomomorphism'46'constructor_10685
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3990)
      (coe d_toℚ'7512''45'homo'8255''45'_3994)
-- Data.Rational.Properties.toℚᵘ-isGroupMonomorphism-+
d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsGroupMonomorphism_532
d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsGroupMonomorphism'46'constructor_11635
      (coe d_toℚ'7512''45'isGroupHomomorphism'45''43'_3996) erased
-- Data.Rational.Properties.+-Monomorphism.assoc
d_assoc_4002 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_4002 = erased
-- Data.Rational.Properties.+-Monomorphism.comm
d_comm_4010 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_4010 = erased
-- Data.Rational.Properties.+-Monomorphism.identityʳ
d_identity'691'_4018 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_4018 = erased
-- Data.Rational.Properties.+-Monomorphism.identityˡ
d_identity'737'_4020 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_4020 = erased
-- Data.Rational.Properties.+-Monomorphism.inverse
d_inverse_4022 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_4022
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998)
-- Data.Rational.Properties.+-Monomorphism.inverseʳ
d_inverse'691'_4024 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_4024 = erased
-- Data.Rational.Properties.+-Monomorphism.inverseˡ
d_inverse'737'_4026 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_4026 = erased
-- Data.Rational.Properties.+-Monomorphism.isAbelianGroup
d_isAbelianGroup_4028 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_isAbelianGroup_4028
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998)
-- Data.Rational.Properties.+-Monomorphism.isCommutativeMonoid
d_isCommutativeMonoid_4032 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_4032
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998 in
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
d_isGroup_4034 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_4034
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998)
-- Data.Rational.Properties.+-Monomorphism.isMagma
d_isMagma_4036 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_4036
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998 in
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
d_isMonoid_4038 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_4038
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998 in
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
d_isSemigroup_4042 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_4042
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998 in
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
d_'8315''185''45'cong_4052 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_4052 = erased
-- Data.Rational.Properties.+-Monomorphism.⁻¹-distrib-∙
d_'8315''185''45'distrib'45''8729'_4054 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'distrib'45''8729'_4054 = erased
-- Data.Rational.Properties.+-assoc
d_'43''45'assoc_4056 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_4056 = erased
-- Data.Rational.Properties.+-comm
d_'43''45'comm_4058 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_4058 = erased
-- Data.Rational.Properties.+-identityˡ
d_'43''45'identity'737'_4060 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_4060 = erased
-- Data.Rational.Properties.+-identityʳ
d_'43''45'identity'691'_4062 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_4062 = erased
-- Data.Rational.Properties.+-identity
d_'43''45'identity_4064 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_4064
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.+-inverseˡ
d_'43''45'inverse'737'_4066 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'737'_4066 = erased
-- Data.Rational.Properties.+-inverseʳ
d_'43''45'inverse'691'_4068 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'inverse'691'_4068 = erased
-- Data.Rational.Properties.+-inverse
d_'43''45'inverse_4070 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_4070
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_inverse_206
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'isMagma_1634)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'inverse_1178)
-- Data.Rational.Properties.-‿cong
d_'45''8255'cong_4072 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'45''8255'cong_4072 = erased
-- Data.Rational.Properties.neg-distrib-+
d_neg'45'distrib'45''43'_4078 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'45''43'_4078 = erased
-- Data.Rational.Properties.+-isMagma
d_'43''45'isMagma_4080 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'43''45'isMagma_4080
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386) in
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
                       (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998) in
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
d_'43''45'isSemigroup_4082 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'43''45'isSemigroup_4082
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
              (coe
                 MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386) in
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
                       (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998) in
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
d_'43''45'0'45'isMonoid_4084 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'43''45'0'45'isMonoid_4084
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
         (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isMonoid_1638)
-- Data.Rational.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_4086 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'43''45'0'45'isCommutativeMonoid_4086
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_rawMonoid_96
         (coe
            MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMonoidMonomorphism_560
         (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isCommutativeMonoid_1640)
-- Data.Rational.Properties.+-0-isGroup
d_'43''45'0'45'isGroup_4088 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_'43''45'0'45'isGroup_4088
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isGroup_350
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isGroup_1642)
-- Data.Rational.Properties.+-0-isAbelianGroup
d_'43''45'0'45'isAbelianGroup_4090 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_'43''45'0'45'isAbelianGroup_4090
  = coe
      MAlonzo.Code.Algebra.Morphism.GroupMonomorphism.du_isAbelianGroup_414
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45'0'45'rawGroup_386)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45'0'45'rawGroup_306)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isGroupMonomorphism'45''43'_3998)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'0'45'isAbelianGroup_1644)
-- Data.Rational.Properties.+-magma
d_'43''45'magma_4092 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'43''45'magma_4092
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Rational.Base.d__'43'__270 d_'43''45'isMagma_4080
-- Data.Rational.Properties.+-semigroup
d_'43''45'semigroup_4094 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'43''45'semigroup_4094
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      d_'43''45'isSemigroup_4082
-- Data.Rational.Properties.+-0-monoid
d_'43''45'0'45'monoid_4096 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'43''45'0'45'monoid_4096
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      d_'43''45'0'45'isMonoid_4084
-- Data.Rational.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_4098 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'43''45'0'45'commutativeMonoid_4098
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      d_'43''45'0'45'isCommutativeMonoid_4086
-- Data.Rational.Properties.+-0-group
d_'43''45'0'45'group_4100 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_1266
d_'43''45'0'45'group_4100
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Group'46'constructor_22093
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      d_'43''45'0'45'isGroup_4088
-- Data.Rational.Properties.+-0-abelianGroup
d_'43''45'0'45'abelianGroup_4102 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_1378
d_'43''45'0'45'abelianGroup_4102
  = coe
      MAlonzo.Code.Algebra.Bundles.C_AbelianGroup'46'constructor_24563
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      d_'43''45'0'45'isAbelianGroup_4090
-- Data.Rational.Properties.+-mono-≤
d_'43''45'mono'45''8804'_4104 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'45''8804'_4104 v0 v1 v2 v3 v4 v5
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310
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
                     (coe d_toℚ'7512''45'homo'45''43'_3870 (coe v1) (coe v3))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'mono'45''8804'_1322
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3))
                  (coe d_toℚ'7512''45'mono'45''8804'_3302 (coe v0) (coe v1) (coe v4))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3302 (coe v2) (coe v3) (coe v5))))
            (d_toℚ'7512''45'homo'45''43'_3870 (coe v0) (coe v2))))
-- Data.Rational.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_4126 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'737''45''8804'_4126 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4104 (coe v1) (coe v2) (coe v0) (coe v0)
      (coe v3) (coe d_'8804''45'refl_3386 (coe v0))
-- Data.Rational.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_4134 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'43''45'mono'691''45''8804'_4134 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804'_4104 (coe v0) (coe v0) (coe v1) (coe v2)
      (coe d_'8804''45'refl_3386 (coe v0)) (coe v3)
-- Data.Rational.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_4140 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''60''45''8804'_4140 v0 v1 v2 v3 v4 v5
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442
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
                        (coe d_toℚ'7512''45'homo'45''43'_3870 (coe v1) (coe v3))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45'mono'45''60''45''8804'_1452
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v3))
                     (coe d_toℚ'7512''45'mono'45''60'_3434 (coe v0) (coe v1) (coe v4))
                     (coe
                        d_toℚ'7512''45'mono'45''8804'_3302 (coe v2) (coe v3) (coe v5))))
               (d_toℚ'7512''45'homo'45''43'_3870 (coe v0) (coe v2)))))
-- Data.Rational.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_4158 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''8804''45''60'_4158 v0 v1 v2 v3 v4 v5
  = coe
      d_'43''45'mono'45''60''45''8804'_4140 (coe v2) (coe v3) (coe v0)
      (coe v1) (coe v5) (coe v4)
-- Data.Rational.Properties.+-mono-<
d_'43''45'mono'45''60'_4180 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'45''60'_4180 v0 v1 v2 v3 v4 v5
  = coe
      d_'60''45'trans_3580
      (MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v2))
      (MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v2))
      (MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v1) (coe v3))
      (d_'43''45'mono'45''60''45''8804'_4140
         (coe v0) (coe v1) (coe v2) (coe v2) (coe v4)
         (coe d_'8804''45'refl_3386 (coe v2)))
      (d_'43''45'mono'45''8804''45''60'_4158
         (coe v1) (coe v1) (coe v2) (coe v3)
         (coe d_'8804''45'refl_3386 (coe v1)) (coe v5))
-- Data.Rational.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_4198 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'737''45''60'_4198 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''60''45''8804'_4140 (coe v1) (coe v2) (coe v0)
      (coe v0) (coe v3) (coe d_'8804''45'refl_3386 (coe v0))
-- Data.Rational.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_4206 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'43''45'mono'691''45''60'_4206 v0 v1 v2 v3
  = coe
      d_'43''45'mono'45''8804''45''60'_4158 (coe v0) (coe v0) (coe v1)
      (coe v2) (coe d_'8804''45'refl_3386 (coe v0)) (coe v3)
-- Data.Rational.Properties.*-nf
d_'42''45'nf_4212 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer
d_'42''45'nf_4212 v0 v1
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
d_'8613''45''42'_4222 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8613''45''42'_4222 = erased
-- Data.Rational.Properties.↧-*
d_'8615''45''42'_4232 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8615''45''42'_4232 = erased
-- Data.Rational.Properties.toℚᵘ-homo-*
d_toℚ'7512''45'homo'45''42'_4238 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''42'_4238 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> let v8
                        = coe
                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                            erased
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
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
d_eq2_4258 ::
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
d_eq2_4258 = erased
-- Data.Rational.Properties._.eq
d_eq_4260 ::
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
d_eq_4260 = erased
-- Data.Rational.Properties.toℚᵘ-homo-1/
d_toℚ'7512''45'homo'45'1'47'_4360 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45'1'47'_4360 v0 ~v1
  = du_toℚ'7512''45'homo'45'1'47'_4360 v0
du_toℚ'7512''45'homo'45'1'47'_4360 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
du_toℚ'7512''45'homo'45'1'47'_4360 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.toℚᵘ-isMagmaHomomorphism-*
d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4362
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_741
      (coe d_toℚ'7512''45'isRelHomomorphism_3294)
      (coe d_toℚ'7512''45'homo'45''42'_4238)
-- Data.Rational.Properties.toℚᵘ-isMonoidHomomorphism-*
d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4364
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5517
      (coe d_toℚ'7512''45'isMagmaHomomorphism'45''42'_4362)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isMonoidMonomorphism-*
d_toℚ'7512''45'isMonoidMonomorphism'45''42'_4366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_toℚ'7512''45'isMonoidMonomorphism'45''42'_4366
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidMonomorphism'46'constructor_6341
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''42'_4364) erased
-- Data.Rational.Properties.toℚᵘ-isNearSemiringHomomorphism-+-*
d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringHomomorphism_800
d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4368
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringHomomorphism'46'constructor_16083
      (coe d_toℚ'7512''45'isMonoidHomomorphism'45''43'_3990)
      (coe d_toℚ'7512''45'homo'45''42'_4238)
-- Data.Rational.Properties.toℚᵘ-isNearSemiringMonomorphism-+-*
d_toℚ'7512''45'isNearSemiringMonomorphism'45''43''45''42'_4370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsNearSemiringMonomorphism_828
d_toℚ'7512''45'isNearSemiringMonomorphism'45''43''45''42'_4370
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsNearSemiringMonomorphism'46'constructor_17211
      (coe
         d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4368)
      erased
-- Data.Rational.Properties.toℚᵘ-isSemiringHomomorphism-+-*
d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringHomomorphism_1166
d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4372
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringHomomorphism'46'constructor_22649
      (coe
         d_toℚ'7512''45'isNearSemiringHomomorphism'45''43''45''42'_4368)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'8771''45'refl_130)
-- Data.Rational.Properties.toℚᵘ-isSemiringMonomorphism-+-*
d_toℚ'7512''45'isSemiringMonomorphism'45''43''45''42'_4374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsSemiringMonomorphism_1200
d_toℚ'7512''45'isSemiringMonomorphism'45''43''45''42'_4374
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsSemiringMonomorphism'46'constructor_23957
      (coe d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4372)
      erased
-- Data.Rational.Properties.toℚᵘ-isRingHomomorphism-+-*
d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingHomomorphism_2016
d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4376
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingHomomorphism'46'constructor_37523
      (coe d_toℚ'7512''45'isSemiringHomomorphism'45''43''45''42'_4372)
      (coe d_toℚ'7512''45'homo'8255''45'_3994)
-- Data.Rational.Properties.toℚᵘ-isRingMonomorphism-+-*
d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsRingMonomorphism_2056
d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsRingMonomorphism'46'constructor_39007
      (coe d_toℚ'7512''45'isRingHomomorphism'45''43''45''42'_4376) erased
-- Data.Rational.Properties.+-*-Monomorphism.assoc
d_assoc_4382 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_4382 = erased
-- Data.Rational.Properties.+-*-Monomorphism.comm
d_comm_4390 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_4390 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityʳ
d_identity'691'_4398 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_4398 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityˡ
d_identity'737'_4400 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_4400 = erased
-- Data.Rational.Properties.+-*-Monomorphism.isCommutativeMonoid
d_isCommutativeMonoid_4404 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_4404
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isMagma_4406 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_4406
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isMonoid_4408 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_4408
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isSemigroup_4412 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_4412
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_assoc_4422 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_assoc_4422 = erased
-- Data.Rational.Properties.+-*-Monomorphism.comm
d_comm_4430 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_4430 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityʳ
d_identity'691'_4438 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'691'_4438 = erased
-- Data.Rational.Properties.+-*-Monomorphism.identityˡ
d_identity'737'_4440 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity'737'_4440 = erased
-- Data.Rational.Properties.+-*-Monomorphism.isCommutativeMonoid
d_isCommutativeMonoid_4444 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_isCommutativeMonoid_4444
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isMagma_4446 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_4446
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isMonoid_4448 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_isMonoid_4448
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isSemigroup_4452 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_4452
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_distrib'691'_4464 ::
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
d_distrib'691'_4464 = erased
-- Data.Rational.Properties.+-*-Monomorphism.distribˡ
d_distrib'737'_4466 ::
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
d_distrib'737'_4466 = erased
-- Data.Rational.Properties.+-*-Monomorphism.inverse
d_inverse_4468 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_4468
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_inverse'691'_4470 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'691'_4470 = erased
-- Data.Rational.Properties.+-*-Monomorphism.inverseˡ
d_inverse'737'_4472 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_inverse'737'_4472 = erased
-- Data.Rational.Properties.+-*-Monomorphism.isAbelianGroup
d_isAbelianGroup_4474 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980
d_isAbelianGroup_4474
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isCommutativeRing_4476 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624
d_isCommutativeRing_4476
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isCommutativeRing_536
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378)
-- Data.Rational.Properties.+-*-Monomorphism.isGroup
d_isGroup_4478 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892
d_isGroup_4478
  = let v0
          = MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392 in
    coe
      (let v1
             = MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312 in
       coe
         (let v2 = MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 in
          coe
            (let v3 = d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378 in
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
d_isRing_4480 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478
d_isRing_4480
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isRing_418
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378)
-- Data.Rational.Properties.+-*-Monomorphism.⁻¹-cong
d_'8315''185''45'cong_4482 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'cong_4482 = erased
-- Data.Rational.Properties.+-*-Monomorphism.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_4484 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_4484 = erased
-- Data.Rational.Properties.+-*-Monomorphism.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_4486 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_4486 = erased
-- Data.Rational.Properties.+-*-Monomorphism.zeroʳ
d_zero'691'_4490 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'691'_4490 = erased
-- Data.Rational.Properties.+-*-Monomorphism.zeroˡ
d_zero'737'_4492 ::
  MAlonzo.Code.Algebra.Structures.T_IsGroup_892 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zero'737'_4492 = erased
-- Data.Rational.Properties.+-*-Monomorphism.⁻¹-distrib-∙
d_'8315''185''45'distrib'45''8729'_4494 ::
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_980 ->
  (MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T_ℚ'7512'_8 ->
   MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8315''185''45'distrib'45''8729'_4494 = erased
-- Data.Rational.Properties.*-assoc
d_'42''45'assoc_4496 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_4496 = erased
-- Data.Rational.Properties.*-comm
d_'42''45'comm_4498 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_4498 = erased
-- Data.Rational.Properties.*-identityˡ
d_'42''45'identity'737'_4500 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_4500 = erased
-- Data.Rational.Properties.*-identityʳ
d_'42''45'identity'691'_4502 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_4502 = erased
-- Data.Rational.Properties.*-identity
d_'42''45'identity_4504 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_4504
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-zeroˡ
d_'42''45'zero'737'_4506 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_4506 = erased
-- Data.Rational.Properties.*-zeroʳ
d_'42''45'zero'691'_4508 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_4508 = erased
-- Data.Rational.Properties.*-zero
d_'42''45'zero_4510 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_4510
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_4512 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_4512 = erased
-- Data.Rational.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_4514 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_4514 = erased
-- Data.Rational.Properties.*-distrib-+
d_'42''45'distrib'45''43'_4516 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_4516
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Rational.Properties.*-inverseˡ
d_'42''45'inverse'737'_4522 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'inverse'737'_4522 = erased
-- Data.Rational.Properties.*-inverseʳ
d_'42''45'inverse'691'_4534 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'inverse'691'_4534 = erased
-- Data.Rational.Properties.neg-distribˡ-*
d_neg'45'distrib'737''45''42'_4542 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'737''45''42'_4542 = erased
-- Data.Rational.Properties.neg-distribʳ-*
d_neg'45'distrib'691''45''42'_4548 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_neg'45'distrib'691''45''42'_4548 = erased
-- Data.Rational.Properties.*-isMagma
d_'42''45'isMagma_4550 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'42''45'isMagma_4550
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)) in
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
                       (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378) in
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
d_'42''45'isSemigroup_4552 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'42''45'isSemigroup_4552
  = let v0
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
                 (coe
                    MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)) in
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
                       (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378) in
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
d_'42''45'1'45'isMonoid_4554 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_604
d_'42''45'1'45'isMonoid_4554
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isMonoid_192
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'1'45'isMonoid_2456)
-- Data.Rational.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_4556 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_654
d_'42''45'1'45'isCommutativeMonoid_4556
  = coe
      MAlonzo.Code.Algebra.Morphism.MonoidMonomorphism.du_isCommutativeMonoid_236
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)))
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawSemiring_276
            (coe
               MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)))
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_'42''45'isMonoidMonomorphism_2110
         (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378))
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'42''45'1'45'isCommutativeMonoid_2458)
-- Data.Rational.Properties.+-*-isRing
d_'43''45''42''45'isRing_4558 ::
  MAlonzo.Code.Algebra.Structures.T_IsRing_2478
d_'43''45''42''45'isRing_4558
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isRing_418
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45''42''45'isRing_2460)
-- Data.Rational.Properties.+-*-isCommutativeRing
d_'43''45''42''45'isCommutativeRing_4560 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_2624
d_'43''45''42''45'isCommutativeRing_4560
  = coe
      MAlonzo.Code.Algebra.Morphism.RingMonomorphism.du_isCommutativeRing_536
      (coe MAlonzo.Code.Data.Rational.Base.d_'43''45''42''45'rawRing_392)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Base.d_'43''45''42''45'rawRing_312)
      (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166)
      (coe d_toℚ'7512''45'isRingMonomorphism'45''43''45''42'_4378)
      (coe
         MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'43''45''42''45'isCommutativeRing_2462)
-- Data.Rational.Properties.*-magma
d_'42''45'magma_4562 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'42''45'magma_4562
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_193
      MAlonzo.Code.Data.Rational.Base.d__'42'__276 d_'42''45'isMagma_4550
-- Data.Rational.Properties.*-semigroup
d_'42''45'semigroup_4564 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'42''45'semigroup_4564
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_8611
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      d_'42''45'isSemigroup_4552
-- Data.Rational.Properties.*-1-monoid
d_'42''45'1'45'monoid_4566 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_'42''45'1'45'monoid_4566
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13391
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'42''45'1'45'isMonoid_4554
-- Data.Rational.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_4568 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_'42''45'1'45'commutativeMonoid_4568
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'42''45'1'45'isCommutativeMonoid_4556
-- Data.Rational.Properties.+-*-ring
d_'43''45''42''45'ring_4570 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_3514
d_'43''45''42''45'ring_4570
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Ring'46'constructor_62099
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'43''45''42''45'isRing_4558
-- Data.Rational.Properties.+-*-commutativeRing
d_'43''45''42''45'commutativeRing_4572 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_3720
d_'43''45''42''45'commutativeRing_4572
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_65981
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      MAlonzo.Code.Data.Rational.Base.d__'42'__276
      MAlonzo.Code.Data.Rational.Base.d_'45'__112
      MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      MAlonzo.Code.Data.Rational.Base.d_1ℚ_180
      d_'43''45''42''45'isCommutativeRing_4560
-- Data.Rational.Properties.*-cancelʳ-≤-pos
d_'42''45'cancel'691''45''8804''45'pos_4578 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'691''45''8804''45'pos_4578 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'pos_4578 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'pos_4578 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'691''45''8804''45'pos_4578 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310 (coe v0) (coe v1)
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
                     (d_toℚ'7512''45'homo'45''42'_4238 (coe v1) (coe v2)))
                  (d_toℚ'7512''45'mono'45''8804'_3302
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2))
                     (coe v3)))
               (d_toℚ'7512''45'homo'45''42'_4238 (coe v0) (coe v2)))))
-- Data.Rational.Properties.*-cancelˡ-≤-pos
d_'42''45'cancel'737''45''8804''45'pos_4596 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'737''45''8804''45'pos_4596 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'pos_4596 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'pos_4596 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'737''45''8804''45'pos_4596 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'pos_4578 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoʳ-≤-nonNeg
d_'42''45'mono'691''45''8804''45'nonNeg_4618 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'nonNeg_4618 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonNeg_4618 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonNeg_4618 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'nonNeg_4618 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310
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
                  (d_toℚ'7512''45'homo'45''42'_4238 (coe v2) (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''8804''45'nonNeg_2110
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3302 (coe v1) (coe v2) (coe v3))))
            (d_toℚ'7512''45'homo'45''42'_4238 (coe v1) (coe v0))))
-- Data.Rational.Properties.*-monoˡ-≤-nonNeg
d_'42''45'mono'737''45''8804''45'nonNeg_4638 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'nonNeg_4638 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonNeg_4638 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonNeg_4638 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'nonNeg_4638 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonNeg_4618 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoʳ-≤-nonPos
d_'42''45'mono'691''45''8804''45'nonPos_4660 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'nonPos_4660 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'691''45''8804''45'nonPos_4660 v0 v2 v3 v4
du_'42''45'mono'691''45''8804''45'nonPos_4660 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'nonPos_4660 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310
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
                  (d_toℚ'7512''45'homo'45''42'_4238 (coe v1) (coe v0)))
               (coe
                  MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''8804''45'nonPos_2192
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                  (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                  (coe
                     d_toℚ'7512''45'mono'45''8804'_3302 (coe v1) (coe v2) (coe v3))))
            (d_toℚ'7512''45'homo'45''42'_4238 (coe v2) (coe v0))))
-- Data.Rational.Properties.*-monoˡ-≤-nonPos
d_'42''45'mono'737''45''8804''45'nonPos_4680 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'nonPos_4680 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'nonPos_4680 v0 v2 v3
du_'42''45'mono'737''45''8804''45'nonPos_4680 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'nonPos_4680 v0 v1 v2
  = coe
      du_'42''45'mono'691''45''8804''45'nonPos_4660 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-cancelʳ-≤-neg
d_'42''45'cancel'691''45''8804''45'neg_4700 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'691''45''8804''45'neg_4700 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'691''45''8804''45'neg_4700 v0 v1 v2 v4
du_'42''45'cancel'691''45''8804''45'neg_4700 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'691''45''8804''45'neg_4700 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310 (coe v1) (coe v0)
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
                     (d_toℚ'7512''45'homo'45''42'_4238 (coe v1) (coe v2)))
                  (d_toℚ'7512''45'mono'45''8804'_3302
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2))
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v1) (coe v2))
                     (coe v3)))
               (d_toℚ'7512''45'homo'45''42'_4238 (coe v0) (coe v2)))))
-- Data.Rational.Properties.*-cancelˡ-≤-neg
d_'42''45'cancel'737''45''8804''45'neg_4718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'cancel'737''45''8804''45'neg_4718 v0 v1 v2 ~v3
  = du_'42''45'cancel'737''45''8804''45'neg_4718 v0 v1 v2
du_'42''45'cancel'737''45''8804''45'neg_4718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'cancel'737''45''8804''45'neg_4718 v0 v1 v2
  = coe
      du_'42''45'cancel'691''45''8804''45'neg_4700 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoˡ-<-pos
d_'42''45'mono'737''45''60''45'pos_4740 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'737''45''60''45'pos_4740 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'pos_4740 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'pos_4740 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'737''45''60''45'pos_4740 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442
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
                     (d_toℚ'7512''45'homo'45''42'_4238 (coe v2) (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''60''45'pos_2236
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe d_toℚ'7512''45'mono'45''60'_3434 (coe v1) (coe v2) (coe v3))))
               (d_toℚ'7512''45'homo'45''42'_4238 (coe v1) (coe v0)))))
-- Data.Rational.Properties.*-monoʳ-<-pos
d_'42''45'mono'691''45''60''45'pos_4760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'691''45''60''45'pos_4760 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'pos_4760 v0 v2 v3
du_'42''45'mono'691''45''60''45'pos_4760 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'691''45''60''45'pos_4760 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'pos_4740 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.*-cancelˡ-<-nonNeg
d_'42''45'cancel'737''45''60''45'nonNeg_4784 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'nonNeg_4784 v0 ~v1 v2 v3 v4
  = du_'42''45'cancel'737''45''60''45'nonNeg_4784 v0 v2 v3 v4
du_'42''45'cancel'737''45''60''45'nonNeg_4784 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'nonNeg_4784 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442 (coe v1) (coe v2)
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
                        (d_toℚ'7512''45'homo'45''42'_4238 (coe v0) (coe v2)))
                     (d_toℚ'7512''45'mono'45''60'_3434
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v1))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0) (coe v2))
                        (coe v3)))
                  (d_toℚ'7512''45'homo'45''42'_4238 (coe v0) (coe v1))))))
-- Data.Rational.Properties.*-cancelʳ-<-nonNeg
d_'42''45'cancel'691''45''60''45'nonNeg_4806 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'nonNeg_4806 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'nonNeg_4806 v0 v2 v3
du_'42''45'cancel'691''45''60''45'nonNeg_4806 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'nonNeg_4806 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonNeg_4784 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.*-monoˡ-<-neg
d_'42''45'mono'737''45''60''45'neg_4828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'737''45''60''45'neg_4828 v0 ~v1 v2 v3 v4
  = du_'42''45'mono'737''45''60''45'neg_4828 v0 v2 v3 v4
du_'42''45'mono'737''45''60''45'neg_4828 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'737''45''60''45'neg_4828 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442
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
                     (d_toℚ'7512''45'homo'45''42'_4238 (coe v1) (coe v0)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Properties.du_'42''45'mono'737''45''60''45'neg_2346
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v2))
                     (coe d_toℚ'7512''45'mono'45''60'_3434 (coe v1) (coe v2) (coe v3))))
               (d_toℚ'7512''45'homo'45''42'_4238 (coe v2) (coe v0)))))
-- Data.Rational.Properties.*-monoʳ-<-neg
d_'42''45'mono'691''45''60''45'neg_4848 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'mono'691''45''60''45'neg_4848 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60''45'neg_4848 v0 v2 v3
du_'42''45'mono'691''45''60''45'neg_4848 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'mono'691''45''60''45'neg_4848 v0 v1 v2
  = coe
      du_'42''45'mono'737''45''60''45'neg_4828 (coe v0) (coe v1) (coe v2)
-- Data.Rational.Properties.*-cancelˡ-<-nonPos
d_'42''45'cancel'737''45''60''45'nonPos_4868 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'nonPos_4868 v0 v1 v2 ~v3 v4
  = du_'42''45'cancel'737''45''60''45'nonPos_4868 v0 v1 v2 v4
du_'42''45'cancel'737''45''60''45'nonPos_4868 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'nonPos_4868 v0 v1 v2 v3
  = coe
      d_toℚ'7512''45'cancel'45''60'_3442 (coe v1) (coe v0)
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
                        (d_toℚ'7512''45'homo'45''42'_4238 (coe v2) (coe v1)))
                     (d_toℚ'7512''45'mono'45''60'_3434
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v0))
                        (coe
                           MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v2) (coe v1))
                        (coe v3)))
                  (d_toℚ'7512''45'homo'45''42'_4238 (coe v2) (coe v0))))))
-- Data.Rational.Properties.*-cancelʳ-<-nonPos
d_'42''45'cancel'691''45''60''45'nonPos_4886 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'nonPos_4886 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60''45'nonPos_4886 v0 v1 v2
du_'42''45'cancel'691''45''60''45'nonPos_4886 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'nonPos_4886 v0 v1 v2
  = coe
      du_'42''45'cancel'737''45''60''45'nonPos_4868 (coe v0) (coe v1)
      (coe v2)
-- Data.Rational.Properties.p≤q⇒p⊔q≡q
d_p'8804'q'8658'p'8852'q'8801'q_4902 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8804'q'8658'p'8852'q'8801'q_4902 = erased
-- Data.Rational.Properties.p≥q⇒p⊔q≡p
d_p'8805'q'8658'p'8852'q'8801'p_4928 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8805'q'8658'p'8852'q'8801'p_4928 = erased
-- Data.Rational.Properties.p≤q⇒p⊓q≡p
d_p'8804'q'8658'p'8851'q'8801'p_4954 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8804'q'8658'p'8851'q'8801'p_4954 = erased
-- Data.Rational.Properties.p≥q⇒p⊓q≡q
d_p'8805'q'8658'p'8851'q'8801'q_4980 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_p'8805'q'8658'p'8851'q'8801'q_4980 = erased
-- Data.Rational.Properties.⊓-operator
d_'8851''45'operator_5006 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_98
d_'8851''45'operator_5006
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_1121
      (coe MAlonzo.Code.Data.Rational.Base.d__'8851'__332) erased erased
-- Data.Rational.Properties.⊔-operator
d_'8852''45'operator_5008 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_128
d_'8852''45'operator_5008
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1659
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__322) erased erased
-- Data.Rational.Properties.⊓-⊔-properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_5012 ::
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
d_antimono'45''8804''45'distrib'45''8851'_5012 = erased
-- Data.Rational.Properties.⊓-⊔-properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_5014 ::
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
d_antimono'45''8804''45'distrib'45''8852'_5014 = erased
-- Data.Rational.Properties.⊓-⊔-properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_5016 ::
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
d_mono'45''8804''45'distrib'45''8851'_5016 = erased
-- Data.Rational.Properties.⊓-⊔-properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_5018 ::
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
d_mono'45''8804''45'distrib'45''8852'_5018 = erased
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_5020 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x_5020
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
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
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_5024 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'z'8851'x'8804'y_5024
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_5026 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'x'8851'z'8804'y_5026
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_3030
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_5028 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8658'z'8851'x'8804'y_5028
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_3042
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_5030 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'y_5030
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_5032 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'z_5032
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_5034 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'y_5034
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_5036 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'x'8658'x'8804'y_5036
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_5038 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'y'8658'y'8804'x_5038
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_5040 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x_5040
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_2678
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_5042 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'x'8852'y_5042
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_3188
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_5044 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8804'y_5044
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_2704
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_5046 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'x'8658'x'8804'y_5046
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_2938
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_5048 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8851'y'8776'y'8658'y'8804'x_5048
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_2970
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_5050 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'y_5050
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_3054
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_5052 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_x'8804'y'8851'z'8658'x'8804'z_5052
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_3068
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_5054 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_5054 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5056 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5056 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5058 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_5058
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2922
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5060 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5060 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5062 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_5062
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2924
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_5070 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_5070
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_3008
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_5072 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_5072 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_5074 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_5074 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5076 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'glb_5076
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5078 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5078 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5086 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_5086
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2904
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5088 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_5088
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2906
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5090 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_5090
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2900
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5094 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_5094
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2908
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5096 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_5096
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5098 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_5098
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2918
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5100 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'45''8804'_5100
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5104 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'691''45''8804'_5104
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3136
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5106 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'737''45''8804'_5106
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3126
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5110 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5110
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2858
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5112 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_5112
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2926
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5114 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_5114
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2920
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5116 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5116 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_5124 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_5124
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_3088
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_5126 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_5126 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_5128 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_5128 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_5130 :: MAlonzo.Code.Algebra.Bundles.T_Band_536
d_'8851''45'band_5130
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_2922
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_5132 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_5132 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_5134 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_602
d_'8851''45'commutativeSemigroup_5134
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_2924
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_5142 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_5142
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_3040
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_5144 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_5144 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_5146 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_5146 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_5148 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_5148 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_5156 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_'8851''45'isBand_5156
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_2904
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_5158 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_516
d_'8851''45'isCommutativeSemigroup_5158
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_2906
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_5160 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_'8851''45'isMagma_5160
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_2900
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_5164 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_'8851''45'isSelectiveMagma_5164
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_2908
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_5166 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_'8851''45'isSemigroup_5166
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_2902
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_5168 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'glb_5168
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_3148
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_5170 :: MAlonzo.Code.Algebra.Bundles.T_Magma_8
d_'8851''45'magma_5170
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_2918
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_5172 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'45''8804'_5172
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_3076
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_5176 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'691''45''8804'_5176
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_3136
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_5178 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8851''45'mono'737''45''8804'_5178
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_3126
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_5180 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_5180
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_2858
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_5182 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_62
d_'8851''45'selectiveMagma_5182
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_2926
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_5184 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_476
d_'8851''45'semigroup_5184
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
       coe
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_2920
            (coe
               MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_746
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_174
               (coe v1))))
-- Data.Rational.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_5186 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_5186 = erased
-- Data.Rational.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_5194 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_5194
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_3086
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5198 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2530
d_'8851''45'isSemilattice_5198
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_600
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-semilattice
d_'8851''45'semilattice_5200 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5200
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8851''45'operator_5006 in
       coe
         (coe
            MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_602
            (coe v0) (coe v1)))
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_5202 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8851''45''8852''45'distributiveLattice_5202
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_806
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_5204 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2904
d_'8851''45''8852''45'isDistributiveLattice_5204
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_796
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_5206 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2830
d_'8851''45''8852''45'isLattice_5206
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_794
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_5208 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8851''45''8852''45'lattice_5208
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_802
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊓-isSemilattice
d_'8851''45'isSemilattice_5210 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsSemilattice_2530
d_'8851''45'isSemilattice_5210
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
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
d_'8851''45'semilattice_5212 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Semilattice_10
d_'8851''45'semilattice_5212
  = let v0 = d_'8804''45'totalPreorder_3426 in
    coe
      (let v1 = d_'8852''45'operator_5008 in
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
d_'8852''45''8851''45'distributiveLattice_5214 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_DistributiveLattice_582
d_'8852''45''8851''45'distributiveLattice_5214
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_804
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_5216 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsDistributiveLattice_2904
d_'8852''45''8851''45'isDistributiveLattice_5216
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_798
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_5218 ::
  MAlonzo.Code.Algebra.Lattice.Structures.T_IsLattice_2830
d_'8852''45''8851''45'isLattice_5218
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_792
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.⊓-⊔-latticeProperties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_5220 ::
  MAlonzo.Code.Algebra.Lattice.Bundles.T_Lattice_498
d_'8852''45''8851''45'lattice_5220
  = coe
      MAlonzo.Code.Algebra.Lattice.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_800
      (coe d_'8804''45'totalPreorder_3426)
      (coe d_'8851''45'operator_5006) (coe d_'8852''45'operator_5008)
-- Data.Rational.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_5228 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_5228 = erased
-- Data.Rational.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_5238 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_5238 = erased
-- Data.Rational.Properties.mono-<-distrib-⊓
d_mono'45''60''45'distrib'45''8851'_5248 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8851'_5248 = erased
-- Data.Rational.Properties.mono-<-distrib-⊔
d_mono'45''60''45'distrib'45''8852'_5320 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
   MAlonzo.Code.Data.Rational.Base.T__'60'__62) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''60''45'distrib'45''8852'_5320 = erased
-- Data.Rational.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_5392 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_5392 = erased
-- Data.Rational.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_5402 ::
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6) ->
  (MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
   MAlonzo.Code.Data.Rational.Base.T__'8804'__54) ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_5402 = erased
-- Data.Rational.Properties.*-distribˡ-⊓-nonNeg
d_'42''45'distrib'737''45''8851''45'nonNeg_5414 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonNeg_5414 = erased
-- Data.Rational.Properties.*-distribʳ-⊓-nonNeg
d_'42''45'distrib'691''45''8851''45'nonNeg_5426 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonNeg_5426 = erased
-- Data.Rational.Properties.*-distribˡ-⊔-nonNeg
d_'42''45'distrib'737''45''8852''45'nonNeg_5438 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonNeg_5438 = erased
-- Data.Rational.Properties.*-distribʳ-⊔-nonNeg
d_'42''45'distrib'691''45''8852''45'nonNeg_5450 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonNeg_5450 = erased
-- Data.Rational.Properties.*-distribˡ-⊔-nonPos
d_'42''45'distrib'737''45''8852''45'nonPos_5462 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852''45'nonPos_5462 = erased
-- Data.Rational.Properties.*-distribʳ-⊔-nonPos
d_'42''45'distrib'691''45''8852''45'nonPos_5474 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852''45'nonPos_5474 = erased
-- Data.Rational.Properties.*-distribˡ-⊓-nonPos
d_'42''45'distrib'737''45''8851''45'nonPos_5486 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851''45'nonPos_5486 = erased
-- Data.Rational.Properties.*-distribʳ-⊓-nonPos
d_'42''45'distrib'691''45''8851''45'nonPos_5498 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonPositive_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851''45'nonPos_5498 = erased
-- Data.Rational.Properties.nonZero⇒1/nonZero
d_nonZero'8658'1'47'nonZero_5506 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'8658'1'47'nonZero_5506 v0 ~v1
  = du_nonZero'8658'1'47'nonZero_5506 v0
du_nonZero'8658'1'47'nonZero_5506 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'8658'1'47'nonZero_5506 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.1/-involutive
d_1'47''45'involutive_5512 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_1'47''45'involutive_5512 = erased
-- Data.Rational.Properties.1/pos⇒pos
d_1'47'pos'8658'pos_5526 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_1'47'pos'8658'pos_5526 v0 ~v1 = du_1'47'pos'8658'pos_5526 v0
du_1'47'pos'8658'pos_5526 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_1'47'pos'8658'pos_5526 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Positive'46'constructor_1439
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.1/neg⇒neg
d_1'47'neg'8658'neg_5532 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_1'47'neg'8658'neg_5532 v0 ~v1 = du_1'47'neg'8658'neg_5532 v0
du_1'47'neg'8658'neg_5532 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_1'47'neg'8658'neg_5532 v0
  = coe
      seq (coe v0)
      (coe
         MAlonzo.Code.Data.Integer.Base.C_Negative'46'constructor_1613
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Data.Rational.Properties.pos⇒1/pos
d_pos'8658'1'47'pos_5540 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_pos'8658'1'47'pos_5540 v0 ~v1 ~v2 = du_pos'8658'1'47'pos_5540 v0
du_pos'8658'1'47'pos_5540 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
du_pos'8658'1'47'pos_5540 v0
  = coe
      du_1'47'pos'8658'pos_5526
      (coe MAlonzo.Code.Data.Rational.Base.du_1'47'__292 (coe v0))
-- Data.Rational.Properties.neg⇒1/neg
d_neg'8658'1'47'neg_5550 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
d_neg'8658'1'47'neg_5550 v0 ~v1 ~v2 = du_neg'8658'1'47'neg_5550 v0
du_neg'8658'1'47'neg_5550 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164
du_neg'8658'1'47'neg_5550 v0
  = coe
      du_1'47'neg'8658'neg_5532
      (coe MAlonzo.Code.Data.Rational.Base.du_1'47'__292 (coe v0))
-- Data.Rational.Properties.toℚᵘ-homo-∣-∣
d_toℚ'7512''45'homo'45''8739''45''8739'_5554 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Unnormalised.Base.T__'8771'__24
d_toℚ'7512''45'homo'45''8739''45''8739'_5554 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Rational.Unnormalised.Base.C_'42''8801''42'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p∣≡0⇒p≡0
d_'8739'p'8739''8801'0'8658'p'8801'0_5558 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'8739''8801'0'8658'p'8801'0_5558 = erased
-- Data.Rational.Properties.0≤∣p∣
d_0'8804''8739'p'8739'_5564 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_0'8804''8739'p'8739'_5564 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             MAlonzo.Code.Data.Rational.Base.C_'42''8804''42'_60
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                   (coe
                      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670)
                   (\ v4 v5 v6 ->
                      coe
                        MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2716 v6))
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
                            MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670)
                         (\ v4 v5 v6 v7 v8 ->
                            coe
                              MAlonzo.Code.Data.Integer.Properties.du_'8804''45''60''45'trans_2828
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
                                  MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2670))
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
d_0'8804'p'8658''8739'p'8739''8801'p_5572 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8804'p'8658''8739'p'8739''8801'p_5572 = erased
-- Data.Rational.Properties.∣-p∣≡∣p∣
d_'8739''45'p'8739''8801''8739'p'8739'_5580 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45'p'8739''8801''8739'p'8739'_5580 = erased
-- Data.Rational.Properties.∣p∣≡p⇒0≤p
d_'8739'p'8739''8801'p'8658'0'8804'p_5594 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'8739''8801'p'8658'0'8804'p_5594 v0 ~v1
  = du_'8739'p'8739''8801'p'8658'0'8804'p_5594 v0
du_'8739'p'8739''8801'p'8658'0'8804'p_5594 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'8739'p'8739''8801'p'8658'0'8804'p_5594 v0
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310
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
                     (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5554 (coe v0)))))))
-- Data.Rational.Properties.∣p∣≡p∨∣p∣≡-p
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_5606 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'p'8739''8801'p'8744''8739'p'8739''8801''45'p_5606 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> case coe v1 of
             _ | coe geqInt (coe v1) (coe (0 :: Integer)) ->
                 coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
             _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p+q∣≤∣p∣+∣q∣
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5620 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5620 v0 v1
  = coe
      d_toℚ'7512''45'cancel'45''8804'_3310
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
                        (d_toℚ'7512''45'homo'45''43'_3870
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
                        (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5554 (coe v0))
                        (coe d_toℚ'7512''45'homo'45''8739''45''8739'_5554 (coe v1))))
                  (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_3340
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1))))
               (MAlonzo.Code.Data.Rational.Unnormalised.Properties.d_'8739''45''8739''45'cong_3206
                  (coe
                     MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166
                     (coe
                        MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1)))
                  (coe
                     MAlonzo.Code.Data.Rational.Unnormalised.Base.d__'43'__196
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v0))
                     (coe MAlonzo.Code.Data.Rational.Base.d_toℚ'7512'_166 (coe v1)))
                  (coe d_toℚ'7512''45'homo'45''43'_3870 (coe v0) (coe v1))))
            (d_toℚ'7512''45'homo'45''8739''45''8739'_5554
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'43'__270 (coe v0) (coe v1)))))
-- Data.Rational.Properties.∣p-q∣≤∣p∣+∣q∣
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_5634 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'8739'p'45'q'8739''8804''8739'p'8739''43''8739'q'8739'_5634 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6
               -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                       (coe d_'8804''45'isPreorder_3416)
                       (\ v8 v9 v10 -> coe du_'60''8658''8804'_3454 v10))
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
                          (coe d_'8804''45'isPreorder_3416)
                          (coe d_'8804''45''60''45'trans_3546))
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
                                (coe d_'8804''45'isPreorder_3416))
                             (coe
                                MAlonzo.Code.Data.Rational.Base.d__'43'__270
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3))
                                (coe
                                   MAlonzo.Code.Data.Rational.Base.d_'8739'_'8739'_338
                                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
                          erased)
                       (d_'8739'p'43'q'8739''8804''8739'p'8739''43''8739'q'8739'_5620
                          (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3)
                          (coe
                             MAlonzo.Code.Data.Rational.Base.d_'45'__112
                             (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v5 v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣p*q∣≡∣p∣*∣q∣
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_5650 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'p'42'q'8739''8801''8739'p'8739''42''8739'q'8739'_5650
  = erased
-- Data.Rational.Properties.∣-∣-nonNeg
d_'8739''45''8739''45'nonNeg_5662 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_NonNegative_144
d_'8739''45''8739''45'nonNeg_5662 v0
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
        -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Data.Integer.Base.C_NonNegative'46'constructor_1497
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.∣∣p∣∣≡∣p∣
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_5666 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''8739'p'8739''8739''8801''8739'p'8739'_5666 = erased
-- Data.Rational.Properties.*-monoʳ-≤-neg
d_'42''45'mono'691''45''8804''45'neg_5674 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'neg_5674 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'neg_5674 v0 v2 v3
du_'42''45'mono'691''45''8804''45'neg_5674 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'neg_5674 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'691''45''8804''45'nonPos_4660
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoˡ-≤-neg
d_'42''45'mono'737''45''8804''45'neg_5682 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'neg_5682 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'neg_5682 v0 v2 v3
du_'42''45'mono'737''45''8804''45'neg_5682 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'neg_5682 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'mono'737''45''8804''45'nonPos_4680
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                    (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoʳ-≤-pos
d_'42''45'mono'691''45''8804''45'pos_5690 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'691''45''8804''45'pos_5690 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804''45'pos_5690 v0 v2 v3
du_'42''45'mono'691''45''8804''45'pos_5690 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'691''45''8804''45'pos_5690 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'691''45''8804''45'nonNeg_4618
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-monoˡ-≤-pos
d_'42''45'mono'737''45''8804''45'pos_5698 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
d_'42''45'mono'737''45''8804''45'pos_5698 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804''45'pos_5698 v0 v2 v3
du_'42''45'mono'737''45''8804''45'pos_5698 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54 ->
  MAlonzo.Code.Data.Rational.Base.T__'8804'__54
du_'42''45'mono'737''45''8804''45'pos_5698 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'mono'737''45''8804''45'nonNeg_4638
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelˡ-<-pos
d_'42''45'cancel'737''45''60''45'pos_5708 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'pos_5708 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'pos_5708 v0 v2 v3
du_'42''45'cancel'737''45''60''45'pos_5708 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'pos_5708 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'737''45''60''45'nonNeg_4784
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelʳ-<-pos
d_'42''45'cancel'691''45''60''45'pos_5718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'pos_5718 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'pos_5718 v0 v2 v3
du_'42''45'cancel'691''45''60''45'pos_5718 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'pos_5718 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             0 -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                 coe
                   du_'42''45'cancel'691''45''60''45'nonNeg_4806
                   (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4) (coe v1)
                   (coe v2)
             _ -> coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelˡ-<-neg
d_'42''45'cancel'737''45''60''45'neg_5728 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'737''45''60''45'neg_5728 v0 ~v1 v2 v3
  = du_'42''45'cancel'737''45''60''45'neg_5728 v0 v2 v3
du_'42''45'cancel'737''45''60''45'neg_5728 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'737''45''60''45'neg_5728 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'737''45''60''45'nonPos_4868 (coe v1) (coe v2)
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.*-cancelʳ-<-neg
d_'42''45'cancel'691''45''60''45'neg_5738 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_'42''45'cancel'691''45''60''45'neg_5738 v0 ~v1 v2 v3
  = du_'42''45'cancel'691''45''60''45'neg_5738 v0 v2 v3
du_'42''45'cancel'691''45''60''45'neg_5738 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_'42''45'cancel'691''45''60''45'neg_5738 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4
        -> case coe v3 of
             _ | coe geqInt (coe v3) (coe (0 :: Integer)) ->
                 coe (\ v6 -> MAlonzo.RTE.mazUnreachableError)
             _ -> coe
                    du_'42''45'cancel'691''45''60''45'nonPos_4886 (coe v1) (coe v2)
                    (coe MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v3 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Rational.Properties.negative<positive
d_negative'60'positive_5742 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Integer.Base.T_Negative_164 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
d_negative'60'positive_5742 v0 v1 ~v2 ~v3
  = du_negative'60'positive_5742 v0 v1
du_negative'60'positive_5742 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T__'60'__62
du_negative'60'positive_5742 v0 v1
  = coe du_neg'60'pos_3792 (coe v0) (coe v1)
